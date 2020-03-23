N = gets.to_i
A = gets.split.map(&:to_i)

if A.uniq.length == A.length
  puts 'YES'
else
  puts 'NO'
end
