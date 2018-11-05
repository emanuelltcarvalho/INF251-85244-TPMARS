.data
v: .word

.text
li $t0,0
li $t1,1
li $t2,1

E5:
	loop:
		beqz $t1,end
		lw $t1,0($gp)
		lw $t2,20($gp)
		add $t0,$t1,$t2
		addi $gp,$gp,4
		sw $t0,48($gp)
		j loop
	
	end:	nop
			
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

					
