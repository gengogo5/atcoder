N,Q = gets.split.map(&:to_i)
L,R,X = Q.times.map { gets.split.map(&:to_i) }.transpose

# 階差配列
d = Array.new(N+1) {0}
Q.times do |i|
  d[L[i]-1] += X[i]
  d[R[i]] += X[i] * -1
end

(1...N).each do |i|
  if d[i] > 0
    print('<')
  elsif d[i] < 0
    print('>')
  else
    print('=')
  end
end
puts ('')