# 1) Turn the given array below into a hash where the names are the keys and
# the values are the positions in the array:
# --------------------------------------------------------------------------- #

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flint_hash = {}

flintstones.each_with_index do |name, idx|
  flint_hash[name] = idx
end
