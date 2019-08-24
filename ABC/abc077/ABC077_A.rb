s1 = gets.chomp
s2 = gets.chomp
if s1 == s2.chars.reverse.join
  puts 'YES'
else
  puts 'NO'
end
