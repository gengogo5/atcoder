# 小課題2
# 座標圧縮
# 問われているのは最も高い位置だけなので、座標間の距離情報は不要
W,N = gets.split.map(&:to_i)
L,R = N.times.map { gets.split.map(&:to_i) }.transpose

comp = []
# レンガの始点終点座標を記録
N.times do |i|
  comp << L[i]
  comp << R[i]
end

comp.sort! # 小さい順に並べる
comp.uniq! # 重複除外

# LとRの値を圧縮したlとrを求める
# l[i] = L[i]が何番目に小さい値か
l = []
r = []
N.times do |i|
  l[i] = comp.bsearch_index { |x| x >= L[i] }
  r[i] = comp.bsearch_index { |x| x >= R[i] }
end

# 圧縮座標にレンガを積んだ時の高さを格納する配列
h = Array.new(comp.size) {0}
N.times do |i|
  # 圧縮座標ベースで高さを求める
  height = h[l[i]..r[i]].max
  p height + 1
  h.fill(height + 1, l[i]..r[i])
end