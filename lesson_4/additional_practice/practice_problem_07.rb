# Create a hash that expresses the frequency with which each letter occurs in this string.

ALPHABET = ('A'..'z').to_a

statement = "The Flintstones Rock"

freq_hash = ALPHABET.each_with_object({}) do |letter, hash|
  frequency = statement.count(letter)
  hash[letter] = frequency if statement.include?(letter)
end

p freq_hash

# After failing several times to satisfactorily solve this problem I peeked at the given solution and then came up with this answer.
