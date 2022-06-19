N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
X,Y = N.times.map { gets.split.map(&:to_i) }.transpose

mx_l = 0
N.times do |i|
  mn_lighter = Float::INFINITY
  K.times do |j|
    d = Math.sqrt((X[i] - X[A[j]-1]) ** 2 + (Y[i] - Y[A[j]-1]) ** 2)
    mn_lighter = d if mn_lighter > d
  end
  mx_l = mn_lighter if mn_lighter > mx_l
end

puts mx_l