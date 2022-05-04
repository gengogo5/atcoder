# https://atcoder.jp/contests/joi2008yo/tasks/joi2008yo_f
class PriorityQueue
  attr_reader :heap

  def initialize
    # ヒープ配列
    @heap = []

    # 小さい順に優先度が高い
    # [ノード番号,暫定距離]のペアで格納される
    # 優先度は暫定距離が小さいものが高いことにする
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

    # [2] 未確定の中で最も優先度が高い(始点からの最短距離が短い)頂点Pの情報を取り出す
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

# N個の島、K個の入力
N,K = gets.split.map(&:to_i)
graph = Array.new(N+1) { Array.new }
ans = []
K.times do
  q = gets.split.map(&:to_i)
  if q[0] == 0
    # 0はクエリ
    dist = dijkstra(q[1],graph,N)
    cost = dist[q[2]] == Float::INFINITY ? -1 : dist[q[2]]
    ans << cost
  else
    # 1は新規ルート追加
    graph[q[1]] << [q[2],q[3]]
    graph[q[2]] << [q[1],q[3]]
  end
end

ans.each { |a| puts a }