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

filename = 'C:/Users/Ki/Desktop/Learn2ProgramBook/ruby_playlist.m3u'
songs = Dir['E:/Music/Downloaded Music/Childish Gambino/Poindexter/*.mp3']
playlist = shuffle songs, []

File.open filename, 'w' do |f|
  playlist.each do |song|
    f.write "#{song}\n"  
  end
end