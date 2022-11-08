# Question 7:
# In the previous practice problem we added Dino to our array usin `<<`
# We could have used either Array#concat or Array#push to add Dino to the family.
# How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Answer:

flintstones.concat(["Dino"], ["Hoppy"])

# I don't know why I didn't consider that I could use `%w()` again with this...