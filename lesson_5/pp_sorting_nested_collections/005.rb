# 5) In the given hash, figure out the total age of just the male members.
# --------------------------------------------------------------------------- #

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

male_ages = 0

munsters.each do |name, hash|
  male_ages += hash["age"] if hash["gender"] == "male"
end
