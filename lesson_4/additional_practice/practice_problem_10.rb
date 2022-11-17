# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in
# (kid, adult, or senior).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_value do |value|
  case value["age"]
  when (0..17)
    value["age_group"] = "kid"
  when (18..64)
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end
end

p munsters.values

# Hadn't looked at the given solution, but still used case statement and ranges! Pleased with myself.