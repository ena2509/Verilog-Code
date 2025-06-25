# FSM-Code ( BUTTON DEBOUNCER )
Verilog Labs

FSM Question: Button Debouncer (2-State Toggle)
❓ Problem:
You have a push button that sometimes bounces (gives multiple quick transitions on one press).
Design an FSM that toggles an LED only when a clean rising edge (press) is detected...can u give a code and explain , after i will share my code
When the FSM is in the IDLE state:

If the button input (btn_in) is 1 (button is pressed),
→ the FSM transitions to the PRESSED state
→ and the LED output is toggled (turned ON if OFF, or OFF if ON).

If the button input is 0 (button not pressed),
→ the FSM stays in the IDLE state
→ and does nothing.

When the FSM is in the PRESSED state:

If the button input is still 1,
→ the FSM stays in the PRESSED state
→ and the LED output remains unchanged.

If the button input becomes 0 (button released),
→ the FSM transitions back to the IDLE state
→ and prepares to detect the next press
