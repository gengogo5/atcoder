def array(n,ini=nil); Array.new(n) { ini } end
def bfs(num, start = 0, graph)
  # 始点からの距離
  # -1は未探索を表す
  dist = array(num, -1)
  # キュー
  queue = []
  # 始点の情報を追加
  dist[start] = 0
  queue.push(start)

  # キューが空になるまで続ける
  while (!queue.empty?)
    t = queue.shift

    # 取り出したノードに隣接するノード分をすべて調べる
    graph[t].each do |it|
      next if dist[it] != -1 # 探索済ノードはパスする
      # 始点からの距離を格納
      # 直前のノードの距離+1
      dist[it] = dist[t] + 1
      queue.push(it)
    end
  end
  dist
end

N = gets.to_i
graph = Array.new(N+1) { Array.new }

# 入力
# 隣接リストを作る
(N-1).times do
  a,b = gets.split.map(&:to_i)
  # 0オリジンに変える
  a -= 1
  b -= 1
  graph[a] << b
  graph[b] << a
end

# 1回目、BFSで頂点1から最も遠いノード(頂点u)を見つける
d = bfs(N,0,graph)
u = d.index(d.max)

# 2回目、BFSで頂点uから最も遠いノード(頂点v)を見つける
d2 = bfs(N,u,graph)
# 頂点uとvの距離+1が求めるべき閉路の長さ
puts d2.max + 1