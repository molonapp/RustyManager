# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/Documentos/RustyManager/BadVpn/badvpn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Documentos/RustyManager/BadVpn/badvpn/build

# Include any dependencies generated for this target.
include base/CMakeFiles/base.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include base/CMakeFiles/base.dir/compiler_depend.make

# Include the progress variables for this target.
include base/CMakeFiles/base.dir/progress.make

# Include the compile flags for this target's objects.
include base/CMakeFiles/base.dir/flags.make

base/CMakeFiles/base.dir/codegen:
.PHONY : base/CMakeFiles/base.dir/codegen

base/CMakeFiles/base.dir/DebugObject.c.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/DebugObject.c.o: /home/user/Documentos/RustyManager/BadVpn/badvpn/base/DebugObject.c
base/CMakeFiles/base.dir/DebugObject.c.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/user/Documentos/RustyManager/BadVpn/badvpn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object base/CMakeFiles/base.dir/DebugObject.c.o"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT base/CMakeFiles/base.dir/DebugObject.c.o -MF CMakeFiles/base.dir/DebugObject.c.o.d -o CMakeFiles/base.dir/DebugObject.c.o -c /home/user/Documentos/RustyManager/BadVpn/badvpn/base/DebugObject.c

base/CMakeFiles/base.dir/DebugObject.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/base.dir/DebugObject.c.i"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Documentos/RustyManager/BadVpn/badvpn/base/DebugObject.c > CMakeFiles/base.dir/DebugObject.c.i

base/CMakeFiles/base.dir/DebugObject.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/base.dir/DebugObject.c.s"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Documentos/RustyManager/BadVpn/badvpn/base/DebugObject.c -o CMakeFiles/base.dir/DebugObject.c.s

base/CMakeFiles/base.dir/BLog.c.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/BLog.c.o: /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BLog.c
base/CMakeFiles/base.dir/BLog.c.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/user/Documentos/RustyManager/BadVpn/badvpn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object base/CMakeFiles/base.dir/BLog.c.o"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT base/CMakeFiles/base.dir/BLog.c.o -MF CMakeFiles/base.dir/BLog.c.o.d -o CMakeFiles/base.dir/BLog.c.o -c /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BLog.c

base/CMakeFiles/base.dir/BLog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/base.dir/BLog.c.i"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BLog.c > CMakeFiles/base.dir/BLog.c.i

base/CMakeFiles/base.dir/BLog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/base.dir/BLog.c.s"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BLog.c -o CMakeFiles/base.dir/BLog.c.s

base/CMakeFiles/base.dir/BPending.c.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/BPending.c.o: /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BPending.c
base/CMakeFiles/base.dir/BPending.c.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/user/Documentos/RustyManager/BadVpn/badvpn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object base/CMakeFiles/base.dir/BPending.c.o"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT base/CMakeFiles/base.dir/BPending.c.o -MF CMakeFiles/base.dir/BPending.c.o.d -o CMakeFiles/base.dir/BPending.c.o -c /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BPending.c

base/CMakeFiles/base.dir/BPending.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/base.dir/BPending.c.i"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BPending.c > CMakeFiles/base.dir/BPending.c.i

base/CMakeFiles/base.dir/BPending.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/base.dir/BPending.c.s"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BPending.c -o CMakeFiles/base.dir/BPending.c.s

base/CMakeFiles/base.dir/BLog_syslog.c.o: base/CMakeFiles/base.dir/flags.make
base/CMakeFiles/base.dir/BLog_syslog.c.o: /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BLog_syslog.c
base/CMakeFiles/base.dir/BLog_syslog.c.o: base/CMakeFiles/base.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/user/Documentos/RustyManager/BadVpn/badvpn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object base/CMakeFiles/base.dir/BLog_syslog.c.o"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT base/CMakeFiles/base.dir/BLog_syslog.c.o -MF CMakeFiles/base.dir/BLog_syslog.c.o.d -o CMakeFiles/base.dir/BLog_syslog.c.o -c /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BLog_syslog.c

base/CMakeFiles/base.dir/BLog_syslog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/base.dir/BLog_syslog.c.i"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BLog_syslog.c > CMakeFiles/base.dir/BLog_syslog.c.i

base/CMakeFiles/base.dir/BLog_syslog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/base.dir/BLog_syslog.c.s"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user/Documentos/RustyManager/BadVpn/badvpn/base/BLog_syslog.c -o CMakeFiles/base.dir/BLog_syslog.c.s

# Object files for target base
base_OBJECTS = \
"CMakeFiles/base.dir/DebugObject.c.o" \
"CMakeFiles/base.dir/BLog.c.o" \
"CMakeFiles/base.dir/BPending.c.o" \
"CMakeFiles/base.dir/BLog_syslog.c.o"

# External object files for target base
base_EXTERNAL_OBJECTS =

base/libbadvpn-base.a: base/CMakeFiles/base.dir/DebugObject.c.o
base/libbadvpn-base.a: base/CMakeFiles/base.dir/BLog.c.o
base/libbadvpn-base.a: base/CMakeFiles/base.dir/BPending.c.o
base/libbadvpn-base.a: base/CMakeFiles/base.dir/BLog_syslog.c.o
base/libbadvpn-base.a: base/CMakeFiles/base.dir/build.make
base/libbadvpn-base.a: base/CMakeFiles/base.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/user/Documentos/RustyManager/BadVpn/badvpn/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libbadvpn-base.a"
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && $(CMAKE_COMMAND) -P CMakeFiles/base.dir/cmake_clean_target.cmake
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/base.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
base/CMakeFiles/base.dir/build: base/libbadvpn-base.a
.PHONY : base/CMakeFiles/base.dir/build

base/CMakeFiles/base.dir/clean:
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base && $(CMAKE_COMMAND) -P CMakeFiles/base.dir/cmake_clean.cmake
.PHONY : base/CMakeFiles/base.dir/clean

base/CMakeFiles/base.dir/depend:
	cd /home/user/Documentos/RustyManager/BadVpn/badvpn/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Documentos/RustyManager/BadVpn/badvpn /home/user/Documentos/RustyManager/BadVpn/badvpn/base /home/user/Documentos/RustyManager/BadVpn/badvpn/build /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base /home/user/Documentos/RustyManager/BadVpn/badvpn/build/base/CMakeFiles/base.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : base/CMakeFiles/base.dir/depend

