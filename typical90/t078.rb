N,M = gets.split.map(&:to_i)
a,b = M.times.map { gets.split.map(&:to_i) }.transpose

h = Hash.new(0)
M.times do |i|
    h[a[i]] += 1 if a[i] > b[i]
    h[b[i]] += 1 if b[i] > a[i]
end

h.delete_if { |_,v| v > 1 }

p h.keys.size