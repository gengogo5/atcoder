N = gets.to_i

c = 0
(1..N).each do |i|
  c += 1 if i.to_s.length.odd?
end

puts c
