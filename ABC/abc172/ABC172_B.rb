S = gets.chomp
T = gets.chomp
puts S.length.times.map { |i| S[i] != T[i] ? 1 : 0 }.sum