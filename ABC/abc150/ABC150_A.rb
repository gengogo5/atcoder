K,X = gets.split.map(&:to_i)

if K * 500 >= X
  puts "Yes"
else
  puts "No"
end
