N = gets.to_i

def f(n)
  if n == 1
    return '1'
  else
    return f(n-1) + ' ' + n.to_s + ' ' + f(n-1)
  end
end

puts f(N)