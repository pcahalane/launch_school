# 16) A UUID is a type of identifier often used as a way to uniquely identify
# items, which may not all be created by the same system.  Without any form
# of synchronization, two or more separate computer systems can create new
# items and label them with a UUID with no significant chance of stepping on
# each other's toes which is accomplished through massive randomization.  The
# number of possible UUID values is approximately 3.4 X 10E38.  Each UUID
# consists of 32 hexadecimal characters, and is typically broken into 5
# sections like this: 8-4-4-4-12 and is represented as a string:
# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
# Write a method that returns one UUID when called with no parameters.
# --------------------------------------------------------------------------- #

def generate_uuid
  hexadec_chars = [(0..9).to_a, ('a'..'z').to_a].flatten
  uuid = ''
  sections = [8, 4, 4, 4, 12]
  
  sections.each_with_index do |num, index|
    num.times do
      uuid << hexadec_chars.sample.to_s
    end
    uuid << '-'
  end
  uuid.chop
end

p generate_uuid
