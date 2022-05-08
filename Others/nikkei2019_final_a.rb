N = gets.to_i
A = gets.split.map(&:to_i)

sums = Array.new(N+1, 0)
(1..N).each do |i|
  sums[i] = sums[i-1] + A[i-1]
end

N.times do |k|
  mx = 0
  (k..N).each do |i|
    mx = sums[i] - sums[i-k-1] if sums[i] - sums[i-k-1] > mx
  end
  puts mx
end