# Determine the total age of just the male members of the family

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0
munsters.values.each do |details|
  if details["gender"] == "male"
    total_age += details["age"]
  end
end

p total_age

# Not sure if there is a benefit to using .each_value over chaining .values.each...