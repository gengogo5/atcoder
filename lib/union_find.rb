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