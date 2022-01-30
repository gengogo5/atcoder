N = gets.to_i

if N < 2147483648 && N >= -2147483648
  puts 'Yes'
else
  puts 'No'
end
