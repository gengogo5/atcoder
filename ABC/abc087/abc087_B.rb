A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

cnt = 0

for i in 0..A do
  for j in 0..B do
    for k in 0..C do
      sum = (500*i)+(100*j)+(50*k)
      cnt += 1 if sum == X
    end
  end
end

puts cnt
