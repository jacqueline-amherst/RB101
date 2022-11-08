# Question 4:
# See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("Dino")

# Again, I'm not sure what benefit using String#match here has over using String#include. 
# It appears that both have the drawback of matching to substrings.