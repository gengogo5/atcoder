S = gets.chomp
K = gets.to_i
N = S.length

# .の数の累積和を求めておく
dots = [0]
N.times do |i|
  dots[i+1] = dots[i] + (S[i] == '.' ? 1 : 0)
end

# 尺取法
r = 0 # 右端
ans = 0
N.times do |l| # 左端を1ずつ増やす
  # 全部Xに変えられる限界までrを増やす
  # dots[r+1]-dots[l]で区間内の.の個数、これがK以下なら変更できる
  while (r < N && dots[r+1]-dots[l] <= K)
    r += 1
  end
  ans = [ans,r-l].max
end

puts ans