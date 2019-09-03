s = gets.chomp
k = gets.to_i
h = {}

(0..(s.length-k)).each do |i|
  h[s[i..(i+k-1)]] = 1
end

p h.keys.size
