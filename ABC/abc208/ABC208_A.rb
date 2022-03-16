A,B = gets.split.map(&:to_i)

if 1 * A <= B && B <= 6 * A
  puts 'Yes'
else
  puts 'No'
end
