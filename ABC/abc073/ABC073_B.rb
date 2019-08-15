N = gets.to_i
l,r = N.times.map { gets.split.map(&:to_i) }.transpose
puts N.times.map { |i| (l[i]..r[i]).size }.inject(:+)

