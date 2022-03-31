N,X = gets.split.map(&:to_i)
V,P = N.times.map { gets.split.map(&:to_i) }.transpose

num = -1
val = 0
N.times do |i|
  val += V[i] * P[i]
  if val > X * 100
    num = i + 1
    break
  end
end

puts num