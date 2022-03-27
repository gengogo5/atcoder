N = gets.to_i
P = gets.split.map(&:to_i)
Q = gets.split.map(&:to_i)

a = -1
b = -1
(1..N).to_a.permutation(N).to_a.each.with_index do |ary, idx|
  a = idx + 1 if ary == P
  b = idx + 1 if ary == Q
end

puts (a - b).abs