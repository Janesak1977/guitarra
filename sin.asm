;asumo que me pasan el valor en x0 y tambien lo devuelvo en x0 (x0 = sin(a) ). Se pierde el valor de B	
; recibe el valor/pi y devuelve valor/pi
sin			
			movec	y1,ssh
			
			move 	#0,a
			move	x0,a1	
			mpy	x0,x0,b
			MULFIXB
			move	y0,x1
			mpy	x0,x1,b
			MULFIXB
			move	#T1,y1	
			mac	-y1,y0,a
			mpy	x1,y0,b
			MULFIXB
			move	#T2,y1	
			mac	y0,y1,a
			mpy	y0,x1,b
			MULFIXB
			move	#T3,y1
			mac	-y0,y1,a
			MULFIX

			movec	ssh,y1
			rts 
