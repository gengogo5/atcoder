S = gets.chomp
min = 753
(0..(S.length-2)).each do |i|
  sub = (S[i..(i+2)].to_i - 753).abs
  min = sub if sub < min
end
puts min
