c = 3.times.map { gets.split.map(&:to_i) }

a = Array.new(3)
b = Array.new(3)
isOut = false

a[0] = 0
(0...3).each do |i|
  b[i] = c[0][i] - a[0]
end

a[1] = c[1][0]-b[0]
(0...3).each do |j|
  isOut = true if c[1][j] != a[1]+b[j]
end

a[2] = c[2][0]-b[0]
(0...3).each do |k|
  isOut = true if c[2][k] != a[2]+b[k]
end

if isOut
  puts 'No'
else
  puts 'Yes'
end

