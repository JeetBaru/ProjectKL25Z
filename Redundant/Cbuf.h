/*
 * circular_Buffer.h
 *
 *  Created on: 30-Oct-2016
 *      Author: Sayan
 */

#ifndef CIRCULAR_BUFFER_H_
#define CIRCULAR_BUFFER_H_

#define MAX_LEN 500
#include <stdint.h>


typedef enum {
	buffer_full,
	buffer_not_full,
	buffer_empty,
	buffer_not_empty,
	success_item_add,
	success_item_add_wraparound_override,
	error,
	SUCCESS,
	FAIL,
	NULL_POINTER
}  buffer_status;

typedef struct {
	int8_t *buff;
	int8_t *head;
	int8_t *tail;
	uint32_t num_items;
	uint32_t length;
} circular_buff_t;
circular_buff_t _transmit_buffer, _recieve_buffer;
circular_buff_t *circ_buff;

buffer_status buff_full(circular_buff_t *circ_buff);
int8_t CircBuf_Initialise(circular_buff_t *circ_buff);
buffer_status buff_empty(circular_buff_t *circ_buff);
buffer_status put_item_tobuffer(circular_buff_t *circ_buff, int8_t data);
int8_t read_delete_item_frombuffer(circular_buff_t *circ_buff);
int8_t* allocate_memory(circular_buff_t *circ_buff);
void free_buff(circular_buff_t *circ_buff);
uint8_t CircBuf_overempty(uint8_t element, uint8_t cnt);
uint8_t CircBuf_overfill(uint8_t element, uint8_t cnt);

#endif /* CIRCULAR_BUFFER_H_ */
