# **8-Bit Calculator in Verilog for DE10-Lite FPGA**
### **Overview**
This Verilog project implements an 8-bit calculator on the DE10-Lite FPGA board. 
The calculator performs basic arithmetic operations such as addition and subtraction on two signed 8-bit operands. 
It features a simple user interface using the onboard buttons for input and the seven segment display and LED's for output display.

### **Features**
* Arithmetic operations: Unsigned and signed addition and subtraction.
* Input through onboard buttons for operand selection and operation choice.
* Output displayed on the onboard LEDs and Seven Segment Display.
* Basic error handling for invalid inputs.
* Compact design suitable for the DE10-Lite FPGA board.

### **Requirements**
* DE10-Lite FPGA board
* Intel Quartus software for synthesis and programming
* USB cable for programming the FPGA

### **Installation**
* Clone or download the repository to your local machine.
* Open the project in Intel Quartus software.
* Compile the Verilog code and generate the programming file.
* Program the DE10-Lite FPGA board using the generated programming file.

### **Usage**
* Power on the DE10-Lite FPGA board.
* Press the appropriate buttons to select operands and choose the desired operation.
* The LEDs and Seven Segment Display will display the result of the operation.
