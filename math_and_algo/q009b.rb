# 動的計画法 部分和問題
def darray(n1,n2,ini=nil); Array.new(n1) { Array.new(n2) { ini } } end
N, S = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

# 動的計画法 配列の初期化
dp = darray(N+1, S+1, false)
# 何も選ばずに和が0になる選択肢しかないので、カード0枚目でjが以外の場合はfalse
dp[0][0] = true
(1..S).each { |s| dp[0][s] = false }

(1..N).each do |i| # カード0枚目のdpは初期化済なのでi>=1
  (0..S).each do |j|
    if j < A[i-1] # 目指す総和より取ろうとするカードの方が大きい場合はカードを取れない
      dp[i][j] = dp[i-1][j] # カードを取れない場合はi-1枚目の結果と同じ
    elsif dp[i-1][j] || dp[i-1][j-A[i-1]]
      # 既に持っているカードで目指す総和になっている
      # または既に持っているカードの総和が、[目指す総和 - 今から取ろうとしているカードの数字]になっている
      dp[i][j] = true
    else
      dp[i][j] = false
    end
  end
end

puts dp[N][S] ? 'Yes' : 'No'

