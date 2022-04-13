# https://atcoder.jp/contests/joi2009yo/tasks/joi2009yo_d
# depth: 割った数
def dfs(i, j, graph, depth)
  diff = [[1,0],[0,1],[-1,0],[0,-1]]
  # 1枚割る
  graph[i][j] = 0

  # 東西南北で割ってないマスを割りに行く
  diff.each do |(dx,dy)|
    #next if i+dx < 0 || j+dy < 0 # 範囲外
    #next if i+dx >= N || j+dy >= M # 範囲外
    next if graph[i+dx][j+dy] == 0 # 氷が張ってない
    dfs(i+dx, j+dy, graph, depth + 1)
  end

  $max_dp = [$max_dp,depth].max
  graph[i][j] = 1 # 割った後は必ず戻す

end

# N*Mの二次元配列の外側をfillで埋める
# fillは参照型ではない
def enclose(darray, fill)
  new_one = darray.map(&:dup)
  m = darray[0].length
  new_one.unshift(Array.new(m) {fill}) # 上
  new_one.push(Array.new(m) {fill}) # 下
  new_one.each { |a| a.push(fill).unshift(fill)  } # 左右
  new_one
end

M = gets.to_i
N = gets.to_i
S = N.times.map { gets.split.map(&:to_i) }
graph = enclose(S,0) # 外側を0で埋める
$max_dp = 0

(1..N).each do |i|
  (1..M).each do |j|
    dfs(i,j,graph,1) if graph[i][j] == 1
  end
end
puts $max_dp
