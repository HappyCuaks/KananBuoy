# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build

# Utility rule file for menuconfig.

# Include the progress variables for this target.
include CMakeFiles/menuconfig.dir/progress.make

CMakeFiles/menuconfig:
	/home/pablo/.espressif/python_env/idf4.3_py2.7_env/bin/python /home/pablo/esp-idf/esp-idf/tools/kconfig_new/prepare_kconfig_files.py --env-file /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/config.env
	/home/pablo/.espressif/python_env/idf4.3_py2.7_env/bin/python /home/pablo/esp-idf/esp-idf/tools/kconfig_new/confgen.py --kconfig /home/pablo/esp-idf/esp-idf/Kconfig --sdkconfig-rename /home/pablo/esp-idf/esp-idf/sdkconfig.rename --config /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/sdkconfig --env-file /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/config.env --env IDF_TARGET=esp32 --env IDF_ENV_FPGA= --dont-write-deprecated --output config /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/sdkconfig
	/home/pablo/.espressif/python_env/idf4.3_py2.7_env/bin/python /home/pablo/esp-idf/esp-idf/tools/check_term.py
	/usr/bin/cmake -E env COMPONENT_KCONFIGS_SOURCE_FILE=/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/kconfigs.in COMPONENT_KCONFIGS_PROJBUILD_SOURCE_FILE=/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/kconfigs_projbuild.in IDF_CMAKE=y KCONFIG_CONFIG=/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/sdkconfig IDF_TARGET=esp32 IDF_ENV_FPGA= /home/pablo/.espressif/python_env/idf4.3_py2.7_env/bin/python -m menuconfig /home/pablo/esp-idf/esp-idf/Kconfig
	/home/pablo/.espressif/python_env/idf4.3_py2.7_env/bin/python /home/pablo/esp-idf/esp-idf/tools/kconfig_new/confgen.py --kconfig /home/pablo/esp-idf/esp-idf/Kconfig --sdkconfig-rename /home/pablo/esp-idf/esp-idf/sdkconfig.rename --config /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/sdkconfig --env-file /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/config.env --env IDF_TARGET=esp32 --env IDF_ENV_FPGA= --output config /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/sdkconfig

menuconfig: CMakeFiles/menuconfig
menuconfig: CMakeFiles/menuconfig.dir/build.make

.PHONY : menuconfig

# Rule to build all files generated by this target.
CMakeFiles/menuconfig.dir/build: menuconfig

.PHONY : CMakeFiles/menuconfig.dir/build

CMakeFiles/menuconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/menuconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/menuconfig.dir/clean

CMakeFiles/menuconfig.dir/depend:
	cd /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/CMakeFiles/menuconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/menuconfig.dir/depend

