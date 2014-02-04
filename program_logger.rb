# This program has a method called
# log that takes a string description
# of a block and a block.
# It puts a string telling you it 
# started the block and another
# string at the end telling you it
# finished and what the block returned

def log block_description, &block
  $nesting_depth = 1
  puts "Beginning #{block_description}..."
  result = block.call
  puts "...#{block_description} finished, returning:"
  puts result.to_s 
end

log '5 doublings' do
  number = 1
  5.times do
    number = number + number
  end

  log 'simple_math' do
    5*9
  end

  log 'more_math' do
    5*10
  end

  number
end