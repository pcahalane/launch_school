# 10) BANNERIZER:
# Write a method that will take a short line of text & print it within a box
# --------------------------------------------------------------------------- #
# Initial Solution:

def print_in_box(text)
  inner_width = text.length + 2
  box_edge = '+' + '-' * inner_width + '+'
  box_buffer = '|' + ' ' * inner_width + '|'
  
  p box_edge
  p box_buffer
  p '| ' + text + ' |'
  p box_buffer
  p box_edge
end

# --------------------------------------------------------------------------- #
# If wishing to truncate a message too long to fit within 80-columns:

def print_truncated(text)
  text = text[0, 76]
  inner_width = text.length + 2
  box_edge = '+' + '-' * inner_width + '+'
  box_buffer = '|' + ' ' * inner_width + '|'
  
  p box_edge
  p box_buffer
  p '| ' + text + ' |'
  p box_buffer
  p box_edge
end

# --------------------------------------------------------------------------- #
# If wishing to wrap a message too long to fit within 80-columns:

def print_wrapped(text)
  lower_index = 0
  current_line = 0
  line_counter = (text.length / 75) + 1
  text.length > 76 ? (inner_width = 76 + 2) : (inner_width = text.length + 2)
  
  box_edge = '+' + '-' * inner_width + '+'
  box_buffer = '|' + ' ' * inner_width + '|'
  
  p box_edge
  p box_buffer
  
  while current_line < line_counter
    line = text[lower_index, 76].lstrip
    pad_width = inner_width - line.length - 2
    line << ' ' * pad_width
    p "| #{line} |"
    current_line += 1
    lower_index = lower_index + 76
  end
  
  p box_buffer
  p box_edge
  
end

# --------------------------------------------------------------------------- #
# EXAMPLES:

print_in_box('To boldly go where no one has gone before.')
# =>
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# =>
# +--+
# |  |
# |  |
# |  |
# +--+

print_truncated('This string will be way longer than what can fit in that box '\
             'to print, ohhhh boy let\'s see what might happen next!  Will '\
             'this message get truncated, or will it go onto the next line?  '\
             'That all depends on which of the methods we use!')

print_wrapped('This string will be way longer than what can fit in that box '\
             'to print, ohhhh boy let\'s see what might happen next!  Will '\
             'this message get truncated, or will it go onto the next line?  '\
             'That all depends on which of the methods we use!')
