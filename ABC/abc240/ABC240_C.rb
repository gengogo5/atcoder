N,X = gets.split.map(&:to_i)
a,b = N.times.map { gets.split.map(&:to_i) }.transpose

# i回ジャンプした時にjの座標にいることができるか
dp = Array.new(N+1) { Array.new(X+1, false) }
dp[0][0] = true
N.times do |i|
  (X+1).times do |j|
    if j - a[i] >= 0
      dp[i+1][j] = true if dp[i][j - a[i]]
    end
    if j - b[i] >= 0
      dp[i+1][j] = true if dp[i][j - b[i]]
    end
  end
end

puts dp[N][X] ? 'Yes' : 'No'