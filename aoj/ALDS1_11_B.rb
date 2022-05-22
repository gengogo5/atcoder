# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_11_B&lang=ja
def dfs(pos, graph, visited, d, v)
  return if visited[pos] # 探索済頂点なら抜ける
  $t += 1 # 行きがけに時刻加算
  visited[pos] = true
  d[pos] = $t # 行きがけに発見時刻記録

  # 探索対象の頂点と接している頂点をすべて回る
  graph[pos].each { |i| dfs(i, graph, visited, d, v) }
  $t += 1 # 帰りがけに時刻加算
  v[pos] = $t # 帰りがけに終了時刻記録
end

N = gets.to_i
u = N.times.map { gets.split.map(&:to_i) }
graph = Array.new(N+1)
visited = Array.new(N+1) { false }
d = [] # 発見時刻
v = [] # 終了時刻
$t = 0 # 時刻はグローバル変数

# 隣接リストで有向グラフを表現
N.times do |i|
  graph[u[i][0]] = u[i].slice(2..-1)
end

(1..N).each do |i|
  dfs(i, graph, visited, d, v)
end

(1..N).each do |i|
  puts "#{i} #{d[i]} #{v[i]}"
end