puts 'How many bottles of beer on the wall?:'
number = gets.chomp.to_i

def english_number number
	if number < 0  #  No negative numbers.
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end


	num_string = ''  #  This is the string we will return.


	ones_place = ['one',				'two',				'three',
								'four',				'five',				'six',
								'seven',			'eight',			'nine']

	tens_place = ['ten',				'twenty',			'thirty',
								'forty',			'fifty',			'sixty',
								'seventy',		'eighty',			'ninety']

	teenagers  = ['eleven',			'twelve',			'thirteen',
								'fourteen',		'fifteen',		'sixteen',
								'seventeen',	'eighteen',		'nineteen']


	#  "left" is how much of the number
	#   we still have left to write out.

	#  "write" is the part we are writing
	#   out right now.
	left  = number
	write = left/1000000					#  How many millions are there?
	left = left - write*1000000  #  Subtract off those thousands.

	if write > 0
		#  Now here's the recursion:
		millions  = english_number write
		num_string = num_string + millions + ' million'

		if left > 0
			#  So we don't write 'two hundredfifty-one'...
			num_string = num_string + ' '		
		end
	end

	write = left/1000					#  How many thousands are there?
	left = left - write*1000  #  Subtract off those thousands.

	if write > 0
		#  Now here's the recursion:
		thousands  = english_number write
		num_string = num_string + thousands + ' thousand'

		if left > 0
			#  So we don't write 'two hundredfifty-one'...
			num_string = num_string + ' '		
		end
	end

	write = left/100				  #  How many hundreds are there?
	left  = left - write*100  #  Subtract off those hundreds.

	if write > 0
		#  Now here's the recursion:
		hundreds  = english_number write
		num_string = num_string + hundreds + ' hundred'

		if left > 0
			#  So we don't write 'two hundredfifty-one'...
			num_string = num_string + ' '		
		end
	end

	write = left/10				 #  How many tens are there?
	left  = left - write*10  #  Subtract off those tens.

	if write > 0
		if ((write == 1) and (left > 0))
			#  Since we can't write "tenty-two" instead of 
			#  "twelve", we have to make a special exception
			#  for these.
			num_string = num_string + teenagers[left-1]
			#  The "-1" is because teenagers[3] is
			#  'fourteen', not 'thirteen'.
			#  Since we took care of the digit in the 
			#  ones place already, we have nothing left to write.
			left = 0
		else
			num_string = num_string + tens_place[write-1]
			#  The "-1" is because tens_place[3] is
			#  'forty', not 'thirty'.
		end

		if left > 0
			# So we don't write 'sixtyfour'
			num_string = num_string + '-'
		end
	end

	write = left  #  How many ones are left?
	left  = 0			#  Subtract off those ones.

	if write > 0
		num_string = num_string + ones_place[write-1]
		#  The "-1" is because ones_place[3] is
		#  'four', not 'three'.
	end

	#  Now we just return "num_string"...
	num_string
end

bottles_string = english_number number

def bottles_of_beer bottles, bottles_string
	bottles_string = bottles_string.capitalize + ' bottles'

	while bottles != 0
		puts bottles_string + ' of beer on the wall, ' + bottles_string.downcase + ' of beer!'
		bottles = bottles - 1
		bottles_string = english_number bottles 
		bottles_string = bottles_string.capitalize + ' bottles'
		if bottles == 1
			bottles_string = bottles_string + ' bottle'
		end
		puts 'Take one down and pass it around, ' + bottles_string.downcase + ' of beer on the wall.'
		puts
	end

end

bottles_of_beer number, bottles_string