N = gets.to_i
h = Hash.new(0)
N.times.map { h[gets.chomp] += 1 }

mv = h.values.max
ans = []
h.each do |k,v|
  ans << k if v == mv
end
ans.sort.each do |a|
  puts a
end