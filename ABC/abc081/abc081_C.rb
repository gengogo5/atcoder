N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

bunpu_hash = A.group_by { |i| i }
bunpu_array = bunpu_hash.map { |k,v| v.size }
bunpu_array.sort!

puts N - bunpu_array.reverse[0...K].inject(:+)
