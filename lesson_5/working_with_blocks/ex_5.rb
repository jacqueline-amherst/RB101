[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# LINE | ACTION                | OBJECT                         | SIDE EFFECT             | RETURN VALUE            | RETURN USED?
#      |                       |                                |                         |                         |                         
#    1 | Method call: map      | Original array                 | None                    | New transformed array   | No                      
#  1-5 | Outer block execution | Each sub-array                 | None                    | New transformed array   | Yes, for top-level .map for transformation 
#    2 | Method call: map      | Each sub-array                 | None                    | New transformed array   | Yes, to determine outer block's return value          
#  2-4 | Inner block execution | Element within each sub-array  | None                    | An integer              | Yes, for inner .map for transformation
#    3 | Expression            | Element within each sub-array  | None                    | An integer              | Yes, to determin inner block's return value