N,S,D = gets.split.map(&:to_i)
X,Y = N.times.map { gets.split.map(&:to_i) }.transpose

can = false
N.times do |i|
  can = true if X[i] < S && Y[i] > D
end

puts can ? 'Yes' : 'No'
