N = gets.to_i

ans = 0
a = 1
while a*a*a <= N
  b = a
  while a*b*b <= N
    ans += (N/(a*b)) - (b-1)
    b += 1
  end
  a += 1
end
puts ans