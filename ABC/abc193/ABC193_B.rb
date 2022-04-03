N = gets.to_i
A,P,X = N.times.map { gets.split.map(&:to_i) }.transpose

min_p = Float::INFINITY
can = false
N.times do |i|
  if X[i]-A[i] > 0
    can = true
    min_p = [min_p, P[i]].min
  end
end
puts can ? min_p : -1