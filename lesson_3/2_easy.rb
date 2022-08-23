# q1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?("Spot")
ages.has_key?("Spot")
ages["Spot"]

# q2
munsters_description = "The Munsters are creepy in a good way."

munsters_description.upcase.sub('T', 't').sub('M', 'm') # .swapcase is much cleaner!
munsters_description.capitalize
munsters_description.downcase
munsters_description.upcase

# q3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

# q4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino") # Didn't know about .match

# q5
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# q6
flintstones.push('Dino')

# q7
flintstones.concat(['Dino', 'Hoppy'])

# q8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index("house")) # My original answer was just the part of the string I wanted to return

# q9
statement = "The Flintstones Rock!"
statement.count('t')

# q10

title = "Flintstone Family Members"
title.center(40)