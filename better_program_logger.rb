# This program has a method called
# log that takes a string description
# of a block and a block.
# It puts a string telling you it 
# started the block and another
# string at the end telling you it
# finished and what the block returned
# This program modifies the original by 
# using a global variable to track how 
# deeply nested the logger is so that 
# indentation can be added.  I am using 
# the book solution.

$logger_depth = 0
def log block_description, &block
  prefix = '  '*$logger_depth

  puts "#{prefix}Beginning #{block_description}..." # Put the first statement before you add indentation
  $logger_depth = $logger_depth + 1 # add indentation in case log is called again in the block
  result = block.call
  $logger_depth = $logger_depth - 1 # subtract the indentation
  puts "#{prefix}...#{block_description} finished, returning: #{result.to_s}"
end

log '5 doublings' do
  number = 1
  5.times do
    number = number + number
  end

  log 'simple_math' do
    log 'more_math' do
      5*10
    end
    5*9
  end

  number
end