# ask user to enter as many words as they want
puts
puts 'Go crazy - enter as many words as you\'d like here.  Just make sure to hit enter after each one.'
puts 'When you\'re done just hit enter.'
puts

# declare an empty array to hold the words
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

def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array 
	
	still_unsorted_array = []

	sorted_array.push unsorted_array.pop  # take one word from unsorted_array and move it to sorted_array

	# compare the last item in the unsorted list with the last item in the sorted list
	while unsorted_array.length != 0 
		if unsorted_array.last.downcase > sorted_array.last.downcase  
			still_unsorted_array.push unsorted_array.pop  
		elsif unsorted_array.last.downcase < sorted_array.last.downcase
			still_unsorted_array.push sorted_array.pop 
			sorted_array.push unsorted_array.pop  
		else 
			sorted_array.push unsorted_array.pop  # if the words are equal just put it at the end of the sorted_array
		end
	end
	
	if unsorted_array.length == 0
		if still_unsorted_array.length != 0
			recursive_sort still_unsorted_array, sorted_array
		else 
			return sorted_array
		end
	end

end

puts sort list_of_words
