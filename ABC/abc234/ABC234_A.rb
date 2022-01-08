def func(n)
  (n ** 2) + (2*n) + 3
end

t = gets.to_i

puts func(func(func(t) + t) + func(func(t)))
