N,M = gets.split.map(&:to_i)
dp = Array.new(N+1) { Array.new(N+1, Float::INFINITY) }
M.times do
  a,b,t = gets.split.map(&:to_i)
  dp[a][b] = t
  dp[b][a] = t
end
N.times do |i|
  dp[i][i] = 0
end

(1..N).each do |k|
  (1..N).each do |i|
    (1..N).each do |j|
      dp[i][j] = dp[i][k] + dp[k][j] if dp[i][j] > dp[i][k] + dp[k][j]
    end
  end
end

# バス停ごとに、INF以外での最大コストを出し、最も小さいバス停のコストを表示
mn = Float::INFINITY
(1..N).each do |i|
  max_i = 0
  (1..N).each do |j|
    next if dp[i][j] == Float::INFINITY
    next if i == j
    max_i = [max_i,dp[i][j]].max
  end
  mn = [max_i,mn].min
end

puts mn
