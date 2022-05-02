# https://atcoder.jp/contests/joi2013yo/tasks/joi2013yo_d
D,N = gets.split.map(&:to_i)
T = D.times.map { gets.to_i }
A,B,C = N.times.map { gets.split.map(&:to_i) }.transpose

# i日目にjの服を着た時の価値の最大値
dp = Array.new(D+1) { Array.new(N, 0) }

(1...D).each do |i| # 2日目から開始
  N.times do |j| # 1日前の服
    N.times do |k| # 今日の服
      next if A[j] > T[i-1] || B[j] < T[i-1] # 前日で適さない服はスキップ
      next if A[k] > T[i] || B[k] < T[i] # 適さない服はスキップ
      diff = (C[k] - C[j]).abs
      dp[i][k] = dp[i-1][j] + diff if dp[i][k] < dp[i-1][j] + diff
    end
  end
end

puts dp[D-1].max
