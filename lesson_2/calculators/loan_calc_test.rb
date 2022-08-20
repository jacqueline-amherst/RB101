def simplify_amount(amount)
  amount.each_char do |char|
    unless char.to_i != 0 || char == '0' || char == "."
      amount.delete!(char)
    end
  end
end

apr = "22.26%"
apr = simplify_amount(apr).to_f

puts apr