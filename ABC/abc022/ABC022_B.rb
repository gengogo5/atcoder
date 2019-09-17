N = gets.to_i
f = {}
sum = 0
N.times do |i|
  a = gets.to_i
  if f[a]
    sum += 1
  end
  f[a] = true
end
p sum
