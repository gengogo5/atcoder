N,Q = gets.split.map(&:to_i)
S = gets.chomp
lr = Q.times.map { gets.chomp.split.map(&:to_i) }

A = Array.new(N)
A[0] = 0
(1...N).each do |i|
  if S[i-1,2] == 'AC'
    A[i] = A[i-1]+1
  else
    A[i] = A[i-1]
  end
end

Q.times do |j|
  ans = A[lr[j][1]-1] - A[lr[j][0]-1]
  puts ans
end

