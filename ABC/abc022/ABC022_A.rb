N,S,T = gets.split.map(&:to_i)
w = gets.to_i
d = 0
d +=1 if w >= S && w <= T
(N-1).times do
  w += gets.to_i
  d +=1 if w >= S && w <= T
end
puts d

