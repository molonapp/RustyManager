use std::env;
use std::io::Error;
use std::sync::Arc;
use tokio::io::{AsyncReadExt, AsyncWriteExt};
use tokio::net::{TcpListener, TcpStream};
use tokio::sync::Mutex;
use tokio::time::{timeout, Duration};

#[tokio::main]
async fn main() -> Result<(), Error> {
    let port = get_arg("--port").unwrap_or("80".to_string());
    let listener = TcpListener::bind(format!("[::]:{}", port)).await?;
    println!("Servidor escutando na porta {}", port);
    start_http(listener).await;
    Ok(())
}

async fn start_http(listener: TcpListener) {
    loop {
        match listener.accept().await {
            Ok((client_stream, addr)) => {
                println!("Nova conexão de {}", addr);
                tokio::spawn(async move {
                    if let Err(e) = handle_client(client_stream).await {
                        println!("Erro ao lidar com cliente {}: {}", addr, e);
                    }
                });
            }
            Err(e) => println!("Erro ao aceitar conexão: {}", e),
        }
    }
}

async fn handle_client(mut client_stream: TcpStream) -> Result<(), Error> {
    let status = get_arg("--status").unwrap_or("@RustyManager".to_string());
    client_stream
        .write_all(format!("HTTP/1.1 101 {}\r\n\r\n", status).as_bytes())
        .await?;

    // Peek nos dados do cliente
    let peek_result = timeout(Duration::from_secs(2), peek_stream(&mut client_stream)).await;
    let peek_data = peek_result.unwrap_or_else(|_| Ok(vec![])).unwrap_or(vec![]);

    // Destino padrão
    let mut addr_proxy = "0.0.0.0:22"; // SSH por padrão
    let peek_str = String::from_utf8_lossy(&peek_data).to_lowercase();

    if peek_str.contains("ssh") {
        addr_proxy = "0.0.0.0:22";
        println!("Destino: SSH");
    } else if peek_str.contains("udp") {
        addr_proxy = &get_arg("--udpgw").unwrap_or("127.0.0.1:7300".to_string());
        println!("Destino: UDPGW -> {}", addr_proxy);
    } else {
        addr_proxy = "0.0.0.0:1194";
        println!("Destino: OpenVPN");
    }

    // Conectar ao destino
    let server_stream = TcpStream::connect(addr_proxy).await?;
    let (client_read, client_write) = client_stream.into_split();
    let (server_read, server_write) = server_stream.into_split();

    let client_read = Arc::new(Mutex::new(client_read));
    let client_write = Arc::new(Mutex::new(client_write));
    let server_read = Arc::new(Mutex::new(server_read));
    let server_write = Arc::new(Mutex::new(server_write));

    let c2s = transfer_data(client_read.clone(), server_write.clone());
    let s2c = transfer_data(server_read.clone(), client_write.clone());

    tokio::try_join!(c2s, s2c)?;

    Ok(())
}

async fn transfer_data(
    read_stream: Arc<Mutex<tokio::net::tcp::OwnedReadHalf>>,
    write_stream: Arc<Mutex<tokio::net::tcp::OwnedWriteHalf>>,
) -> Result<(), Error> {
    let mut buffer = [0u8; 8192];
    loop {
        let bytes_read = {
            let mut reader = read_stream.lock().await;
            reader.read(&mut buffer).await?
        };
        if bytes_read == 0 {
            break;
        }
        let mut writer = write_stream.lock().await;
        writer.write_all(&buffer[..bytes_read]).await?;
    }
    Ok(())
}

async fn peek_stream(stream: &TcpStream) -> Result<Vec<u8>, Error> {
    let mut buffer = vec![0; 8192];
    let size = stream.peek(&mut buffer).await?;
    Ok(buffer[..size].to_vec())
}

fn get_arg(key: &str) -> Option<String> {
    let args: Vec<String> = env::args().collect();
    args.windows(2).find_map(|w| {
        if w[0] == key {
            Some(w[1].clone())
        } else {
            None
        }
    })
}
