N = gets.chomp

t_n = 0
N.size.times do |i|
  break if N[i] != '0'
  t_n += 1
end

b_n = 0
rN = N.reverse
rN.size.times do |i|
  break if rN[i] != '0'
  b_n += 1
end

if b_n - t_n < 0
  puts 'No'
elsif b_n - t_n == 0
  if N == N.reverse
    puts 'Yes'
  else
    puts 'No'
  end
else
  nN = '0' * (b_n - t_n) + N
  if nN == nN.reverse
    puts 'Yes'
  else
    puts 'No'
  end
end