N = gets.to_i
K = gets.to_i

s = 1
N.times do
  if s < K
    s *= 2
  else
    s += K
  end
end
p s
