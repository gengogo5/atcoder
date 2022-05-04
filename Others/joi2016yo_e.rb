def bfs(num, start = 0, graph, danger, limit)
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
      next if dist[it] > limit # S本を超えた分は安全かつ探索対象外
      danger[it] = true
      queue.push(it)
    end
  end
end
class PriorityQueue
  attr_reader :heap

  def initialize
    # ヒープ配列
    @heap = []

    # 小さい順に優先度が高い
    # [ノード番号,暫定距離]のペアで格納される
    @comp = -> (x,y) { x[1] < y[1] }
  end

  def <<(new_one)
    # 新規アイテムを末尾に入れる
    @heap << new_one
    # 末尾から上っていく
    cur = @heap.size - 1

    # ヒープ再構築
    while (cur > 0)
      # 親ノードの要素番号を取得
      par = (cur - 1) >> 1  

      # 追加アイテムより親の方が優先度が高くなったら抜ける
      # = 追加アイテムはcurの位置に収まるのが適切
      break if @comp[@heap[par],new_one]

      # 親の方が優先度が高くなるまで、子に親の値を入れていく
      # 親子入れ替えを行うと計算量が増えるため、子の値を順に上書きして最後に新規アイテムを入れる
      @heap[cur] = @heap[par]
      cur = par
    end
    @heap[cur] = new_one
    self
  end

  def top
    return nil if @heap.size == 0
    @heap[0]
  end

  def deq
    latest = @heap.pop # 末尾を取り出す
    return latest if @heap.size == 0 # 最後の1個ならそのまま返す

    # 末尾を根に置き換える
    highest = @heap[0]
    @heap[0] = latest

    size = @heap.size
    par = 0
    l = (par << 1) + 1 # 左の子

    while (l < size)
      r = l + 1 # 右の子

      # 優先度の高い方の子を交換候補にする
      cld = r >= size || @comp[@heap[l],@heap[r]] ? l : r

      # 親の方が優先度が高ければ交換をやめる
      break if @comp[latest,@heap[cld]]

      # 子の値を親に入れる
      @heap[par] = @heap[cld]

      # 親
      par = cld
      l = (par << 1) + 1 # 左の子
    end
    # 根に仮置きした値を適切な位置に置く
    @heap[par] = latest
    highest
  end

  def clear
    @heap = []
  end
end
# 頂点nから各ノードへの最短距離を配列で返す
# 1. 始点nに0を書き込む
# 2. 未確定の頂点の中から、現時点で最も距離の小さい頂点をひとつ選び確定させる(必要な場合はルートを記録する)
# 3. 2で確定した頂点と直接つながっていて、かつ未確定な頂点に対して、始点からの所要時間を計算し、記録されている時間より短ければ更新する
# 4. 全地点が確定していれば終了、そうでなければ2に戻る
def dijkstra(n, graph, num)

  # 優先度付きキュー
  # 最短距離未確定の頂点の確定待ちキュー
  q = PriorityQueue.new

  # 関数が返す最短距離配列
  # 全要素最長距離で初期化
  dist = Array.new(num+1, Float::INFINITY)
  dist[n] = 0

  # 始点(未確定の頂点)を確定待ちへ
  q << [n, 0]
  
  # キューが空になるまで続ける
  # 確定待ちがいない = すべてのノードが確定している
  while (q.heap.size > 0)

    # [2] 未確定の中で最も優先度が高い(始点からの最短距離が短い)街Pの情報を取り出す
    # posは確定
    # 距離は優先順の計算の為だけに格納しているので取り出す必要なし
    pos = q.top.first
    q.deq

    # [3] 2で確定した頂点と直接つながっている頂点をすべて見る
    graph[pos].each do |g|
      to = g[0] # 行き先の頂点
      cost = g[1] # 頂点Pからtoへ直接行く場合のコスト

      # 最短距離配列の更新(toへ行くための最短距離が知ってる距離より短い場合)
      # 確定済頂点の場合、dist[to]より小さいdist[pos]+costが存在しない為、この分岐に入らない
      if (dist[to] > dist[pos] + cost)
        # dist[pos](始点からposまでのコスト) + posからtoまでのコスト
        dist[to] = dist[pos] + cost
        # 未確定の頂点を確定待ちキューに入れる
        q << [to, dist[to]]
      end
    end
  end
  dist
end

# N個の町
# M本の道路
# K個のゾンビに支配された町
# ゾンビ町からS本以下の道路で行ける場合は危険な町
N,M,K,S = gets.split.map(&:to_i)
# Pは通常の宿泊費, Qは危険な町での宿泊費
P,Q = gets.split.map(&:to_i)
ch = Hash.new(false) # ゾンビ町をO(1)で求めたいのでハッシュにした
K.times do
  c = gets.to_i
  ch[c] = true
end

# 道路のグラフを作成
graph = Array.new(N+1) { Array.new } # 危険な町を探すためのグラフ
graph_d = Array.new(N+1) { Array.new } # ダイクストラ用のグラフ(ゾンビの町を除外したもの)
M.times do
  a,b = gets.split.map(&:to_i)
  graph[a] << b
  graph[b] << a
  next if ch[a] || ch[b]
  graph_d[a] << [b]
  graph_d[b] << [a]
end

danger = Array.new(N+1, false) # 危険な町かの判定用
# ゾンビ町すべてからS本分BFSして危険な町を調べる
ch.keys.each { |i| bfs(N,i,graph,danger,S) }


# 宿泊費をグラフに反映する
(1..N).each do |i|
  graph_d[i].length.times do |j|
    # 町Nでは宿泊しないので0円にする
    # 危険な町はQ円、安全な町はP円を入れる
    if graph_d[i][j][0] == N
      graph_d[i][j] << 0
    elsif danger[graph_d[i][j][0]]
      graph_d[i][j] << Q
    else
      graph_d[i][j] << P
    end
  end
end

# ゾンビに侵されていない町のグラフ(宿泊費反映済)を使ってダイクストラする
dist = dijkstra(1,graph_d,N)
puts dist[N]
