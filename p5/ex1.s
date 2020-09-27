#include <iregdef.h>
.set noreorder
.text
.globl start
.ent start




start: jal wait # Wait for button click
nop
jal wait2
nop
lui s0, 0xbf90 #Load switch port address
lb s1, 0x0(s0) #read first number from switches
nop
jal wait #Wait for button click
nop
jal wait2
nop
lb s2, 0x0(s0) #Read second number from switches
nop
addu s3, s1, s2 #Perform an arithmetic operation
sb s3, 0x0(s0) #Wirte the result to LEDs
b start #Repeat all over again
nop
###Add code for wait subroutine here! ###


wait: 	

lui s5,0xbfa0
		lw s4, 0(s5)
		andi s4, s4, 0x00000001
		beq s4, r0, wait
		nop
		jr ra
		nop
		
wait2:	

lui s5,0xbfa0
		and s4,r0,s4
		lw s4, 0(s5)
		andi s4,s4, 0x00000001	
		bne s4, r0, wait2
		nop
		jr ra
		nop
		
		
		


.end start