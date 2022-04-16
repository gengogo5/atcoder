N = gets.to_i
S = N.times.map { gets.chomp }

if S.size == S.uniq.size
  puts 'No'
else
  puts 'Yes'
end