S = gets.chomp

p 0 and exit if S.length == 1

s1 = ''
s2 = ''
if S.length.even?
  s1 = S[0..(S.length/2)-1]
  s2 = S[(S.length/2)..-1].reverse
else
  s1 = S[0..(S.length/2)-1]
  s2 = S[(S.length/2)+1..-1].reverse
end

cnt = 0
s1.length.times do |i|
  cnt += 1 if s1[i] != s2[i]
end

p cnt
