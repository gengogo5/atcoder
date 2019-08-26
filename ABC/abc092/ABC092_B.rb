N = gets.to_i
D,X = gets.split.map(&:to_i)
A = N.times.map { gets.to_i }

c = -X # チョコレート仮の数
A.each do |a|
  c -= 1+((D-1)/a)
end

p c.abs
