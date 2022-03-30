H,W = gets.split.map(&:to_i)
A = H.times.map { gets.split.map(&:to_i) }

min_n = A.map(&:min).min
ans = A.map { |line| line.inject(0) { |sum,n| sum += n - min_n } }.sum

puts ans