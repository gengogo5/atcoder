W,H = gets.split.map(&:to_i)
puts H/W.to_f == 0.75 ? '4:3' : '16:9'
