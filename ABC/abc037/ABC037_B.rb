N,Q = gets.split.map(&:to_i)
L,R,T = Q.times.map { gets.split.map(&:to_i) }.transpose
a = N.times.map { 0 }

Q.times do |i|
  ((L[i]-1)..(R[i]-1)).each do |j|
    a[j] = T[i]
  end
end
puts a
