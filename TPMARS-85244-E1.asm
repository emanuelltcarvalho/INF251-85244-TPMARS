.data
v: .word

.text
lw $t0,($gp)
lw $t1,4($gp)
lw $t2,8($gp)

E1:

	ble $t0,$t1,c1
	ble $t0,$t2,c4
	ble $t1,$t2,c5
	la $s0,($t2)
	la $s1,($t1)
	la $s2,($t0)
	sw $s0,0($gp)
	sw $s1,4($gp)
	sw $s2,8($gp)
	j end
	
	c5:
		la $s0,($t1)
		la $s1,($t2)
		la $s2,($t0)
		sw $s0,0($gp)
		sw $s1,4($gp)
		sw $s2,8($gp)
		j end
	c4:
		la $s0,($t1)
		la $s1,($t0)
		la $s2,($t2)
		sw $s0,0($gp)
		sw $s1,4($gp)
		sw $s2,8($gp)
		j end

	c1: 
		ble $t0,$t2,c2
		la $s0,($t0)
		la $s1,($t2)
		la $s2,($t1)
		sw $s0,0($gp)
		sw $s1,4($gp)
		sw $s2,8($gp)
		j end
	c2: 
		ble $t1,$t2,c3
		la $s0,($t0)
		la $s1,($t2)
		la $s2,($t1)
		sw $s0,0($gp)
		sw $s1,4($gp)
		sw $s2,8($gp)
		j end
			
	c3: 
		la $s0,($t0)
		la $s1,($t1)
		la $s2,($t2)
		sw $s0,0($gp)
		sw $s1,4($gp)
		sw $s2,8($gp)
		j end

end: nop