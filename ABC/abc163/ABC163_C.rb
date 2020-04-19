N = gets.to_i
A = gets.split.map(&:to_i)

h = Hash.new(0)
(1..N).each do |i|
  h[A[i-1]] += 1
end

(1..N).each do |i|
  puts h[i]
end
