#ifndef __CUSTOM_COUNTER_1_H__
#define __CUSTOM_COUNTER_1_H__

// Global functions
void handle_counter_1_expire_interrupts(elevator_struct *);
int read_counter_1();
void reset_counter_1();
int read_counter_1_interrupt();
void init_counter_1_irq(elevator_struct *);
void load_counter_1_config(int);
#endif
