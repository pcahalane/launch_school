# 7) Create a hash that expresses the frequency with which each letter occurs
# in this string:
# (ex: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... })
# --------------------------------------------------------------------------- #

statement = "The Flintstones Rock"
frequency = Hash.new

statement.gsub(/\s/, '').downcase.chars.each do |char|
  frequency[char] = statement.downcase.count(char)
end
