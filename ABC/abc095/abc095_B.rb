N, X = gets.split.map(&:to_i)
M = N.times.map { gets.to_i }

min = 1000
sum = 0
M.each do |m|
 sum += m
 min = m if min > m
end

puts N+((X-sum)/min)

