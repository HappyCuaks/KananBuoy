#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include "driver/gpio.h"
#include "include/uart_i.h"
#include "sdkconfig.h"

#define UART_PIN_TXD        GPIO_NUM_1
#define UART_PIN_RXD        GPIO_NUM_3
#define UART_PIN_RTS        GPIO_NUM_22
#define UART_PIN_CTS        GPIO_NUM_19
#define UART_PORT_NUM       UART_NUM_0

#define UART_BAUD_RATE  115200

#define BUF_SIZE (1024)

void uart0_printf(const char *format, ...)
{
    unsigned int i; 
	char *s; 
    va_list ap;
    va_start(ap, format);

    uint8_t *ptr;

    for (ptr = (uint8_t*)format; *ptr != '\0'; ptr++) {
        char next_arg[50] = {0};
        if (*ptr == '%') {
            ptr++;
            switch (*ptr) {
                case 's':
                    s = va_arg(ap, char *);
                    uart_write_bytes(UART_PORT_NUM, (const char *) s, strlen(s));
                    break;
                case 'c':
                    i = va_arg(ap, int);
                    uart_write_bytes(UART_PORT_NUM, (const char *) i, sizeof(unsigned int));
                    break;
                case 'd':
                    i = va_arg(ap, int);
                    uart_write_bytes(UART_PORT_NUM, (const char *) i, sizeof(unsigned int));
                    break;
                case '%':
                    uart_write_bytes(UART_PORT_NUM, (const char *) '%', 1);
                    break;
            }
        } else {
            uart_write_bytes(UART_PORT_NUM, (char *) *ptr, 1);
        }
    }
    va_end(ap);
}

void uart0_init(void)
{
    /* Configure parameters of an UART driver,
     * communication pins and install the driver */
    uart_config_t uart_config = {
        .baud_rate = UART_BAUD_RATE,
        .data_bits = UART_DATA_8_BITS,
        .parity    = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE,
        .source_clk = UART_SCLK_APB,
    };
    int intr_alloc_flags = 0;

#if CONFIG_UART_ISR_IN_IRAM
    intr_alloc_flags = ESP_INTR_FLAG_IRAM;
#endif

    ESP_ERROR_CHECK(uart_driver_install(UART_PORT_NUM, BUF_SIZE * 2, 0, 0, NULL, intr_alloc_flags));
    ESP_ERROR_CHECK(uart_param_config(UART_PORT_NUM, &uart_config));
    ESP_ERROR_CHECK(uart_set_pin(UART_PORT_NUM, UART_PIN_TXD, UART_PIN_RXD, UART_PIN_RTS, UART_PIN_CTS));

}