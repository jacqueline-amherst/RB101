[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

# LINE | ACTION                | OBJECT                                  | SIDE EFFECT    | RETURN VALUE            | RETURN USED?
#      |                       |                                         |                |                         |    
#    1 | Method call: .select  | Original array                          | None           | New array               | No
#  1-5 | Outer block execution | Each sub-hash                           | None           | New array               | Yes, by .select to make selection
#    2 | Method call: .all     | Element of sub-hash for given iteration | None           | Boolean                 | Yes, to determine outer block's return value
#  2-4 | Inner block execution | Element of sub-hash for given iteration | None           | Boolean                 | Yes, by .all?
#    3 | Comparison            | Element of sub-hash for given iteration | None           | Boolean                 | Yes, to determine inner block's return value 
