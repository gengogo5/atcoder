# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=1167&lang=jp

dp = (0..1000000).to_a # 初期値
odp = (0..1000000).to_a # 初期値
pns = (1..180).map { |num| num*(num+1)*(num+2)/6 } # 正四面体数のリスト

pns.each do |pn| # 正四面体数分だけループ
  (0..1000000).each do |i|
    break if i + pn > 1000000
    dp[i+pn] = dp[i] + 1 if dp[i+pn] > dp[i] + 1
  end
  next if pn.even?
  (0..1000000).each do |i|
    break if i + pn > 1000000
    odp[i+pn] = odp[i] + 1 if odp[i+pn] > odp[i] + 1
  end
end

n = 1
ans = []
while n != 0
  n = gets.to_i
  break if n == 0
  ans << "#{dp[n]} #{odp[n]}"
end

ans.each do |a|
  puts a
end