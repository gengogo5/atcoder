class UnionFind
  def initialize(n)
    # par[i]: iの親要素番号を表す
    # par[i] = i の時、par[i]は根
    @par = []
    n.times { |i| @par[i] = i }
  end

  # データxが属する木の根を返す
  def root(x)
    # x自身が根の場合
    return x if @par[x] == x
    # 自身が根でない場合は再起で親を辿る
    return root(@par[x])
  end

  # xとyの木を併合する
  def unite(x, y)
    # xとyの根を取得する
    rx = root(x)
    ry = root(y)
    return if rx == ry # もともと同じ木の場合は何もしない
    @par[rx] = ry # xの親をyにする = yが根になる
  end

  # xとyが同じ木に属しているかを調べる
  def same?(x, y)
    rx = root(x)
    ry = root(y)
    return rx == ry
  end
end

def darray(n1,n2,ini=nil); Array.new(n1) { Array.new(n2) { ini } } end
H,W = gets.split.map(&:to_i)
Q = gets.to_i
q = Q.times.map { gets.split.map(&:to_i) }

# UnionFind木を初期化
# ハッシュ値が大きな値を取るので大きめに確保
uf = UnionFind.new(2002 * 2002)
# 赤塗り配列
# 4方向を調べるので、領域外アクセスを防ぐ為に外壁分のサイズを確保して(1,1)オリジンで使う
red = darray(H+2,W+2,false)

# 2値を整数型のハッシュで返す
def h(x,y)
  2002 * x + y
end

def query1(r,c,red,uf)
  # 赤色で塗る
  # redは1オリジンで使う
  red[r][c] = true

  # 赤同士で隣接してるマスのグループ可処理
  dx = [-1,0,1,0]
  dy = [0,1,0,-1]
  4.times do |i|
    # 赤で塗ったマスの隣接4マスが赤で塗られているかチェック
    sx = r + dx[i]
    sy = c + dy[i]
    next unless red[sx][sy] # 赤くない
    # UFにはハッシュ値で格納する
    h1 = h(r,c)
    h2 = h(sx,sy)
    uf.unite(h1,h2)
  end
end

def query2(px,py,qx,qy,red,uf)
  # 両マスが赤でなければ処理しない
  return false unless red[px][py] && red[qx][qy]
  h1 = h(px,py)
  h2 = h(qx,qy)
  # 両マスが隣接していればtrueが返る
  uf.same?(h1,h2)
end

Q.times do |i|
  qi = q[i]
  if qi[0] == 1
    query1(qi[1],qi[2],red,uf)
  else
    puts query2(qi[1],qi[2],qi[3],qi[4],red,uf) ? "Yes" : "No"
  end
end