N,X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

if X >= A.sum - (N/2)
  puts 'Yes'
else
  puts 'No'
end
