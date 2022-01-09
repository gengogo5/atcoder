N = gets.to_i
A = gets.split.map(&:to_i)

h = Hash.new(0)
A.each do |i|
  h[i] += 1
end

ans = (h[1] * (h[1]-1))/2 + (h[2] * (h[2]-1))/2 + (h[3] * (h[3]-1))/2

puts ans
