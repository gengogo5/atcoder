N = gets.to_i
A = gets.split.map(&:to_i).sort
p (A[0]-A[-1]).abs
