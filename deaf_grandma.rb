input = gets.chomp
while input != 'BYE'
	if input == input.upcase
		year = 1930 + rand(21)
		year_string = year.to_s
		puts 'NO, NOT SINCE ' + year_string + '!'
	else
		puts 'HUH?!  SPEAK UP, SONNY!'
	end
	input = gets.chomp
end

