# This program uses a method
# that takes a block and calls
# it once for each hour that has
# passed today.

def grandfather_clock &block
  current_hour = Time.new.hour
  if current_hour == 0
    12.times do
      block.call
    end
  elsif current_hour < 13
    current_hour.times do
      block.call
    end
  else
    (current_hour - 12).times do
      block.call
    end  
  end
end

grandfather_clock do
  puts "Nikia is an awesome developer! She's doing it!"
end