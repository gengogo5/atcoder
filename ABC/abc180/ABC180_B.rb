N = gets.to_i
X = gets.split.map(&:to_i)

puts X.inject(0) { |sum, x| sum += x.abs }
puts Math.sqrt(X.inject(0) { |sum, x| sum += x ** 2})
puts X.map { |x| x.abs }.max