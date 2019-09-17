N = gets.to_i
a,b = gets.split.map(&:to_i)
K = gets.to_i
P = gets.split.map(&:to_i)

if [P,a,b].flatten.uniq.size == P.size + 2
  puts 'YES'
else
  puts 'NO'
end
