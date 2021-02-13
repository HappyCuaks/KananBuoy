# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# compile C with /home/pablo/.espressif/tools/xtensa-esp32-elf/esp-2020r3-8.4.0/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
C_FLAGS = -mlongcalls -Wno-frame-address   -mfix-esp32-psram-cache-issue -mfix-esp32-psram-cache-strategy=memw

C_DEFINES = -DHAVE_CONFIG_H -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DUNITY_INCLUDE_CONFIG_H -DWITH_POSIX

C_INCLUDES = -I/home/pablo/esp-idf/esp-idf/components/esp_pm/include -I/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/build/config -I/home/pablo/esp-idf/esp-idf/components/newlib/platform_include -I/home/pablo/esp-idf/esp-idf/components/freertos/include -I/home/pablo/esp-idf/esp-idf/components/freertos/port/xtensa/include -I/home/pablo/esp-idf/esp-idf/components/esp_hw_support/include -I/home/pablo/esp-idf/esp-idf/components/esp_hw_support/port/esp32/. -I/home/pablo/esp-idf/esp-idf/components/heap/include -I/home/pablo/esp-idf/esp-idf/components/log/include -I/home/pablo/esp-idf/esp-idf/components/lwip/include/apps -I/home/pablo/esp-idf/esp-idf/components/lwip/include/apps/sntp -I/home/pablo/esp-idf/esp-idf/components/lwip/lwip/src/include -I/home/pablo/esp-idf/esp-idf/components/lwip/port/esp32/include -I/home/pablo/esp-idf/esp-idf/components/lwip/port/esp32/include/arch -I/home/pablo/esp-idf/esp-idf/components/soc/include -I/home/pablo/esp-idf/esp-idf/components/soc/esp32/. -I/home/pablo/esp-idf/esp-idf/components/soc/esp32/include -I/home/pablo/esp-idf/esp-idf/components/hal/esp32/include -I/home/pablo/esp-idf/esp-idf/components/hal/include -I/home/pablo/esp-idf/esp-idf/components/esp_rom/include -I/home/pablo/esp-idf/esp-idf/components/esp_rom/esp32 -I/home/pablo/esp-idf/esp-idf/components/esp_common/include -I/home/pablo/esp-idf/esp-idf/components/esp_system/include -I/home/pablo/esp-idf/esp-idf/components/esp32/include -I/home/pablo/esp-idf/esp-idf/components/driver/include -I/home/pablo/esp-idf/esp-idf/components/driver/esp32/include -I/home/pablo/esp-idf/esp-idf/components/esp_ringbuf/include -I/home/pablo/esp-idf/esp-idf/components/efuse/include -I/home/pablo/esp-idf/esp-idf/components/efuse/esp32/include -I/home/pablo/esp-idf/esp-idf/components/xtensa/include -I/home/pablo/esp-idf/esp-idf/components/xtensa/esp32/include -I/home/pablo/esp-idf/esp-idf/components/espcoredump/include -I/home/pablo/esp-idf/esp-idf/components/esp_timer/include -I/home/pablo/esp-idf/esp-idf/components/esp_ipc/include -I/home/pablo/esp-idf/esp-idf/components/vfs/include -I/home/pablo/esp-idf/esp-idf/components/esp_wifi/include -I/home/pablo/esp-idf/esp-idf/components/esp_wifi/esp32/include -I/home/pablo/esp-idf/esp-idf/components/esp_event/include -I/home/pablo/esp-idf/esp-idf/components/esp_netif/include -I/home/pablo/esp-idf/esp-idf/components/esp_eth/include -I/home/pablo/esp-idf/esp-idf/components/tcpip_adapter/include -I/home/pablo/esp-idf/esp-idf/components/app_trace/include -I/home/pablo/esp-idf/esp-idf/components/mbedtls/port/include -I/home/pablo/esp-idf/esp-idf/components/mbedtls/mbedtls/include -I/home/pablo/esp-idf/esp-idf/components/mbedtls/esp_crt_bundle/include -I/home/pablo/esp-idf/esp-idf/components/bootloader_support/include -I/home/pablo/esp-idf/esp-idf/components/app_update/include -I/home/pablo/esp-idf/esp-idf/components/spi_flash/include -I/home/pablo/esp-idf/esp-idf/components/nvs_flash/include -I/home/pablo/esp-idf/esp-idf/components/pthread/include -I/home/pablo/esp-idf/esp-idf/components/esp_gdbstub/include -I/home/pablo/esp-idf/esp-idf/components/esp_gdbstub/xtensa -I/home/pablo/esp-idf/esp-idf/components/esp_gdbstub/esp32 -I/home/pablo/esp-idf/esp-idf/components/wpa_supplicant/include -I/home/pablo/esp-idf/esp-idf/components/wpa_supplicant/port/include -I/home/pablo/esp-idf/esp-idf/components/wpa_supplicant/include/esp_supplicant -I/home/pablo/esp-idf/esp-idf/components/perfmon/include -I/home/pablo/esp-idf/esp-idf/components/asio/asio/asio/include -I/home/pablo/esp-idf/esp-idf/components/asio/port/include -I/home/pablo/esp-idf/esp-idf/components/cbor/port/include -I/home/pablo/esp-idf/esp-idf/components/unity/include -I/home/pablo/esp-idf/esp-idf/components/unity/unity/src -I/home/pablo/esp-idf/esp-idf/components/cmock/CMock/src -I/home/pablo/esp-idf/esp-idf/components/coap/port/include -I/home/pablo/esp-idf/esp-idf/components/coap/port/include/coap -I/home/pablo/esp-idf/esp-idf/components/coap/libcoap/include -I/home/pablo/esp-idf/esp-idf/components/coap/libcoap/include/coap2 -I/home/pablo/esp-idf/esp-idf/components/console -I/home/pablo/esp-idf/esp-idf/components/nghttp/port/include -I/home/pablo/esp-idf/esp-idf/components/nghttp/nghttp2/lib/includes -I/home/pablo/esp-idf/esp-idf/components/esp-tls -I/home/pablo/esp-idf/esp-idf/components/esp-tls/esp-tls-crypto -I/home/pablo/esp-idf/esp-idf/components/esp_adc_cal/include -I/home/pablo/esp-idf/esp-idf/components/esp_hid/include -I/home/pablo/esp-idf/esp-idf/components/tcp_transport/include -I/home/pablo/esp-idf/esp-idf/components/esp_http_client/include -I/home/pablo/esp-idf/esp-idf/components/esp_http_server/include -I/home/pablo/esp-idf/esp-idf/components/esp_https_ota/include -I/home/pablo/esp-idf/esp-idf/components/protobuf-c/protobuf-c -I/home/pablo/esp-idf/esp-idf/components/protocomm/include/common -I/home/pablo/esp-idf/esp-idf/components/protocomm/include/security -I/home/pablo/esp-idf/esp-idf/components/protocomm/include/transports -I/home/pablo/esp-idf/esp-idf/components/mdns/include -I/home/pablo/esp-idf/esp-idf/components/esp_local_ctrl/include -I/home/pablo/esp-idf/esp-idf/components/sdmmc/include -I/home/pablo/esp-idf/esp-idf/components/esp_serial_slave_link/include -I/home/pablo/esp-idf/esp-idf/components/esp_websocket_client/include -I/home/pablo/esp-idf/esp-idf/components/expat/expat/expat/lib -I/home/pablo/esp-idf/esp-idf/components/expat/port/include -I/home/pablo/esp-idf/esp-idf/components/wear_levelling/include -I/home/pablo/esp-idf/esp-idf/components/fatfs/diskio -I/home/pablo/esp-idf/esp-idf/components/fatfs/vfs -I/home/pablo/esp-idf/esp-idf/components/fatfs/src -I/home/pablo/esp-idf/esp-idf/components/freemodbus/common/include -I/home/pablo/esp-idf/esp-idf/components/idf_test/include -I/home/pablo/esp-idf/esp-idf/components/idf_test/include/esp32 -I/home/pablo/esp-idf/esp-idf/components/jsmn/include -I/home/pablo/esp-idf/esp-idf/components/json/cJSON -I/home/pablo/esp-idf/esp-idf/components/libsodium/libsodium/src/libsodium/include -I/home/pablo/esp-idf/esp-idf/components/libsodium/port_include -I/home/pablo/esp-idf/esp-idf/components/mqtt/esp-mqtt/include -I/home/pablo/esp-idf/esp-idf/components/openssl/include -I/home/pablo/esp-idf/esp-idf/components/spiffs/include -I/home/pablo/esp-idf/esp-idf/components/ulp/include -I/home/pablo/esp-idf/esp-idf/components/wifi_provisioning/include -I/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/components/esp32-camera/driver/include -I/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/components/esp32-camera/conversions/include -I/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/components/uart_i/include -I/home/pablo/esp-idf/esp-idf/examples/Pablo_Code/esp32-camera/print_uart/main 

