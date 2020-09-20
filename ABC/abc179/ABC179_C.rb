n = gets.to_i
ans = 0
(1...n).each do |i|
  ans += (n-1) / i
end
print ans

