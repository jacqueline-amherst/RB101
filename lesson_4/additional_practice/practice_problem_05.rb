# Find the index of the frist name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  if name.chars.take(2).join == 'Be'
    index
  end
end

# I forgot that Array#index can take a block!