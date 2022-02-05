N = gets.to_i

# 桁数
sl = N.to_s.length

sum = 0
sl.times do |i|
  k = [9*(10**i),(N-(10 ** i)+1)].min
  sum += (k % 998244353) * (k+1) / 2
end

p sum
