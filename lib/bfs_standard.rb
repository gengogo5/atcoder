def bfs(num, start = 0, graph)
  # 始点からの距離
  # -1は未探索を表す
  dist = Array.new(num) {-1}
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

# N ノード数
# ノード番号: 隣接ノード番号...
N = gets.to_i
graph = Array.new(N) { Array.new }
N.times do
  nodes = gets.split.map(&:to_i)
  t = nodes.shift - 1
  nodes.each do |l|
    graph[t] << l - 1
  end
end

d = bfs(N,0,graph)

p d