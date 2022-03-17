A,B = gets.split.map(&:to_i)

if 0 < A && B == 0
  puts 'Gold'
elsif A == 0 && 0 < B
  puts 'Silver'
else
  puts 'Alloy'
end
