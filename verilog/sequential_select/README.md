This toy circuit sequentially selects the output 
of an 8:1 MUX, starting from the 5th input of the
MUX to the 0th input. A 3 bit counter keeps track
of this, counting from 3'b000 to 3'b101. 

The startup sequence is the "start" signal needs
to be enabled high, and the "master_rst" needs to
be toggled.


