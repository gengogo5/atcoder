# ナップザック問題(動的計画法)
def darray(n1,n2,ini=nil); Array.new(n1) { Array.new(n2) { ini } } end

N,W = gets.split.map(&:to_i)
w,v = N.times.map { gets.split.map(&:to_i) }.transpose

# 配列初期化
# dp[i][j]には持ち帰る品物の価値の総和が格納される
dp = darray(N+1,W+1,-1)
dp[0][0] = 0

# 動的計画法
(1..N).each do |i|   # 品物1〜Nそれぞれを選ぶ場合の添字
  (0..W).each do |j| # 選んだ後の重さを表す添字

    # 品物の重さw[i]がjより大きい場合は品物を持ち帰れない
    if j < w[i-1]
      # 持ち帰れない場合は、既に持っている品物分の価値を反映する
      dp[i][j] = dp[i-1][j] 
    end
    
    # 品物の重さw[i]がj以下の場合は品物を持ち帰るか持ち帰らないかを選べる
    if j >= w[i-1]
      # 品物を取らずに重さを維持する場合と、新しく品物を取って重さを満たす場合とで価値の大きい方を選ぶ
      # 新しく品物を取る場合は、取ろうとしている品物の重さ分が余るようなとり方をした際の価値に、取ろうとしている品物の価値を足す
      dp[i][j] = [dp[i-1][j], dp[i-1][j-w[i-1]] + v[i-1]].max 
    end
  end
end

# 価値の最大値を取得
answer = 0
(0..W).each do |i|
  answer = [answer, dp[N][i]].max
end

puts answer