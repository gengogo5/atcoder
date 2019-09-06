N = gets.to_i
A = gets.split.map(&:to_i) - [0]
p (A.inject(:+)./A.length.to_f).ceil
