N = gets.to_i

b2 = 2
b1 = 1
l = 1
(2..N).each do |i|
  l = b1 + b2
  b2 = b1
  b1 = l
end
puts l
