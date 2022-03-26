N,D = gets.split.map(&:to_i)
X,Y = N.times.map { gets.split.map(&:to_i) }.transpose

cnt = 0
N.times.map do |i|
  cnt += 1 if Math.sqrt(X[i] ** 2 + Y[i] ** 2) <= D
end

puts cnt