N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

p (N - A.sum) >= 0 ? (N - A.sum) : -1
