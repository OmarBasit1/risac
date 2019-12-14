#include "io.h"
/**
 * The backend for the stdlib io write functions
 * @param fd: 	file descriptor for output device
 * @param ptr:	data
 * @param len:	length
 */
ssize_t _write(int fd, const void* ptr, size_t len) {
	volatile char *uart = (volatile char *)0x1000000;
	if (fd == STDOUT_FILENO) {
		_puts(uart, (const char *)ptr, len);
		return 0;
	}
	return -1;
}

/**
 * Write a string of characters to the ALTERA JTAG UART IP
 * Waits till the IP is ready to accept data and then writes a byte
 * @param uart: contains address of jtag uart peripheral
 * @param msg:	string to write
 * @param len:	length in bytes
 */
void _puts (volatile char* uart, const char* msg, const size_t len) {
	volatile unsigned int *status = (volatile unsigned int *)uart;
	for (int i = 0; i < len; ++i) {
		while (status[1] >> 16 == 0);
		*uart = msg[i];
	}
}