N,D = gets.split.map(&:to_i)
X = N.times.map { gets.split.map(&:to_i) }

# 配列から2個の要素を選んだときの組み合わせ数
ans = X.combination(2).count do |(y, z)|
  dist = Math.sqrt((0..(D-1)).reduce(0) { |s,i| s += (y[i]-z[i]) ** 2 } )
  dist - dist.to_i == 0
end
puts ans
