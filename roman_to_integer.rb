# This program takes a string and 
# turns it into a Roman numeral

puts 'Enter a Roman numeral, any Roman numeral:'
roman_numeral = gets.chomp.downcase
puts
puts 'Thank you. Your number is:'

combo_numerals = {'iv' => 4, 'ix' => 9, 'xl' => 40, 'xc' => 90, 'cd' => 400, 'cm' => 900}
numerals = {'i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000}

counter = 0

while roman_numeral[counter]
  if combo_numerals.has_key?(roman_numeral[counter, 2])
    roman_numeral.insert(counter + 2, '/')
    counter += 3
  else
    roman_numeral.insert(counter + 1, '/')
    counter += 2
  end
end

letters_array = roman_numeral.split '/'

letters_array.each_index do |index|
  if combo_numerals.has_key?(letters_array[index])
    letters_array[index] = combo_numerals[letters_array[index]]
  elsif numerals.has_key?(letters_array[index])
    letters_array[index] = numerals[letters_array[index]]
  end
end
total = 0
converted_number = letters_array.map {|number| total += number.to_i}

puts total







