def simplify_amount(amount)
  amount.each_char do |char|
    unless char.to_i != 0 || char == '0' || char == "."
      amount.delete!(char)
    end
  end
end

def monthly_rate(rate)
  (rate.to_f / 100) / 12
end

puts 'Welcome to the mortgage calculator.'

puts 'Please enter the total loan amount:'
print "$"
amount = gets.chomp

puts 'Please enter the loan term:'
puts 'Number of years:'
years = gets.chomp.to_i
puts 'Number of months:'
months = gets.chomp.to_i

term = (years * 12) + months

puts 'Please enter the APR:'
apr = gets.chomp

apr = simplify_amount(apr).to_f
rate = monthly_rate(apr)

amount = simplify_amount(amount).to_f

monthly_payment = (amount * (rate / (1 - (1 + rate)**(-term)))).round(2)

puts "Your monthly payment is #{monthly_payment}."
