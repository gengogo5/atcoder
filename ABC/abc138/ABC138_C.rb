N = gets.to_i
v = gets.split.map(&:to_i).sort!.reverse!

loop do
  vmin = v.pop
  vmin2 = v.pop
  vmin_n = (vmin + vmin2)/2.0
  v << vmin_n
  v.sort!.reverse!
  break if v.size == 1
end

puts v.pop
