H,W = gets.split.map(&:to_i)
dp = 10.times.map { gets.split.map(&:to_i) }
A = H.times.map { gets.split.map(&:to_i) }

# iからjに書き換える最小コストをワーシャルフロイド法で解く
10.times do |k|
  10.times do |i|
    10.times do |j|
      dp[i][j] = dp[k][j] + dp[i][k] if dp[i][j] > dp[k][j] + dp[i][k]
    end
  end
end

cnt = 0
H.times do |i|
  W.times do |j|
    n = A[i][j]
    next if n == -1
    next if n == 1
    cnt += dp[n][1]
  end
end

puts cnt