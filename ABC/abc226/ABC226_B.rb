N = gets.to_i
L = N.times.map { gets.split.map(&:to_i) }

puts L.uniq.size