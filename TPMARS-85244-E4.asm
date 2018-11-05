.data
v: .word

.text
lw $t0,($gp)
lw $t1,4($gp)
lw $t2,8($gp)

E4:
	la $t2,($t1)
	li $t3,0
	li $t4,0
	
	ble $t1,$t0,loop
	sw $t0,8($gp)
	j menor
	
	menor:
		sw $t0,8($gp)
		j end
	
	loop:
		la $t4,($t2)
		add $t2,$t1,$t2
		sub $t3,$t0,$t2
		blez $t3,resto
		j loop
		
	resto:
		sub $t2,$t0,$t4
		sw $t2,8($gp)
		j end
	
	end: nop
			
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

					
