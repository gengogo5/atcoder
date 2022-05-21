N = gets.to_i
A = Array.new(1000002,0)
N.times do
  a,b = gets.split.map(&:to_i)
  A[a] += 1
  A[b+1] -= 1
end

(1..(A.size-1)).each do |i|
  A[i] += A[i-1]
end

puts A.max