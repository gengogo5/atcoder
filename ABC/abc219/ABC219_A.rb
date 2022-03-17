X = gets.to_i

if X < 40
  puts 40 - X
elsif X < 70
  puts 70 - X
elsif X < 90
  puts 90 - X
else
  puts 'expert'
end