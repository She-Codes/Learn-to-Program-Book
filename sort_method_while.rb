#ask user to enter as many words as they want
puts
puts 'Go crazy - enter as many words as you\'d like here.  Just make sure to hit enter after each one.'
puts 'When you\'re done just hit enter.'
puts

#declare an empty array to hold the words
list_of_words = []

while true
	word = gets.chomp.downcase
	list_of_words.push word
	if word == ''
		list_of_words.pop
		break
	end
end

puts 'Here you are, all nicely sorted:'
puts


def sort unsorted_array, sorted_array 
	
	still_unsorted_array = []

	
	#compare the last item in the unsorted list with the item in the sorted list
	
	while true
		sorted_array.push unsorted_array.pop #take one word from unsorted_array and move it to sorted_array
		while unsorted_array.length != 0
			if unsorted_array.last > sorted_array.last
				still_unsorted_array.push unsorted_array.pop #if the last item is bigger put it in still unsorted
			elsif unsorted_array.last < sorted_array.last
				still_unsorted_array.push sorted_array.pop #if the last word is bigger then take the word from sorted and put it in still unsorted
				sorted_array.push unsorted_array.pop #then take the last word and put that into sorted
			else 
				sorted_array.push unsorted_array.pop
			end
		end 

		if still_unsorted_array.length == 0
			return sorted_array
		end
	
		if unsorted_array.length == 0
			while still_unsorted_array.length != 0
				unsorted_array.push still_unsorted_array.pop
			end
		end
		
	end
end

puts sort list_of_words, []
