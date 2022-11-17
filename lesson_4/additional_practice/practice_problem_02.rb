# Add up all of the ages from the Munster family hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

youths = ages.select {|_, age| age <= 100}
youths.values.reduce(:+)

# I accidentally read the instructions for problems 2 & 3 as a single problem. Oops!
# Fortunately it was fun to come up with this solution.