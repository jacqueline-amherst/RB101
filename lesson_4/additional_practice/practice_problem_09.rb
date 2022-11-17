# As we have seen previously we can use some built-in string methods to change the case of a string.
# A notably missing method is something provided in Rails, but not in Ruby itself... titleize.
# This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title.
# Write your own version of the rails titleize implementation.

def titleize(string)
  string.split.each{|word| word.capitalize!}.join(' ')
end

words = "here's a few words"

p titleize(words)

# In retrospect, map makes a lot more sense than each...
# If I intend to mutate the caller I should use a mutating method instead of an iterative one.
