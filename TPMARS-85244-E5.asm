.data
v: .word

.text
li $t0,0
li $t1,1

E5:
	loop:
		beqz $t1,end
		lw $t1,0($gp)
		add $t0,$t0,$t1
		addi $gp,$gp,4
		j loop
	
	end:
		la $s0,($t0)
		nop
			
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

					
