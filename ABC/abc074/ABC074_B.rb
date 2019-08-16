N = gets.to_i
K = gets.to_i
X = gets.split.map(&:to_i)

puts X.map { |x| [x,(K-x).abs].min * 2 }.inject(:+)
