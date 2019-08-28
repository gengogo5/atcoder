O = gets.chars.reverse
E = gets.chars.reverse
p = []
loop do
  p << O.pop if O.length >= 1
  p << E.pop if E.length >= 1
  break if O.empty? && E.empty?
end
puts p.join
