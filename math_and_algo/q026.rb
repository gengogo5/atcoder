N = gets.to_f

sum = 0.0
(1..N.to_i).each do |i|
  sum += N / i
end
puts sum
