N = gets.to_i
X,Y = N.times.map { gets.split.map(&:to_i) }.transpose

mx = 0
N.times do |i|
  (i...N).each do |j|
    ln = Math.sqrt((X[i] - X[j]) ** 2 + (Y[i] - Y[j]) ** 2)
    mx = [mx, ln].max
  end
end

puts mx
