# 10) Modify the given Munsters hash below such that each member of the
# Munster family has an additional "age_group" key that has one of the three
# values describing the age group the family member is in (kid, adult, or
# senior).
# --------------------------------------------------------------------------- #

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, values|
  case values["age"]
  when 0..18
    values["age_group"] = "kid"
  when 18..55
    values["age_group"] = "adult"
  else
    values["age_group"] = "senior"
  end
end

p munsters

# --------------------------------------------------------------------------- #
# SOLUTION SHOULD PRODUCE THE FOLLOWING HASH:
# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
