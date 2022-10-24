# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again.
# You may assume that the strings are of different lengths.

def short_long_short(string1, string2)
  result = nil
  short = nil
  long = nil

  if string1.length > string2.length
    long = string1
    short = string2
  else
    long = string2
    short = string1
  end

  result = short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# I really overcomplicated this! At least it works...