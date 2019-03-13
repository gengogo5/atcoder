N,K = gets.split.map(&:to_i)
h = N.times.map { gets.to_i }

h.sort!
min = 10 ** 9

(0..N-K).each do |i|
  len = h[i+K-1]-h[i]
  min = len if len < min
end

puts min
