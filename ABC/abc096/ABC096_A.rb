a,b = gets.split.map(&:to_i)
t = a <= b ? a : a-1
puts t
