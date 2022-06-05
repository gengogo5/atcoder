## TLE
#N = gets.to_i
#A = Array.new(2*N+1) { Array.new(2*N+1,-1) } #相性表
#(1..(2 * N - 1)).each do |i|
#  list = gets.split.map(&:to_i)
#  list.size.times do |j|
#    A[i][j+(i+1)] = list[j]
#    A[j+(i+1)][i] = list[j]
#  end
#end
#
#selected = Array.new(N*2+1, false)
#pairs = []
#
#$ans = 0
#
#def dfs(selected, pairs)
#  # 楽しさ計算
#  if pairs.size == 2 * N
#    score = 0
#    0.step(2*N-1,2) do |i|
#      x = pairs[i]
#      y = pairs[i+1]
#      score ^= A[x][y]
#    end
#    $ans = [$ans,score].max
#  end
#
#  # 奇数番目を選ぶ場合
#  if pairs.size.even?
#    i = 1
#    while selected[i]
#      # 選ばれていない人までカウンタを進める
#      i += 1
#    end
#    pairs << i
#    selected[i] = true
#    dfs(selected, pairs)
#    # iのDFSが終わったら選択フラグを戻す
#    pairs.pop
#    selected[i] = false
#  else
#    (1..(2*N)).each do |i|
#      if !selected[i]
#        pairs << i
#        selected[i] = true
#        dfs(selected, pairs)
#        pairs.pop
#        selected[i] = false
#      end
#    end
#  end
#end
#
#dfs(selected, pairs)
#
#puts $ans

n = gets.to_i
A = (2 * n - 1).times.map {gets.split.map(&:to_i)}

def calc(arr, v)
  return v if arr.empty?
  r = 0

  i = arr.shift
  ai = A[i]
  buf = []
  while j = arr.shift
    rr = calc(buf + arr, v ^ ai[j-i-1])
    r = rr if r < rr
    buf << j
  end

  r
end

p calc((0...2*n).to_a, 0)
