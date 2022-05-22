# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=DPL_1_B&lang=ja
N,W = gets.split.map(&:to_i)
# v: 価値, w: 重さ
vn,wn = N.times.map { gets.split.map(&:to_i) }.transpose

# dp[i][w] 最初のi個の品物までの中から、重さがwを超えないように選んだ時の価値の総和の最大値
dp = Array.new(N+1) { Array.new(W+1) {0} }
0.upto(W) { |w| dp[0][w] = 0 }

# 全部回す
N.times do |i|
  0.upto(W) do |w|
    # i番目の品物を選ぶ場合
    # i番目の品物の重さが、求めたい選び方の重さ上限wに収まる場合に限る
    if (w - wn[i] >= 0)
      # 目標の重さw - wn[i]から今回選ぶ重さを引いた選び方の価値総和と、今回選ぶ品物の価値を合計
      dp[i+1][w] = dp[i][w - wn[i]] + vn[i] if dp[i+1][w] < dp[i][w - wn[i]] + vn[i]
    end

    # i番目の品物を選ばない
    dp[i+1][w] = dp[i][w] if dp[i+1][w] < dp[i][w]
  end
end
puts dp[N][W]