N = gets.to_i
A,B = N.times.map { gets.split.map(&:to_i) }.transpose

sum = 0
N.times do |i|
  sum += (B[i] + A[i]) * (B[i] - A[i] + 1) / 2
end

puts sum