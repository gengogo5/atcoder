N = gets.to_i
A = 2.times.map { gets.split.map(&:to_i) }

max = 0
for i in 1..N do
  sum = 0
  for j in 1..(N-i+1) do
    sum += A[0][j-1]
  end
  for k in (N-i+1)..N do
    sum += A[1][k-1]
  end
  max = sum if sum > max
end

puts max
