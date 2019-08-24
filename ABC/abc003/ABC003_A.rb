N = gets.to_i

avg = 0
(1..N).each do |i|
  avg += i*10000 * 1.0/N
end
puts avg
