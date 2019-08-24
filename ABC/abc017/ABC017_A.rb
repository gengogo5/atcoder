s,e = 3.times.map { gets.split.map(&:to_i) }.transpose
puts 3.times.map {|i| s[i] * 0.1 * e[i] }.inject(:+).to_i
