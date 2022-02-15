a,b,c = gets.split.map(&:to_i)

if a < c ** b
  puts "Yes"
else
  puts "No"  
end