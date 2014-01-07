contents = ['Chapter 1:  Getting Started', 'page  1', 'Chapter 2:  Numbers', 'page  9', 'Chapter 3:  Letters', 'page 13' ]
line_width = 60
half_line_width = line_width / 2
puts 'Table of Contents'.center(line_width)
puts contents[0].ljust(half_line_width) + contents[1].rjust(half_line_width)
puts contents[2].ljust(half_line_width)         + contents[3].rjust(half_line_width)
puts contents[4].ljust(half_line_width)         + contents[5].rjust(half_line_width)

