N = gets.to_i
s = gets.chomp

rn = s.count('R')

if rn > s.length/2
  puts 'Yes'
else
  puts 'No'
end
