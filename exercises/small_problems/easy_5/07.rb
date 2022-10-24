# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. 
# For instance, the length of "it's" is 3, not 4.

ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

def word_sizes(string)
  non_alpha = string.downcase.gsub(/[^a-z]/, '')
  non_alpha
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') #== {}

# Did not finish, looked at the given solution due to confusion. Trying to use RegExp and it wasn't working.