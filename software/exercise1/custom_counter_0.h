#ifndef __CUSTOM_COUNTER_0_H__
#define __CUSTOM_COUNTER_0_H__

// Global functions
void handle_counter_0_expire_interrupts(elevator_struct *);
int read_counter_0();
void reset_counter_0();
int read_counter_0_interrupt();
void init_counter_0_irq(elevator_struct *);
void load_counter_0_config(int);
#endif
