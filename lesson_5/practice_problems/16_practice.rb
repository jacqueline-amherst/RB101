# A UUID is a type of identifier often used as a way to uniquely identify items... 
# which may not all be created by the same system.
# That is, without any form of synchronization, two or more separate computer systems
# can create new items and label them with a UUID with no significant chance of stepping on each other's toes.

# It accomplishes this feat through massive randomization.
# The number of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string
# 
#--------------------Algorithm----------------------------------
#
#
# - Define constant, HEXADECIMALS, set to (0-9, A-F) as an array
#
# --------method: random_hex------------
# 
# - input (arguments): integer representing how many random hex numbers should be generated
# - output: a string containing random hex chars of the length specified in argument
#     - i.e. random_hex(4) => '17FA' or something
# 
# - initialize empty string var, hex_chars
# - do this argument number of times:
#   - choose an integer between 0..15
#   - add the character at the index number of that integer in HEXADECIMALS to hex_chars
# - return hex_chars
#
# ----------------------------------------
#
# ----------method: random_uuid--------------
#
# - input: none
# - output: a string containing a random UUID number
# 
# - "#{random_hex(8)}-#{random_hex(4)}-#{random_hex(4)}-#{random_hex(4)}-#{random_hex(12)}"
# 
#
#--------------------Code With Intent----------------------------

HEXADECIMALS = %w(1 2 3 4 5 6 7 8 9 0 A B C D E F)

def random_hex(integer)
  hex_chars = ''

  integer.times do |num|
    index = rand(0..15)
    hex_chars << HEXADECIMALS[index]
  end

  hex_chars
end

def random_uuid
  "#{random_hex(8)}-#{random_hex(4)}-#{random_hex(4)}-#{random_hex(4)}-#{random_hex(12)}"
end

p random_uuid
p random_uuid
p random_uuid
p random_uuid

# Array#sample was the method I forgot about! I knew there was a way to do this.
# Honestly though I find my solution more readable than the given solution.