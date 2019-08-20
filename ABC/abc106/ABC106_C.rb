S = gets.chomp
K = gets.to_i

last1idx = -1
S.size.times do |i|
  break if S[i] !='1'
  last1idx = i
end

if K <= last1idx+1
  puts 1
else
  puts S[last1idx+1]
end
