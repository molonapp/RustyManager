use std::env;
use std::io::Error;
use std::sync::Arc;
use tokio::io::{AsyncReadExt, AsyncWriteExt};
use tokio::net::{TcpListener, TcpStream};
use tokio::sync::Mutex;
use tokio::time::{timeout, Duration};

#[tokio::main]
async fn main() -> Result<(), Error> {
    let port = get_port();
    let listener = TcpListener::bind(format!("0.0.0.0:{}", port)).await?;
    println!("Servidor escutando na porta {}", port);
    loop {
        let (stream, addr) = listener.accept().await?;
        println!("Nova conexão de: {}", addr);
        tokio::spawn(async move {
            if let Err(e) = handle_client(stream).await {
                println!("Erro com cliente {}: {}", addr, e);
            }
        });
    }
}

async fn handle_client(mut client: TcpStream) -> Result<(), Error> {
    let status = get_status();
    let handshake = format!("HTTP/1.1 101 <font color=\"null\">{}</font>\r\n\r\n", status);
    client.write_all(handshake.as_bytes()).await?;

    // Tenta detectar o conteúdo
    let mut peek_buf = vec![0u8; 1024];
    let _ = timeout(Duration::from_secs(1), client.peek(&mut peek_buf)).await;

    let backend_addr = "127.0.0.1:22";
    let mut server = TcpStream::connect(backend_addr).await?;

    let (mut cr, mut cw) = client.into_split();
    let (mut sr, mut sw) = server.into_split();

    let c2s = async {
        let mut buf = [0u8; 8192];
        loop {
            let n = cr.read(&mut buf).await?;
            if n == 0 { break; }
            sw.write_all(&buf[..n]).await?;
        }
        Ok::<_, Error>(())
    };

    let s2c = async {
        let mut buf = [0u8; 8192];
        loop {
            let n = sr.read(&mut buf).await?;
            if n == 0 { break; }
            cw.write_all(&buf[..n]).await?;
        }
        Ok::<_, Error>(())
    };

    tokio::try_join!(c2s, s2c)?;
    Ok(())
}

fn get_port() -> u16 {
    let args: Vec<String> = env::args().collect();
    for i in 0..args.len() {
        if args[i] == "--port" && i + 1 < args.len() {
            return args[i + 1].parse().unwrap_or(80);
        }
    }
    80
}

fn get_status() -> String {
    let args: Vec<String> = env::args().collect();
    for i in 0..args.len() {
        if args[i] == "--status" && i + 1 < args.len() {
            return args[i + 1].clone();
        }
    }
    "@RustyManager".to_string()
}
