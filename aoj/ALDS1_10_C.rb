# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_10_C&lang=ja
# AOJだとTLEするが、DP学習としてはここまででいい気がするので深追いを諦める

N = gets.to_i
ans = []
N.times do
  x,y = 2.times.map { gets.chomp }

  xl = x.length
  yl = y.length

  # Xのi文字目までとYのj文字目までを切り出した時の最長共通部分列の長さ
  dp = Array.new(xl + 1) { Array.new(yl + 1, 0) }
  xl.times do |i|
    xi = x[i]
    yl.times do |j|
      # j文字目が部分列になる場合
      if xi == y[j] # 右端同士が一致した場合
        dp[i+1][j+1] = dp[i][j] + 1
      else
        i1j = dp[i+1][j]
        ij1 = dp[i][j+1]
        # ひとつ前の結果をもらう
        dp[i+1][j+1] = [i1j,ij1].max
      end
    end
  end

  ans << dp[xl][yl]
end
ans.each { |a| puts a }
