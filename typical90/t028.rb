def darray(n1,n2,ini=nil); Array.new(n1) { Array.new(n2) { ini } } end
# 2次元いもす法
N = gets.to_i
# 問題文では(lx,ly)が左下座標、(rx,ry)が右上座標
# ただし配列表現すると0,0が左上になるため、(lx,ly)を左上、(rx,ry)を右下と考える
lx,ly,rx,ry = N.times.map { gets.split.map(&:to_i) }.transpose

layer = darray(1001,1001,ini=0)

area = Array.new(N+1) {0}

# N枚の紙の情報を二次元配列に記録
# 左上,右下に+1、左下,右上に-1する
N.times do |i|
  layer[lx[i]][ly[i]] += 1 # 左上
  layer[rx[i]][ry[i]] += 1 # 右下
  layer[lx[i]][ry[i]] -= 1 # 左下
  layer[rx[i]][ly[i]] -= 1 # 右上
end

# 配列の累積和を記録する(横方向)
1.upto(1000).each do |i|
  0.upto(1000).each do |j|
    layer[i][j] += layer[i-1][j]
  end
end

# 配列の累積和を記録する(縦方向)
0.upto(1000).each do |i|
  1.upto(1000).each do |j|
    layer[i][j] += layer[i][j-1]
  end
end

# 重なっている面積の計算
1001.times do |i|
  1001.times do |j|
    area[layer[i][j]] += 1 if layer[i][j] >= 1
  end
end

# 結果出力
1.upto(N).each do |i|
  puts area[i]
end