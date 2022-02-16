def array(n,ini=nil);      Array.new(n) { ini } end
def dfs(pos, graph, visited, route)
  return if visited[pos] # 探索済頂点なら抜ける

  visited[pos] = true
  # 探索対象の頂点と接している頂点をすべて回る
  graph[pos].each { |i| dfs(i, graph, visited, route) }

  # 探索した経路を記録
  # 帰りがけ
  route << pos
end

N,M = gets.split.map(&:to_i)
A,B = M.times.map { gets.split.map(&:to_i) }.transpose
graph = Array.new(N+1) { Array.new }
graph_iv = Array.new(N+1) { Array.new }

M.times do |i|
  graph[A[i]] << B[i]
  # 逆順のDFS用にグラフをもうひとつ作る
  graph_iv[B[i]] << A[i]
end

# 探索ルート
# 帰りがけに記録するので、行き止まりから順に記録される
route = []
# 訪問済フラグの配列(要素0不使用)
visited = array(N+1, false)
# 1〜Nの全頂点に対してDFS
# 1回で全頂点の探索が終わらない可能性がある為
(1..N).each do |i|
  dfs(i, graph, visited, route)
end

visited2 = array(N+1, false)
ans = 0
# 1巡目DFSの帰りがけ順の逆
route.reverse.each do |i|
  # 辺が反転しているので、行き止まり頂点には到達しない
  # 強連結のグループが記録される
  trace = []
  # 辺を反転させたグラフでDFSする
  dfs(i, graph_iv, visited2, trace)
  # 帰りがけに記録した頂点の数が強連結グループを構成する頂点数
  cnt = trace.size
  # 2頂点の組を求める式
  ans += cnt * (cnt - 1) / 2
end

puts ans