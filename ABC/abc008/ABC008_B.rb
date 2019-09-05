N = gets.to_i
h = Hash.new(0)
N.times do
  s = gets.chomp
  h[s] += 1
end

puts h.max { |a, b| a[1] <=> b[1] }[0]
