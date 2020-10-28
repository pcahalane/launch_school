# 8) Using the each method, write code to output all the vowels from the 
# strings in the given hash:
# --------------------------------------------------------------------------- #

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
vowels = %w(a e i o u)

hsh.each do |order, strings_arr|
  strings_arr.each do |string|
    string.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end
