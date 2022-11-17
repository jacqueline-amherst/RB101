# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# shift is a destructive method which deletes and returns the first element of a collection -- in a hash it deletes and returns the first key/value pair.
# So this code returns: => [a: 'ant']
# And after this operation, hash = {b: 'bear'}