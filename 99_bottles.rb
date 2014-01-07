bottles = 99
bottles_string = bottles.to_s + ' bottles'

while bottles != 0
	puts bottles_string + ' of beer on the wall, ' + bottles_string + ' of beer!'
	bottles = bottles - 1
	if bottles == 1
		bottles_string = bottles.to_s + ' bottle'
	else
		bottles_string = bottles.to_s + ' bottles'	
	end
	puts 'Take one down and pass it around, ' + bottles_string + ' of beer on the wall.'
end
