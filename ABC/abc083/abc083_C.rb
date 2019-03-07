X,Y = gets.split.map(&:to_i)

cnt = 1
x = X
isOver = false
loop do
  x *= 2
  break if x > Y
  cnt += 1
end

puts cnt
