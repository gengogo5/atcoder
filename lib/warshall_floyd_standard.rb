# ワーシャルフロイド法
# V 頂点数, E 辺の数
V,E = gets.split.map(&:to_i)
graph = Array.new(V+1) { Array.new }
# 頂点iから頂点jまでの最短経路
dp = Array.new(V) { Array.new(V, Float::INFINITY) }
E.times do
  s,t,d = gets.split.map(&:to_i)
  graph[s] << [t,d]
  # 初期条件 dp[s][t] = d, それ以外はINF これは暫定
  dp[s][t] = d
end

# 初期条件 i=jの場合は0(自分への最短経路は0)
V.times do |i|
  dp[i][i] = 0
end

V.times do |k|
  V.times do |i|
    V.times do |j|
      # kを経由した方がコストが少なければ、k経由のコスト(iとk & kとj)を採用する
      dp[i][j] = dp[i][k] + dp[k][j] if dp[i][j] > dp[i][k] + dp[k][j]
    end
  end
end

# 負の閉路が存在するかの確認
# 合計コストが負になる閉路
# iからiへ行くルート(閉路がなければ0であるはず)
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
