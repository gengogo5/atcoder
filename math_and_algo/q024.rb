N = gets.to_i
P,Q = N.times.map { gets.split.map(&:to_i) }.transpose

sum = 0.0
N.times { |i| sum += Q[i].to_f / P[i] }

puts sum