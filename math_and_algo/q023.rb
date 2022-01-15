N = gets.to_i
B = gets.split.map(&:to_i)
R = gets.split.map(&:to_i)

ans = (B.sum.to_f / B.length) + (R.sum.to_f / R.length)
puts ans
