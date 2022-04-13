# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_11_C&lang=ja
# 幅優先探索
def bfs(start = 0, dist, graph)
  # キュー
  queue = []
  # 始点の情報を追加
  dist[start] = 0
  queue.push(start) # 探索対象に入れる

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
end

N = gets.to_i
# 番号, 出次数, 頂点番号
list = N.times.map { gets.split.map(&:to_i) }

# 隣接リスト(0は未使用)
graph = Array.new(N+1) {Array.new}
list.each do |l|
  graph[l[0]] = l.slice(2..-1)
end

# 各頂点への距離(-1は未探索を表す)
dist = Array.new(N+1) {-1}
bfs(1, dist, graph)

1.upto(N) do |i|
  puts "#{i} #{dist[i]}"
end