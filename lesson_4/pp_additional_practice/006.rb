# 6) Amend this array so that the names are all shortened to just the first
# three characters:
# --------------------------------------------------------------------------- #

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
  name.replace name.to_s[0, 3]
end

# flintstones.map! { |name| name[0,3] }
