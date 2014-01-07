puts 'What\'s your favorite number?'
fav_number = gets.chomp.to_i
new_number = fav_number + 1
new_improved_fav = new_number.to_s
puts 'Nice! But guess what? ' + new_improved_fav + ' would be an even bigger and better favorite number - ' +
'you should consider that from now on.  I\'m just saying...'