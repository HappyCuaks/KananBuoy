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

# Include any dependencies generated for this target.
include CMakeFiles/CAM_uart_printf.elf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CAM_uart_printf.elf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CAM_uart_printf.elf.dir/flags.make

project_elf_src_esp32.c:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating project_elf_src_esp32.c"
	/usr/bin/cmake -E touch /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/project_elf_src_esp32.c

CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.obj: CMakeFiles/CAM_uart_printf.elf.dir/flags.make
CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.obj: project_elf_src_esp32.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.obj"
	/home/pablo/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.obj   -c /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/project_elf_src_esp32.c

CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.i"
	/home/pablo/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/project_elf_src_esp32.c > CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.i

CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.s"
	/home/pablo/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/project_elf_src_esp32.c -o CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.s

# Object files for target CAM_uart_printf.elf
CAM_uart_printf_elf_OBJECTS = \
"CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.obj"

# External object files for target CAM_uart_printf.elf
CAM_uart_printf_elf_EXTERNAL_OBJECTS =

CAM_uart_printf.elf: CMakeFiles/CAM_uart_printf.elf.dir/project_elf_src_esp32.c.obj
CAM_uart_printf.elf: CMakeFiles/CAM_uart_printf.elf.dir/build.make
CAM_uart_printf.elf: esp-idf/esp_pm/libesp_pm.a
CAM_uart_printf.elf: esp-idf/mbedtls/libmbedtls.a
CAM_uart_printf.elf: esp-idf/efuse/libefuse.a
CAM_uart_printf.elf: esp-idf/bootloader_support/libbootloader_support.a
CAM_uart_printf.elf: esp-idf/app_update/libapp_update.a
CAM_uart_printf.elf: esp-idf/esp_ipc/libesp_ipc.a
CAM_uart_printf.elf: esp-idf/spi_flash/libspi_flash.a
CAM_uart_printf.elf: esp-idf/nvs_flash/libnvs_flash.a
CAM_uart_printf.elf: esp-idf/pthread/libpthread.a
CAM_uart_printf.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
CAM_uart_printf.elf: esp-idf/esp_system/libesp_system.a
CAM_uart_printf.elf: esp-idf/esp_rom/libesp_rom.a
CAM_uart_printf.elf: esp-idf/hal/libhal.a
CAM_uart_printf.elf: esp-idf/vfs/libvfs.a
CAM_uart_printf.elf: esp-idf/esp_eth/libesp_eth.a
CAM_uart_printf.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
CAM_uart_printf.elf: esp-idf/esp_netif/libesp_netif.a
CAM_uart_printf.elf: esp-idf/esp_event/libesp_event.a
CAM_uart_printf.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
CAM_uart_printf.elf: esp-idf/esp_wifi/libesp_wifi.a
CAM_uart_printf.elf: esp-idf/lwip/liblwip.a
CAM_uart_printf.elf: esp-idf/log/liblog.a
CAM_uart_printf.elf: esp-idf/heap/libheap.a
CAM_uart_printf.elf: esp-idf/soc/libsoc.a
CAM_uart_printf.elf: esp-idf/esp_hw_support/libesp_hw_support.a
CAM_uart_printf.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
CAM_uart_printf.elf: esp-idf/driver/libdriver.a
CAM_uart_printf.elf: esp-idf/xtensa/libxtensa.a
CAM_uart_printf.elf: esp-idf/espcoredump/libespcoredump.a
CAM_uart_printf.elf: esp-idf/perfmon/libperfmon.a
CAM_uart_printf.elf: esp-idf/esp32/libesp32.a
CAM_uart_printf.elf: esp-idf/esp_common/libesp_common.a
CAM_uart_printf.elf: esp-idf/esp_timer/libesp_timer.a
CAM_uart_printf.elf: esp-idf/freertos/libfreertos.a
CAM_uart_printf.elf: esp-idf/newlib/libnewlib.a
CAM_uart_printf.elf: esp-idf/cxx/libcxx.a
CAM_uart_printf.elf: esp-idf/app_trace/libapp_trace.a
CAM_uart_printf.elf: esp-idf/asio/libasio.a
CAM_uart_printf.elf: esp-idf/cbor/libcbor.a
CAM_uart_printf.elf: esp-idf/unity/libunity.a
CAM_uart_printf.elf: esp-idf/cmock/libcmock.a
CAM_uart_printf.elf: esp-idf/coap/libcoap.a
CAM_uart_printf.elf: esp-idf/console/libconsole.a
CAM_uart_printf.elf: esp-idf/nghttp/libnghttp.a
CAM_uart_printf.elf: esp-idf/esp-tls/libesp-tls.a
CAM_uart_printf.elf: esp-idf/esp_adc_cal/libesp_adc_cal.a
CAM_uart_printf.elf: esp-idf/esp_hid/libesp_hid.a
CAM_uart_printf.elf: esp-idf/tcp_transport/libtcp_transport.a
CAM_uart_printf.elf: esp-idf/esp_http_client/libesp_http_client.a
CAM_uart_printf.elf: esp-idf/esp_http_server/libesp_http_server.a
CAM_uart_printf.elf: esp-idf/esp_https_ota/libesp_https_ota.a
CAM_uart_printf.elf: esp-idf/protobuf-c/libprotobuf-c.a
CAM_uart_printf.elf: esp-idf/protocomm/libprotocomm.a
CAM_uart_printf.elf: esp-idf/mdns/libmdns.a
CAM_uart_printf.elf: esp-idf/esp_local_ctrl/libesp_local_ctrl.a
CAM_uart_printf.elf: esp-idf/sdmmc/libsdmmc.a
CAM_uart_printf.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
CAM_uart_printf.elf: esp-idf/esp_websocket_client/libesp_websocket_client.a
CAM_uart_printf.elf: esp-idf/expat/libexpat.a
CAM_uart_printf.elf: esp-idf/wear_levelling/libwear_levelling.a
CAM_uart_printf.elf: esp-idf/fatfs/libfatfs.a
CAM_uart_printf.elf: esp-idf/freemodbus/libfreemodbus.a
CAM_uart_printf.elf: esp-idf/jsmn/libjsmn.a
CAM_uart_printf.elf: esp-idf/json/libjson.a
CAM_uart_printf.elf: esp-idf/libsodium/liblibsodium.a
CAM_uart_printf.elf: esp-idf/mqtt/libmqtt.a
CAM_uart_printf.elf: esp-idf/openssl/libopenssl.a
CAM_uart_printf.elf: esp-idf/spiffs/libspiffs.a
CAM_uart_printf.elf: esp-idf/ulp/libulp.a
CAM_uart_printf.elf: esp-idf/wifi_provisioning/libwifi_provisioning.a
CAM_uart_printf.elf: esp-idf/esp32-camera/libesp32-camera.a
CAM_uart_printf.elf: esp-idf/uart_i/libuart_i.a
CAM_uart_printf.elf: esp-idf/main/libmain.a
CAM_uart_printf.elf: esp-idf/unity/libunity.a
CAM_uart_printf.elf: esp-idf/protocomm/libprotocomm.a
CAM_uart_printf.elf: esp-idf/protobuf-c/libprotobuf-c.a
CAM_uart_printf.elf: esp-idf/mdns/libmdns.a
CAM_uart_printf.elf: esp-idf/console/libconsole.a
CAM_uart_printf.elf: esp-idf/json/libjson.a
CAM_uart_printf.elf: esp-idf/fatfs/libfatfs.a
CAM_uart_printf.elf: esp-idf/wear_levelling/libwear_levelling.a
CAM_uart_printf.elf: esp-idf/esp32-camera/libesp32-camera.a
CAM_uart_printf.elf: esp-idf/uart_i/libuart_i.a
CAM_uart_printf.elf: esp-idf/esp_pm/libesp_pm.a
CAM_uart_printf.elf: esp-idf/mbedtls/libmbedtls.a
CAM_uart_printf.elf: esp-idf/efuse/libefuse.a
CAM_uart_printf.elf: esp-idf/bootloader_support/libbootloader_support.a
CAM_uart_printf.elf: esp-idf/app_update/libapp_update.a
CAM_uart_printf.elf: esp-idf/esp_ipc/libesp_ipc.a
CAM_uart_printf.elf: esp-idf/spi_flash/libspi_flash.a
CAM_uart_printf.elf: esp-idf/nvs_flash/libnvs_flash.a
CAM_uart_printf.elf: esp-idf/pthread/libpthread.a
CAM_uart_printf.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
CAM_uart_printf.elf: esp-idf/esp_system/libesp_system.a
CAM_uart_printf.elf: esp-idf/esp_rom/libesp_rom.a
CAM_uart_printf.elf: esp-idf/hal/libhal.a
CAM_uart_printf.elf: esp-idf/vfs/libvfs.a
CAM_uart_printf.elf: esp-idf/esp_eth/libesp_eth.a
CAM_uart_printf.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
CAM_uart_printf.elf: esp-idf/esp_netif/libesp_netif.a
CAM_uart_printf.elf: esp-idf/esp_event/libesp_event.a
CAM_uart_printf.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
CAM_uart_printf.elf: esp-idf/esp_wifi/libesp_wifi.a
CAM_uart_printf.elf: esp-idf/lwip/liblwip.a
CAM_uart_printf.elf: esp-idf/log/liblog.a
CAM_uart_printf.elf: esp-idf/heap/libheap.a
CAM_uart_printf.elf: esp-idf/soc/libsoc.a
CAM_uart_printf.elf: esp-idf/esp_hw_support/libesp_hw_support.a
CAM_uart_printf.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
CAM_uart_printf.elf: esp-idf/driver/libdriver.a
CAM_uart_printf.elf: esp-idf/xtensa/libxtensa.a
CAM_uart_printf.elf: esp-idf/espcoredump/libespcoredump.a
CAM_uart_printf.elf: esp-idf/perfmon/libperfmon.a
CAM_uart_printf.elf: esp-idf/esp32/libesp32.a
CAM_uart_printf.elf: esp-idf/esp_common/libesp_common.a
CAM_uart_printf.elf: esp-idf/esp_timer/libesp_timer.a
CAM_uart_printf.elf: esp-idf/freertos/libfreertos.a
CAM_uart_printf.elf: esp-idf/newlib/libnewlib.a
CAM_uart_printf.elf: esp-idf/cxx/libcxx.a
CAM_uart_printf.elf: esp-idf/app_trace/libapp_trace.a
CAM_uart_printf.elf: esp-idf/nghttp/libnghttp.a
CAM_uart_printf.elf: esp-idf/esp-tls/libesp-tls.a
CAM_uart_printf.elf: esp-idf/tcp_transport/libtcp_transport.a
CAM_uart_printf.elf: esp-idf/esp_http_client/libesp_http_client.a
CAM_uart_printf.elf: esp-idf/esp_http_server/libesp_http_server.a
CAM_uart_printf.elf: esp-idf/esp_https_ota/libesp_https_ota.a
CAM_uart_printf.elf: esp-idf/sdmmc/libsdmmc.a
CAM_uart_printf.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
CAM_uart_printf.elf: esp-idf/ulp/libulp.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libcore.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libpp.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libphy.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/librtc.a
CAM_uart_printf.elf: esp-idf/esp_pm/libesp_pm.a
CAM_uart_printf.elf: esp-idf/mbedtls/libmbedtls.a
CAM_uart_printf.elf: esp-idf/efuse/libefuse.a
CAM_uart_printf.elf: esp-idf/bootloader_support/libbootloader_support.a
CAM_uart_printf.elf: esp-idf/app_update/libapp_update.a
CAM_uart_printf.elf: esp-idf/esp_ipc/libesp_ipc.a
CAM_uart_printf.elf: esp-idf/spi_flash/libspi_flash.a
CAM_uart_printf.elf: esp-idf/nvs_flash/libnvs_flash.a
CAM_uart_printf.elf: esp-idf/pthread/libpthread.a
CAM_uart_printf.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
CAM_uart_printf.elf: esp-idf/esp_system/libesp_system.a
CAM_uart_printf.elf: esp-idf/esp_rom/libesp_rom.a
CAM_uart_printf.elf: esp-idf/hal/libhal.a
CAM_uart_printf.elf: esp-idf/vfs/libvfs.a
CAM_uart_printf.elf: esp-idf/esp_eth/libesp_eth.a
CAM_uart_printf.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
CAM_uart_printf.elf: esp-idf/esp_netif/libesp_netif.a
CAM_uart_printf.elf: esp-idf/esp_event/libesp_event.a
CAM_uart_printf.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
CAM_uart_printf.elf: esp-idf/esp_wifi/libesp_wifi.a
CAM_uart_printf.elf: esp-idf/lwip/liblwip.a
CAM_uart_printf.elf: esp-idf/log/liblog.a
CAM_uart_printf.elf: esp-idf/heap/libheap.a
CAM_uart_printf.elf: esp-idf/soc/libsoc.a
CAM_uart_printf.elf: esp-idf/esp_hw_support/libesp_hw_support.a
CAM_uart_printf.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
CAM_uart_printf.elf: esp-idf/driver/libdriver.a
CAM_uart_printf.elf: esp-idf/xtensa/libxtensa.a
CAM_uart_printf.elf: esp-idf/espcoredump/libespcoredump.a
CAM_uart_printf.elf: esp-idf/perfmon/libperfmon.a
CAM_uart_printf.elf: esp-idf/esp32/libesp32.a
CAM_uart_printf.elf: esp-idf/esp_common/libesp_common.a
CAM_uart_printf.elf: esp-idf/esp_timer/libesp_timer.a
CAM_uart_printf.elf: esp-idf/freertos/libfreertos.a
CAM_uart_printf.elf: esp-idf/newlib/libnewlib.a
CAM_uart_printf.elf: esp-idf/cxx/libcxx.a
CAM_uart_printf.elf: esp-idf/app_trace/libapp_trace.a
CAM_uart_printf.elf: esp-idf/nghttp/libnghttp.a
CAM_uart_printf.elf: esp-idf/esp-tls/libesp-tls.a
CAM_uart_printf.elf: esp-idf/tcp_transport/libtcp_transport.a
CAM_uart_printf.elf: esp-idf/esp_http_client/libesp_http_client.a
CAM_uart_printf.elf: esp-idf/esp_http_server/libesp_http_server.a
CAM_uart_printf.elf: esp-idf/esp_https_ota/libesp_https_ota.a
CAM_uart_printf.elf: esp-idf/sdmmc/libsdmmc.a
CAM_uart_printf.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
CAM_uart_printf.elf: esp-idf/ulp/libulp.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libcore.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libpp.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libphy.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/librtc.a
CAM_uart_printf.elf: esp-idf/esp_pm/libesp_pm.a
CAM_uart_printf.elf: esp-idf/mbedtls/libmbedtls.a
CAM_uart_printf.elf: esp-idf/efuse/libefuse.a
CAM_uart_printf.elf: esp-idf/bootloader_support/libbootloader_support.a
CAM_uart_printf.elf: esp-idf/app_update/libapp_update.a
CAM_uart_printf.elf: esp-idf/esp_ipc/libesp_ipc.a
CAM_uart_printf.elf: esp-idf/spi_flash/libspi_flash.a
CAM_uart_printf.elf: esp-idf/nvs_flash/libnvs_flash.a
CAM_uart_printf.elf: esp-idf/pthread/libpthread.a
CAM_uart_printf.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
CAM_uart_printf.elf: esp-idf/esp_system/libesp_system.a
CAM_uart_printf.elf: esp-idf/esp_rom/libesp_rom.a
CAM_uart_printf.elf: esp-idf/hal/libhal.a
CAM_uart_printf.elf: esp-idf/vfs/libvfs.a
CAM_uart_printf.elf: esp-idf/esp_eth/libesp_eth.a
CAM_uart_printf.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
CAM_uart_printf.elf: esp-idf/esp_netif/libesp_netif.a
CAM_uart_printf.elf: esp-idf/esp_event/libesp_event.a
CAM_uart_printf.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
CAM_uart_printf.elf: esp-idf/esp_wifi/libesp_wifi.a
CAM_uart_printf.elf: esp-idf/lwip/liblwip.a
CAM_uart_printf.elf: esp-idf/log/liblog.a
CAM_uart_printf.elf: esp-idf/heap/libheap.a
CAM_uart_printf.elf: esp-idf/soc/libsoc.a
CAM_uart_printf.elf: esp-idf/esp_hw_support/libesp_hw_support.a
CAM_uart_printf.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
CAM_uart_printf.elf: esp-idf/driver/libdriver.a
CAM_uart_printf.elf: esp-idf/xtensa/libxtensa.a
CAM_uart_printf.elf: esp-idf/espcoredump/libespcoredump.a
CAM_uart_printf.elf: esp-idf/perfmon/libperfmon.a
CAM_uart_printf.elf: esp-idf/esp32/libesp32.a
CAM_uart_printf.elf: esp-idf/esp_common/libesp_common.a
CAM_uart_printf.elf: esp-idf/esp_timer/libesp_timer.a
CAM_uart_printf.elf: esp-idf/freertos/libfreertos.a
CAM_uart_printf.elf: esp-idf/newlib/libnewlib.a
CAM_uart_printf.elf: esp-idf/cxx/libcxx.a
CAM_uart_printf.elf: esp-idf/app_trace/libapp_trace.a
CAM_uart_printf.elf: esp-idf/nghttp/libnghttp.a
CAM_uart_printf.elf: esp-idf/esp-tls/libesp-tls.a
CAM_uart_printf.elf: esp-idf/tcp_transport/libtcp_transport.a
CAM_uart_printf.elf: esp-idf/esp_http_client/libesp_http_client.a
CAM_uart_printf.elf: esp-idf/esp_http_server/libesp_http_server.a
CAM_uart_printf.elf: esp-idf/esp_https_ota/libesp_https_ota.a
CAM_uart_printf.elf: esp-idf/sdmmc/libsdmmc.a
CAM_uart_printf.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
CAM_uart_printf.elf: esp-idf/ulp/libulp.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libcore.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libpp.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libphy.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/librtc.a
CAM_uart_printf.elf: esp-idf/esp_pm/libesp_pm.a
CAM_uart_printf.elf: esp-idf/mbedtls/libmbedtls.a
CAM_uart_printf.elf: esp-idf/efuse/libefuse.a
CAM_uart_printf.elf: esp-idf/bootloader_support/libbootloader_support.a
CAM_uart_printf.elf: esp-idf/app_update/libapp_update.a
CAM_uart_printf.elf: esp-idf/esp_ipc/libesp_ipc.a
CAM_uart_printf.elf: esp-idf/spi_flash/libspi_flash.a
CAM_uart_printf.elf: esp-idf/nvs_flash/libnvs_flash.a
CAM_uart_printf.elf: esp-idf/pthread/libpthread.a
CAM_uart_printf.elf: esp-idf/esp_gdbstub/libesp_gdbstub.a
CAM_uart_printf.elf: esp-idf/esp_system/libesp_system.a
CAM_uart_printf.elf: esp-idf/esp_rom/libesp_rom.a
CAM_uart_printf.elf: esp-idf/hal/libhal.a
CAM_uart_printf.elf: esp-idf/vfs/libvfs.a
CAM_uart_printf.elf: esp-idf/esp_eth/libesp_eth.a
CAM_uart_printf.elf: esp-idf/tcpip_adapter/libtcpip_adapter.a
CAM_uart_printf.elf: esp-idf/esp_netif/libesp_netif.a
CAM_uart_printf.elf: esp-idf/esp_event/libesp_event.a
CAM_uart_printf.elf: esp-idf/wpa_supplicant/libwpa_supplicant.a
CAM_uart_printf.elf: esp-idf/esp_wifi/libesp_wifi.a
CAM_uart_printf.elf: esp-idf/lwip/liblwip.a
CAM_uart_printf.elf: esp-idf/log/liblog.a
CAM_uart_printf.elf: esp-idf/heap/libheap.a
CAM_uart_printf.elf: esp-idf/soc/libsoc.a
CAM_uart_printf.elf: esp-idf/esp_hw_support/libesp_hw_support.a
CAM_uart_printf.elf: esp-idf/esp_ringbuf/libesp_ringbuf.a
CAM_uart_printf.elf: esp-idf/driver/libdriver.a
CAM_uart_printf.elf: esp-idf/xtensa/libxtensa.a
CAM_uart_printf.elf: esp-idf/espcoredump/libespcoredump.a
CAM_uart_printf.elf: esp-idf/perfmon/libperfmon.a
CAM_uart_printf.elf: esp-idf/esp32/libesp32.a
CAM_uart_printf.elf: esp-idf/esp_common/libesp_common.a
CAM_uart_printf.elf: esp-idf/esp_timer/libesp_timer.a
CAM_uart_printf.elf: esp-idf/freertos/libfreertos.a
CAM_uart_printf.elf: esp-idf/newlib/libnewlib.a
CAM_uart_printf.elf: esp-idf/cxx/libcxx.a
CAM_uart_printf.elf: esp-idf/app_trace/libapp_trace.a
CAM_uart_printf.elf: esp-idf/nghttp/libnghttp.a
CAM_uart_printf.elf: esp-idf/esp-tls/libesp-tls.a
CAM_uart_printf.elf: esp-idf/tcp_transport/libtcp_transport.a
CAM_uart_printf.elf: esp-idf/esp_http_client/libesp_http_client.a
CAM_uart_printf.elf: esp-idf/esp_http_server/libesp_http_server.a
CAM_uart_printf.elf: esp-idf/esp_https_ota/libesp_https_ota.a
CAM_uart_printf.elf: esp-idf/sdmmc/libsdmmc.a
CAM_uart_printf.elf: esp-idf/esp_serial_slave_link/libesp_serial_slave_link.a
CAM_uart_printf.elf: esp-idf/ulp/libulp.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedtls.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedcrypto.a
CAM_uart_printf.elf: esp-idf/mbedtls/mbedtls/library/libmbedx509.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libcoexist.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libcore.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libespnow.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libmesh.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libnet80211.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libpp.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libsmartconfig.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/libphy.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_wifi/lib/esp32/librtc.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/xtensa/esp32/libxt_hal.a
CAM_uart_printf.elf: esp-idf/newlib/libnewlib.a
CAM_uart_printf.elf: esp-idf/pthread/libpthread.a
CAM_uart_printf.elf: esp-idf/app_trace/libapp_trace.a
CAM_uart_printf.elf: esp-idf/app_trace/libapp_trace.a
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_rom/esp32/ld/esp32.rom.ld
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_rom/esp32/ld/esp32.rom.api.ld
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_rom/esp32/ld/esp32.rom.libgcc.ld
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_rom/esp32/ld/esp32.rom.newlib-data.ld
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp_rom/esp32/ld/esp32.rom.syscalls.ld
CAM_uart_printf.elf: esp-idf/esp32/esp32_out.ld
CAM_uart_printf.elf: esp-idf/esp32/ld/esp32.project.ld
CAM_uart_printf.elf: /home/pablo/esp-idf/esp-idf/components/esp32/ld/esp32.peripherals.ld
CAM_uart_printf.elf: CMakeFiles/CAM_uart_printf.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CAM_uart_printf.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CAM_uart_printf.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CAM_uart_printf.elf.dir/build: CAM_uart_printf.elf

.PHONY : CMakeFiles/CAM_uart_printf.elf.dir/build

CMakeFiles/CAM_uart_printf.elf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CAM_uart_printf.elf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CAM_uart_printf.elf.dir/clean

CMakeFiles/CAM_uart_printf.elf.dir/depend: project_elf_src_esp32.c
	cd /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build /home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/CMakeFiles/CAM_uart_printf.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CAM_uart_printf.elf.dir/depend
