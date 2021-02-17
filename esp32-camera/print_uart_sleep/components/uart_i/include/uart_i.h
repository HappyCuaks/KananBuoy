#ifndef __UART_I_H__
#define __UART_I_H__

#include "driver/uart.h"

void uart0_printf(const char *format, ...);

void uart0_init(void);


#endif /* __UART_I_H__ */