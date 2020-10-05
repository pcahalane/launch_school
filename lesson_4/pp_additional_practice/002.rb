# 2) Add up all the ages from the Munster family hash below:
# --------------------------------------------------------------------------- #

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_age = 0
ages.values.each do |num|
  total_age += num
end
