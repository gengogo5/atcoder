a,b,c = gets.split.map(&:to_i)

if [a,b,c].sort![1] == b
  puts 'Yes'
else
  puts 'No'
end