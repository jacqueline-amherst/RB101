# q1
# a & c will have the same object ID because they both point to the same object.
# b will have its own, separate object ID because, while the value is the same, it is a different, unique object.

# q2
# All three will have the same object ID this time because integers have their own IDs.

# q3
# I feel like I'm missing something, but I expect this:
#   my_string = "pumpkinsrutabaga" because there is no space
#   my_array = ["pumpkins", "rutabaga"]
# Testing this in irb I've found that actually my_string = "pumpkins" still
#   I had intuitively thought this at first, but thought differently when recalling that += destructively modified hashes in an earlier exercise...
# !!!

# q4
# Ok so now I'm realizing that the assignment operator is going to re-assign the variable...

# q6
# The if, true, and false are all redundant. Just haveing the `or` statement is enough to return true or false

def color_valid(color)
  color == 'blue' || color == 'green'
end

