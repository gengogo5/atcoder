S = gets.chomp
N = gets.to_i
l,r = N.times.map { gets.split.map(&:to_i) }.transpose

s = S
N.times do |i|
  s = s[0,l[i]-1] << s[l[i]-1..r[i]-1].reverse << s[r[i]..-1]
end

puts s
