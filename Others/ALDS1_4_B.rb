N = gets.to_i
S = gets.split.map(&:to_i)
Q = gets.to_i
T = gets.split.map(&:to_i)

# Tに含まれる整数の中で、Sに存在するものの個数Cを出力する
# Sは昇順ソート済

cnt = 0
T.each do |t|
  l = -1 # 左端(常に条件を満たさない)
  r = N-1 # 右端(常に条件を満たす(こちら側に寄せる))
  while ( r - l > 1 )
    # 中央値を試す
    m = (l + r)/2
    s = S[m]
    if s < t
      # 目標より小さければ、中央値を左端にする(左端は条件を満たさない)
      l = m
    else
      # 目標より大きければ、中央値を右端にする
      r = m
    end
  end
  cnt += 1 if S[r] == t
end

puts cnt