S = gets.chomp
a,b = gets.split.map(&:to_i)

s = S.chars
tmp = s[a-1]
s[a-1] = s[b-1]
s[b-1] = tmp

puts s.join
