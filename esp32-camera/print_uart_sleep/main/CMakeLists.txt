

idf_component_register(SRCS "CAM_uart_main.c"
                  INCLUDE_DIRS "."
                  PRIV_REQUIRES esp32-camera uart_i driver freertos nvs_flash fatfs)

