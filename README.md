# embedded-c-elevator
The following is an implementation of a custom hardware component in NIOS II hardware via Qsys along with a corresponding embedded C software that interfaces with these components. The goal is to use a custom counter in hardware and detect interrupts from switches and push bottons in the Altera DE II board to drive the C software to simulate an elevator.

The elevator's functionality counts how many seconds at each floor then transitions for a given time between the floors. When the elevator arrives at a "floor" the LEDs get updated to indicate such a change.
