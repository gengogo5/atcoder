# https://atcoder.jp/contests/joi2011ho/tasks/joi2011ho1
# 惑星探査 2次元累積和
M,N = gets.split.map(&:to_i)
K = gets.to_i # 調査対象領域数
C = M.times.map { gets.chomp.chars } # 惑星の情報
# 調査対象 a,b,c,d (a,b)が北西 (c,d)が南東
a,b,c,d = K.times.map { gets.split.map(&:to_i) }.transpose

# 2次元累積和配列を作る JとOとIの3つ用意
SJ = Array.new(M+1) { Array.new(N+1, 0) }
SO = Array.new(M+1) { Array.new(N+1, 0) }
SI = Array.new(M+1) { Array.new(N+1, 0) }
# 横の累積
(1..M).each do |i|
  (1..N).each do |j|
    is_j = 0
    is_o = 0
    is_i = 0    
    case C[i-1][j-1]
    when 'J' then is_j = 1
    when 'O' then is_o = 1
    when 'I' then is_i = 1
    end
    SJ[i][j] = SJ[i][j-1] + is_j
    SO[i][j] = SO[i][j-1] + is_o
    SI[i][j] = SI[i][j-1] + is_i
  end
end

# 縦の累積
(1..M).each do |i|
  (1..N).each do |j|
    SJ[i][j] = SJ[i-1][j] + SJ[i][j]
    SO[i][j] = SO[i-1][j] + SO[i][j]
    SI[i][j] = SI[i-1][j] + SI[i][j]
  end
end

K.times do |i|
  sum_j = SJ[c[i]][d[i]] - SJ[c[i]][b[i]-1] - SJ[a[i]-1][d[i]] + SJ[a[i]-1][b[i]-1]
  sum_o = SO[c[i]][d[i]] - SO[c[i]][b[i]-1] - SO[a[i]-1][d[i]] + SO[a[i]-1][b[i]-1]
  sum_i = SI[c[i]][d[i]] - SI[c[i]][b[i]-1] - SI[a[i]-1][d[i]] + SI[a[i]-1][b[i]-1]
  puts "#{sum_j} #{sum_o} #{sum_i}"
end

# TLEする版なので修正が必要