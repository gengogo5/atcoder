# https://atcoder.jp/contests/joi2015yo/tasks/joi2015yo_d
N,M = gets.split.map(&:to_i) # N+1個の都市、M日かける
# j日目にiへ行く為にDi*Cjの疲労度がたまる
D = N.times.map { gets.to_i } # iへ行く距離
C = M.times.map { gets.to_i } # j日目の天候

dp = Array.new(N+2) { Array.new(M+1, Float::INFINITY) }
dp[0][0] = 0
(N+2).times { |i| dp[i][0] = 0 }

# dp[i][j] j日目にi番目の都市へ移動した時の疲労度の累計
N.times do |i|
  M.times do |j|
    next if M - N < j - i # たどり着けないケースではスキップ
    # 移動する場合
    next if j < i # 1日ずつしか移動できない(自信なし)
    dp[i+1][j+1] = dp[i][j] + (D[i] * C[j]) if dp[i+1][j+1] > dp[i][j] + (D[i] * C[j])

    # 待機する場合
    dp[i][j+1] = dp[i][j] if dp[i][j+1] > dp[i][j] # 現在の疲労度をそのまま翌日に持ち越す
  end
end

# デバッグ用
#dp.each do |line|
#  puts line.join(" ")
#end
puts dp[N][1..-1].min