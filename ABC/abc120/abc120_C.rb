S = gets.chomp
N = S.length

abs = (S.count('0') - S.count('1')).abs

puts puts N-abs
