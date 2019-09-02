H,W = 2.times.map { gets.split.map(&:to_i) }.transpose

puts H[0] == H[1] || H[0] == W[1] || H[1] == W[0] || W[0] == W[1] ? 'YES' : 'NO'
