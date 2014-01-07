# ask user to enter as many words as they want
puts
puts 'Go crazy - enter as many words as you\'d like here.  Just make sure to hit enter after each one.'
puts 'When you\'re done just hit enter.'
puts

# declare an empty array to hold the words
words_list = []

while true
	word = gets.chomp
	words_list.push word
	if word == ''
		break
	end
end

puts
if words_list[0] == ''
	puts 'Whoops you didn\'t enter anything!'
	puts
else
	puts 'Here you are, all nicely sorted:'
	puts
	puts words_list.sort
	puts
end
