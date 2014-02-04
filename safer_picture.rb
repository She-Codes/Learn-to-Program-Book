#Adapt the picture-downloading/filerenaming
#program to my computer by adding some safety features
#to make sure I never overwrite a file.

Dir.chdir 'C:/Users/Ki/Dropbox/Photos/mefromfb'

#find all of the pictures to be moved
pic_names = Dir['C:/Users/Ki/Dropbox/Photos/fbcopies**/*.{JPG,jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

#This is our counter

pic_number = 1
pic_names.each do |name|
  print '.' #Progress bar
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end  

  if File.exist?(new_name)
    puts "#{new_name} already exists in this location"
    exit
  else
    File.rename name, new_name
  end
  pic_number = pic_number + 1
end

puts
puts 'Done, cutie!'
