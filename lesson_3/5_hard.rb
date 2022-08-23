# q1
# I expect this to have an error, because `greeting` is not initialized anywhere.
# !! Surprise! Because it is initialized within outer scope, it evaluates to nil.

# q2
# I expect this one will be "Hi there" because informal_greeting is pushing "there" to a specific key

# q3
#   A) one, two, three
#     Nothing is destructively re-assigned.
#   B) one, two, three
#     Same as above, the re-assignment is not destructive.
#   C) two, three, one
#     Because .gsub is a destructive method this will mutate the callers.

# q4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
    if dot_separated words.size != 4
      return false
    end
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  true
end