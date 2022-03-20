X,Y = gets.split.map(&:to_i)

x = X
cnt = 0
while (x < Y)
  x += 10
  cnt += 1
end

puts cnt