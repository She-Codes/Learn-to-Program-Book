def old_roman_numeral num 
	roman = ''
	m_counter = (num          / 1000) #find out how many 1000's there are
	d_counter = (num % 1000   /  500) #What's left after you divide by 1000? How many 500's go into that?
	c_counter = (num %  500   /  100)
	l_counter = (num %  100   /   50)
	x_counter = (num %   50   /   10)
	v_counter = (num %   10   /    5)
	i_counter = (num %    5   /    1)
	
	roman = roman + 'M' *  m_counter #multiply M by the number of 1000's
	
	#check to see whether the number is 900 or 400
	if (c_counter == 4 && d_counter == 1) #900
		roman = roman + 'CM'
	elsif (c_counter == 4 && d_counter == 0) #400
		roman = roman + 'CD'
	else
	roman = roman + 'D' * d_counter 
	roman = roman + 'C' * c_counter
	end
	
	#check to see whether the number is 90 or 40
	if (x_counter == 4 && l_counter == 1) #90
		roman = roman + 'XC'
	elsif (x_counter == 4 && l_counter == 0) #40
		roman = roman + 'XL'
	else
	roman = roman + 'L' * l_counter
	roman = roman + 'X' * x_counter
	end
	
	#check to see whether the number is 9 or 4
	if (i_counter == 4 && v_counter == 1) #9
		roman = roman + 'IX'
	elsif (i_counter == 4 && v_counter == 0) #4
		roman = roman + 'IV'
	else
		roman = roman + 'V' * v_counter
		roman = roman + 'I' * i_counter 
	end	
	
	roman
end

puts(old_roman_numeral 499)

