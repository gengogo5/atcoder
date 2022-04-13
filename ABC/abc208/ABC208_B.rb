P = gets.to_i

def f(n)
  if n == 1
    1
  else
    n * f(n-1)
  end
end

price = P
cnt = 0
10.downto(1) do |i|
  cnt += price / f(i)
  price %= f(i)
end
puts cnt