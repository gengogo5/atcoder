class UnionFind
  def initialize(n)
    # par[i]: iの親要素番号を表す
    # par[i] = i の時、par[i]は根
    @par = []
    # グループごとのサイズ
    @siz = Array.new(n,1)
    n.times { |i| @par[i] = i }
  end

  # データxが属する木の根を返す
  def root(x)
    # x自身が根の場合
    return x if @par[x] == x
    # 自身が根でない場合は再起で親を辿って返す。同時に根を直接自身の親に設定する(経路圧縮)
    return @par[x] = root(@par[x])
  end

  # xとyの木を併合する
  def unite(x, y)
    # xとyの根を取得する
    rx = root(x)
    ry = root(y)
    return if rx == ry # もともと同じ木の場合は何もしない
    rx,ry = ry,rx if @siz[rx] > @siz[ry] # xの方が大きい場合はxyを入れ替える(union by size)
    #小さい方が大きい方の子になることで木の高さを低く保つ
    @par[rx] = ry # xの親をyにする = yが根になる 
    @siz[ry] += @siz[rx]
  end

  # xとyが同じ木に属しているかを調べる
  def same?(x, y)
    rx = root(x)
    ry = root(y)
    return rx == ry
  end

  # xを含むグループのサイズ
  def size(x)
    @siz[root(x)]
  end
end

# https://www.ioi-jp.org/camp/2010/2010-sp-tasks/2010-sp-day3_22.pdf
# N個の都市 M本の道路 K個の都市で本選開催
N,M,K = gets.split.map(&:to_i)
edges = Array.new(M) # 道路数分
M.times do |i|
  # 無向グラフ
  s,t,w = gets.split.map(&:to_i)
  edges[i] = [w,s,t]
end

# 道路を料金が安い順にソート
edges.sort! { |a,b| a[0] <=> b[0] }

uf = UnionFind.new(N+1)
cost = 0
# 大会開催地はどこでもコストは同じ
cnt = 0
M.times do |i|
  break if cnt >= N-K # 開催地ぶん結合する辺をへらす
  e = edges[i]
  w = e[0]
  s = e[1]
  t = e[2]

  next if uf.same?(s,t)
  cost += w
  cnt += 1
  uf.unite(s,t)
end

puts cost