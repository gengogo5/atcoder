N,X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

f = {X => 1}
nxt = X
loop do
  if f[A[nxt-1]].nil?
    f[A[nxt-1]] = 1
    nxt = A[nxt-1]
  else
    break
  end
end
puts f.keys.length