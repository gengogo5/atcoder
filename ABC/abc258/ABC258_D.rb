N,X = gets.split.map(&:to_i)
A,B = N.times.map { gets.split.map(&:to_i) }.transpose

sum = 0
ans = Float::INFINITY
N.times do |i|
  break if i + 1 > X # X回を超えるステージはプレイできない

  sum += A[i] + B[i]
  ans = [ans, sum + B[i] * (X - i - 1)].min # 残りすべてを2回目に費やす
end

puts ans