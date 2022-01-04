N = gets.to_i

def func(n)
  n == 1 ? 1 : n * func(n - 1)
end

puts func(N)

