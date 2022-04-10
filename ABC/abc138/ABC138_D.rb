# 累積和をdfsでやる
def dfs(pos, graph, tree, val, visited)
  tree[pos] += val
  visited[pos] = true
  # posの子要素に対してループ
  graph[pos].each do |i|
    dfs(i, graph, tree, tree[pos], visited) unless visited[i]
  end
end

N,Q = gets.split.map(&:to_i)
tree = Array.new(N+1) {0} # 0は未使用
# 木を下向きの有向グラフとして考える
graph = Array.new(N+1) { Array.new }

a,b = (N-1).times.map { gets.split.map(&:to_i) }.transpose
(N-1).times do |i|
  graph[a[i]] << b[i]
  graph[b[i]] << a[i]
end

Q.times do |i|
  p,x = gets.split.map(&:to_i)
  tree[p] += x # imos法の為に開始位置にだけ加算
end

# 根から順に累積和する
visited = Array.new(N+1) {false}
dfs(1, graph, tree, 0, visited)

# 先頭だけ抜いて表示
tree.shift
puts tree.join(" ")