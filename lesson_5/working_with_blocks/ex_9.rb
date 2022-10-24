[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

# LINE | ACTION                | OBJECT                                  | SIDE EFFECT    | RETURN VALUE            | RETURN USED?
#      |                       |                                         |                |                         |    
#    1 | method call: .map     | Multidimensional array                  | None           | 