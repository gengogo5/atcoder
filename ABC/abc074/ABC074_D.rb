# TLEする
N = gets.to_i
dp = N.times.map { gets.split.map(&:to_i) }

# 最短経路維持に必要な道路を記録する配列
r = Array.new(N) { Array.new(N, true) }

mujun = false
N.times do |k|
  N.times do |i|
    N.times do |j|
      mujun = true if dp[i][j] > dp[k][j] + dp[i][k]
      # i->jのコストがk経由と変わらないならi->jの道は不要
      # 自分向けのルートを除外
      r[i][j] = false if dp[i][j] == dp[k][j] + dp[i][k] && i != k && k != j
    end
  end
end

cnt = 0
N.times do |i|
  N.times do |j|
    cnt += dp[i][j] if r[i][j]
  end
end

# 往復分の道があるので道路の長さは半分にして求める
puts mujun ? -1 : cnt / 2