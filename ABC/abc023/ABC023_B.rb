N = gets.to_i
S = gets.chomp

l = ['b']
s = 'b'
loop do
  s = 'a' + s + 'c'
  l << s
  break if s.length > 100
  s = 'c' + s + 'a'
  l << s
  break if s.length > 100
  s = 'b' + s + 'b'
  l << s
  break if s.length > 100
end
if l.include?(S)
  puts l.index(S)
else
  puts -1
end
