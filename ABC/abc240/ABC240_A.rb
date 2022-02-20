a,b = gets.split.map(&:to_i)

if (a - b).abs == 1 || (a == 10 && b == 1) || (b == 10 && a == 1)
  puts "Yes"
else
  puts "No"
end