#Ask for a starting year
#Ask for an ending year
#Put years that are divisible by 100 and 400, and are divisible by 4
puts 'Enter a start year for a list of leap years.'
start_year = gets.chomp.to_i
current_year = start_year
puts 'Now enter an ending year please.'
end_year = gets.chomp.to_i

while current_year <= end_year
	while true
		if current_year % 4 == 0 && current_year % 100 != 0 # years divisible by 4 and not by 100 are automatically leap years
			puts current_year.to_s + ' is a leap year.'
			current_year = current_year + 1
			break
		end

		if current_year % 4 != 0 # years not divisible by 4 are not leap years
			current_year = current_year + 1
			break
		end 

		if current_year % 4 == 0 && current_year % 100 == 0 # if a year is divisible by 4 and 100 check to see if it's divisible by 400
			if current_year % 400 == 0 
				puts current_year.to_s + ' is a leap year.'
				current_year = current_year + 1
				break
			else 
				current_year = current_year + 1
				break
			end
		end
	end	
end