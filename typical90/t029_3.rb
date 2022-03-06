# 小課題3
# 遅延評価セグメント木

class SegmentTree
  attr_reader :data, :lazy

  # 元配列vを元にセグメント木を生成する
  def initialize(v, is_min=true)
    # 完全2分木なので、最下段の要素数はv.size()以上の最小の2のn乗
    @size = 1
    n = v.size
    while (@size < n)
      @size *= 2
    end

    # RmQかRMQか
    @is_min = is_min

    # 全体の要素数は最下段の要素数をNとして2N-1
    pad = is_min ? Float::INFINITY : 0
    @data = Array.new(2 * @size - 1) {pad}

    # 遅延評価用
    @lazy = Array.new(2 * @size - 1) {Float::INFINITY}

    # 最下段の値を入れる
    # 最下段のインデックスは、左端を0としたidxにN-1を足せば良い
    # 最下段の要素数はN、最下段より上の要素数はN-1、合わせて2N-1
    # 足りない分は穴埋めする
    0.upto(@size-1).each do |i|
      @data[i + @size - 1] = v[i] || pad
    end

    # 親の値を設定していく。自分の子の2値の大きい方 or 小さい方
    (@size-2).downto(0).each do |i|
      childs = [@data[2*i+1],@data[2*i+2]]
      @data[i] = is_min ? childs.min : childs.max
    end
  end

  # 遅延評価
  # 配列のk番目の値をlazy[k]で更新する
  def eval(k)
    return if @lazy[k] == Float::INFINITY # 更新対象がない

    # 葉でない(葉の要素番号は必ずn-1以上)場合は子も要更新に伝搬させる
    if (k < @size - 1)
      lazy[2*k+1] = lazy[k]
      lazy[2*k+2] = lazy[k]
    end

    @data[k] = @lazy[k]
    @lazy[k] = Float::INFINITY # 役目を終えたので初期値に戻す
  end

  # 値の即時更新
  # xをvalで更新する
  def update(x, val)
    # 最下段にアクセスするには添字にN-1を足す
    x += (@size - 1)

    # 値の更新
    # その後親に上って更新
    @data[x] = val
    while (x > 0)
      x = (x - 1) / 2
      childs = [@data[2*x+1],@data[2*x+2]]
      @data[x] = @is_min ? childs.min : childs.max
    end
  end

  # 要求区間 [a,b)中の最小値or最大値を返す
  # k := 自身のidx(初期値は0) @data[k]は対象区間の答えが入っている
  # [l,r) := 対象区間(初期値は0,-1)
  def getVal(a, b, k=0, l=0, r=-1)
    # 遅延評価
    eval(k)

    # 初回の対象区間を全要素に設定
    r = @size if r < 0

    # 要求区間がおかしい場合はnilを返す
    dummy = @is_min ? Float::INFINITY : 0
    return dummy if (r <= a || b <= l)

    # 要求区間が対象区間を完全に被覆している
    # 対象区間の値を答えれば良い
    return @data[k] if (a <= l && r <= b)

    # 要求区間が対象区間の一部を被覆している(対象区間よりも狭い範囲の答えを知りたいケース)
    # 要求区間が対象区間を完全に被覆するまで、対象区間を狭めながら子の持つ答えを探索する
    # 新しい対象区間は、今の対象区間を半分に割る
    vl = getVal(a, b, 2*k+1, l, (l+r)/2)
    vr = getVal(a, b, 2*k+2, (l+r)/2, r)
    return @is_min ? [vl,vr].min : [vl,vr].max
  end

  # 区間更新(遅延評価)
  # 要求区間 [a,b)をxで更新する
  def range_update(a, b, x, k=0, l=0, r=-1)
    eval(k) # これをしないと後で@lazy[k]の更新時に古い値が消える

    # 初回の対象区間を全要素に設定
    r = @size if r < 0

    # 要求区間がおかしい場合はreturn
    return if (r <= a || b <= l)

    # 完全被覆の場合
    if (a <= l && r <= b)
      @lazy[k] = x
      eval(k)
      return
    end

    # 一部被覆の場合は、完全被覆するまでは子の探索を続ける
    range_update(a, b, x, 2*k+1, l, (l+r)/2)
    range_update(a, b, x, 2*k+2, (l+r)/2, r)

    # data[k]自身は遅延評価でなくここで更新
    childs = [@data[2*k+1], @data[2*k+2]]
    @data[k] = @is_min ? childs.min : childs.max
  end
end

W,N = gets.split.map(&:to_i)
L,R = N.times.map { gets.split.map(&:to_i) }.transpose

sg = SegmentTree.new(Array.new(W) {0}, false)

N.times do |i|
  height = sg.getVal(L[i]-1, R[i]) + 1
  sg.range_update(L[i]-1, R[i], height)
  puts height
end