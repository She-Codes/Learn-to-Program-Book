#ask user to enter as many words as they want
puts
puts 'Go crazy - enter as many words as you\'d like here.  Just make sure to hit enter after each one.'
puts 'When you\'re done just hit enter.'
puts

#declare an empty array to hold the words
list_of_words = []

while true
	word = gets.chomp
	list_of_words.push word
	if word == ''
		list_of_words.pop
		break
	end
end

puts 'Here you are, all nicely sorted:'

puts

puts list_of_words.sort
puts
puts
puts 'And here\'s the same list all shuffled up:'

def shuffle unshuffled_array, shuffled_array

		unshuffled_array.each do |word|
			random_array_index = rand(unshuffled_array.length)
			if shuffled_array[random_array_index] == nil
				shuffled_array[random_array_index] = word
			elsif shuffled_array[random_array_index] != nil
				while true
					random_array_index = rand(unshuffled_array.length)
					if shuffled_array[random_array_index] == nil
						shuffled_array[random_array_index] = word
						break
					end	
				end
			end
		end
	
	return shuffled_array
	
end

puts shuffle list_of_words, []