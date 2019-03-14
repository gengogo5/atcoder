N,T = gets.split.map(&:to_i)
ct = N.times.map { gets.split.map(&:to_i) }

min = 1001
N.times do |i|
  next if ct[i][1] > T
  min = ct[i][0] if min > ct[i][0]
end

if min == 1001
  puts 'TLE'
else
  puts min
end
