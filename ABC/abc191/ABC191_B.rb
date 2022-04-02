N,X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

A.delete(X)
puts A.join(" ")