N,K,A = gets.split.map(&:to_i)

ans = (A + K - 1) % N

puts ans == 0 ? N : ans
