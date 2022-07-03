N = 1048576 # 2 ** 20
Q = gets.to_i
A = Array.new(N,-1) # 数列
# 最も近い、書き換えられていない空き番号を見つけるための補助配列
P = (0..(N-1)).to_a # P[i]=i だとA[i]は書き換えられてない

ans = []
Q.times do |i|
  t,x = gets.split.map(&:to_i)

  if t == 1
    h = x % N
    pos = h
    visited = [pos] # 空き要素の探索記録配列
    # Aの空き要素を探す
    while (A[pos] != -1) # AhmodN == -1を探す
      pos = P[pos] # P[pos]には初期値でiが入っている(A[pos]が使われてればP[pos]も)
      visited << pos # 経由した要素番号をすべて記録
    end
    A[pos] = x # -1であるA[i]が見つかったらxで書き換え
    new_p = P[(pos + 1) % N] # 次の空き要素を変数に退避 A[i%N]=-1ならA[(i+1)%N]は空き
    visited.each do |u|
      P[u] = new_p # 探索済のPの要素がすべて次の空き要素を指すようにする
      # ここが経路圧縮
      # 空き要素を直接指すようにする
    end
  else
    # クエリ2
    ans << A[x % N]
  end
end

ans.each do |a|
  puts a
end