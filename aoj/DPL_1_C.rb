# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=DPL_1_C&lang=ja
N,W = gets.split.map(&:to_i)
vn,wn = N.times.map { gets.split.map(&:to_i) }.transpose

dp = Array.new(N+1) { Array.new(W+1) {0} }
0.upto(W) { |w| dp[0][w] = 0 }

N.times do |i|
  0.upto(W) do |w|
    # 選ぶ場合
    if (w - wn[i] >= 0) # 選ぶ可能性のある品物iの重さwn[i]が、目標の重さw以内に収まる場合
      a = dp[i][w - wn[i]] + vn[i] # 初めて選ぶ場合(品物i-1を選んだ時の価値に追加)
      b = dp[i+1][w - wn[i]] + vn[i] # 重複して選ぶ場合(同じ品物iを-1個選んだ時の価値に追加) ※個数制限ありの場合はこれが不要
      dp[i+1][w] = [a,b].max
    end

    # 品物iを選ばない場合
    # 品物iを選ぶ前の方が価値総和が高ければその値を採用する
    dp[i+1][w] = dp[i][w] if dp[i+1][w] < dp[i][w]
  end
  #puts "========i=#{i}=========="
  #dp.each do |dpi|
  #  dpi.each do |j|
  #    printf("%3d ",j)
  #  end
  #  puts ''
  #end
end