s = gets.chomp.chars

cs = []
s.length.times do
  cs << (s.unshift(s.pop)).join
end

cs.sort!

puts cs[0]
puts cs[-1]