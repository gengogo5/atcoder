N = gets.to_i

sl = N.to_s.length

sum = 0
(sl-1).times do |i|
  sum += (9*(10**i) + 1) * (9*(10**i)) / 2
end
sum += ((N-(10 ** (sl-1))+2) * (N-(10 ** (sl-1))+1)) / 2

p sum % 998244353