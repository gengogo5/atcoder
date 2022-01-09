N = gets.to_i
A = gets.split.map(&:to_i)

h = Hash.new(0)
A.each do |a|
  h[a] += 1
end

ans = (h[100] * h[400]) + (h[200] * h[300])

puts ans
