# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\workspace\cpp\openGL\Snake-OpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\workspace\cpp\openGL\Snake-OpenGL\build

# Include any dependencies generated for this target.
include CMakeFiles/Snake.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Snake.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Snake.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Snake.dir/flags.make

CMakeFiles/Snake.dir/src/main.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/main.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/main.cpp.obj: D:/workspace/cpp/openGL/Snake-OpenGL/src/main.cpp
CMakeFiles/Snake.dir/src/main.cpp.obj: CMakeFiles/Snake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\workspace\cpp\openGL\Snake-OpenGL\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Snake.dir/src/main.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Snake.dir/src/main.cpp.obj -MF CMakeFiles\Snake.dir\src\main.cpp.obj.d -o CMakeFiles\Snake.dir\src\main.cpp.obj -c D:\workspace\cpp\openGL\Snake-OpenGL\src\main.cpp

CMakeFiles/Snake.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/main.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\workspace\cpp\openGL\Snake-OpenGL\src\main.cpp > CMakeFiles\Snake.dir\src\main.cpp.i

CMakeFiles/Snake.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/main.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\workspace\cpp\openGL\Snake-OpenGL\src\main.cpp -o CMakeFiles\Snake.dir\src\main.cpp.s

CMakeFiles/Snake.dir/src/ShaderProgram.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/ShaderProgram.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/ShaderProgram.cpp.obj: D:/workspace/cpp/openGL/Snake-OpenGL/src/ShaderProgram.cpp
CMakeFiles/Snake.dir/src/ShaderProgram.cpp.obj: CMakeFiles/Snake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\workspace\cpp\openGL\Snake-OpenGL\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Snake.dir/src/ShaderProgram.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Snake.dir/src/ShaderProgram.cpp.obj -MF CMakeFiles\Snake.dir\src\ShaderProgram.cpp.obj.d -o CMakeFiles\Snake.dir\src\ShaderProgram.cpp.obj -c D:\workspace\cpp\openGL\Snake-OpenGL\src\ShaderProgram.cpp

CMakeFiles/Snake.dir/src/ShaderProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/ShaderProgram.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\workspace\cpp\openGL\Snake-OpenGL\src\ShaderProgram.cpp > CMakeFiles\Snake.dir\src\ShaderProgram.cpp.i

CMakeFiles/Snake.dir/src/ShaderProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/ShaderProgram.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\workspace\cpp\openGL\Snake-OpenGL\src\ShaderProgram.cpp -o CMakeFiles\Snake.dir\src\ShaderProgram.cpp.s

CMakeFiles/Snake.dir/src/Square.cpp.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/Square.cpp.obj: CMakeFiles/Snake.dir/includes_CXX.rsp
CMakeFiles/Snake.dir/src/Square.cpp.obj: D:/workspace/cpp/openGL/Snake-OpenGL/src/Square.cpp
CMakeFiles/Snake.dir/src/Square.cpp.obj: CMakeFiles/Snake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\workspace\cpp\openGL\Snake-OpenGL\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Snake.dir/src/Square.cpp.obj"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Snake.dir/src/Square.cpp.obj -MF CMakeFiles\Snake.dir\src\Square.cpp.obj.d -o CMakeFiles\Snake.dir\src\Square.cpp.obj -c D:\workspace\cpp\openGL\Snake-OpenGL\src\Square.cpp

CMakeFiles/Snake.dir/src/Square.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Snake.dir/src/Square.cpp.i"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\workspace\cpp\openGL\Snake-OpenGL\src\Square.cpp > CMakeFiles\Snake.dir\src\Square.cpp.i

CMakeFiles/Snake.dir/src/Square.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Snake.dir/src/Square.cpp.s"
	C:\MinGW\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\workspace\cpp\openGL\Snake-OpenGL\src\Square.cpp -o CMakeFiles\Snake.dir\src\Square.cpp.s

CMakeFiles/Snake.dir/src/glad.c.obj: CMakeFiles/Snake.dir/flags.make
CMakeFiles/Snake.dir/src/glad.c.obj: CMakeFiles/Snake.dir/includes_C.rsp
CMakeFiles/Snake.dir/src/glad.c.obj: D:/workspace/cpp/openGL/Snake-OpenGL/src/glad.c
CMakeFiles/Snake.dir/src/glad.c.obj: CMakeFiles/Snake.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\workspace\cpp\openGL\Snake-OpenGL\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Snake.dir/src/glad.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Snake.dir/src/glad.c.obj -MF CMakeFiles\Snake.dir\src\glad.c.obj.d -o CMakeFiles\Snake.dir\src\glad.c.obj -c D:\workspace\cpp\openGL\Snake-OpenGL\src\glad.c

CMakeFiles/Snake.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Snake.dir/src/glad.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\cpp\openGL\Snake-OpenGL\src\glad.c > CMakeFiles\Snake.dir\src\glad.c.i

CMakeFiles/Snake.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Snake.dir/src/glad.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\workspace\cpp\openGL\Snake-OpenGL\src\glad.c -o CMakeFiles\Snake.dir\src\glad.c.s

# Object files for target Snake
Snake_OBJECTS = \
"CMakeFiles/Snake.dir/src/main.cpp.obj" \
"CMakeFiles/Snake.dir/src/ShaderProgram.cpp.obj" \
"CMakeFiles/Snake.dir/src/Square.cpp.obj" \
"CMakeFiles/Snake.dir/src/glad.c.obj"

# External object files for target Snake
Snake_EXTERNAL_OBJECTS =

Snake.exe: CMakeFiles/Snake.dir/src/main.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/ShaderProgram.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/Square.cpp.obj
Snake.exe: CMakeFiles/Snake.dir/src/glad.c.obj
Snake.exe: CMakeFiles/Snake.dir/build.make
Snake.exe: D:/workspace/cpp/openGL/dependencies/GLFW/lib/libglfw3.a
Snake.exe: CMakeFiles/Snake.dir/linkLibs.rsp
Snake.exe: CMakeFiles/Snake.dir/objects1.rsp
Snake.exe: CMakeFiles/Snake.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\workspace\cpp\openGL\Snake-OpenGL\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Snake.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Snake.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Snake.dir/build: Snake.exe
.PHONY : CMakeFiles/Snake.dir/build

CMakeFiles/Snake.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Snake.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Snake.dir/clean

CMakeFiles/Snake.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\workspace\cpp\openGL\Snake-OpenGL D:\workspace\cpp\openGL\Snake-OpenGL D:\workspace\cpp\openGL\Snake-OpenGL\build D:\workspace\cpp\openGL\Snake-OpenGL\build D:\workspace\cpp\openGL\Snake-OpenGL\build\CMakeFiles\Snake.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Snake.dir/depend
