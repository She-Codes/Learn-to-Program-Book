# Ask what year a person was born in, then the
# month, and then the day. Figure out how old they are, and give
# them a big SPANK! for each birthday they have had.

puts 'Hi!'
puts 'Please answer in numbers.'
puts
puts 'What year were you born?'
year = gets.chomp
puts 'What month were you born?'
month = gets.chomp
puts 'And what day were you born?'
day = gets.chomp

birth_date = Time.local(year, month, day)

def birthday_calculator date
  age = Time.now - date  
  age = ((age / 60) / 60) / 8765.81
  age.to_i
end

age = birthday_calculator(birth_date)
puts
puts "You deserve to be spanked #{age} times!"

age.times do
  puts 'SPANK!'
end
