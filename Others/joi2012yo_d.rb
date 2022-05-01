# https://atcoder.jp/contests/joi2012yo/tasks/joi2012yo_d

N,K = gets.split.map(&:to_i)
dh = {} # 日付&パスタ
K.times do
  d,m = gets.split.map(&:to_i)
  dh[d] = m
end

# dp[N][a][b]
# a,b はそれぞれi日目,i-1日目のパスタ
# 値は1,2,3(0はダミー)
dp = Array.new(N+1) { Array.new(4) { Array.new(4) {0} }}
dp[0][0][0] = 1

# 0日目は不使用
(1..N).each do |n|
  # iは1日前, jは2日前, kは当日のパスタ
  4.times do |i| # 0はダミー
    4.times do |j| # 0はダミー
      (1..3).each do |k| # 当日分にダミーは不要なので1..3
        next if dh[n] && dh[n] != k # 指定パスタの日で、指定パスタでないケースはスキップ
        next if k == i && k == j # 3日連続ならパターンを追加しないのでスキップ
        dp[n][k][i] += dp[n-1][i][j]
        dp[n][k][i] %= 10000
      end
    end
  end
end
ans = 0
4.times do |i|
  4.times do |j|
    ans += dp[-1][i][j]
    ans %= 10000
  end
end

# デバッグ用
#(N+1).times do |i|
#  puts "==== #{i} 日目======"
#  dp[i].each do |line|
#    puts line.join(" ")
#  end
#end

puts ans