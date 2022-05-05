# ワーシャルフロイド法
# V 頂点数, E 辺の数
V,E = gets.split.map(&:to_i)
graph = Array.new(V+1) { Array.new }
dp = Array.new(V) { Array.new(V, Float::INFINITY) }
E.times do
  s,t,d = gets.split.map(&:to_i)
  graph[s] << [t,d]
  # 初期条件 dp[s][t] = d
  dp[s][t] = d
end

# 初期条件 i=jの場合は0
V.times do |i|
  dp[i][i] = 0
end

V.times do |k|
  V.times do |i|
    V.times do |j|
      dp[i][j] = dp[i][k] + dp[k][j] if dp[i][j] > dp[i][k] + dp[k][j]
    end
  end
end

is_negative = false
V.times { |i| is_negative = true if dp[i][i] < 0 }

if is_negative
  puts 'NEGATIVE CYCLE'
else
  V.times do |i|
    l = dp[i].map { |it| it == Float::INFINITY ? 'INF' : it }
    puts l.join(" ")
  end
end
