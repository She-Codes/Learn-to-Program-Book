bye_response = 'WHAT\'S THAT YOU SAY?'
puts 'HOW\'S GRAMA\'S BABY?'
while true
	input = gets.chomp
	if input == 'BYE'
		puts bye_response
		input = gets.chomp
		if input == 'BYE'
			puts bye_response
			input = gets.chomp
			if input == 'BYE'
				puts 'BYE SONNY!'
				break
			end
		end
	end

	if input == input.upcase
		year = 1930 + rand(21)
		yearString = year.to_s
		puts 'NO, NOT SINCE ' + yearString + '!'
	else
		puts 'HUH?!  SPEAK UP, SONNY!'
	end

end

