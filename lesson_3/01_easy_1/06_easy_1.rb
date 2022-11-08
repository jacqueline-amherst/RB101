# Question 6:
# Starting with the string

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and" in front of it.

# Answer:

famous_words.prepend("Four score and ")

famous_words = "Four score and " + famous_words

famous_words = "Four score and " << famous_words

puts famous_words

# Great! Same as given solution. I tried three to see if they all worked how I expected.