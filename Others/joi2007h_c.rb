N = gets.to_i
XY = N.times.map { gets.split.map(&:to_i) }

# 存在確認用のハッシュ
exists = Hash.new(false)
N.times do |i|
  exists[XY[i][0] + XY[i][1] * 10000] = true
end

# 全ての2点間のベクトルを算出する
# たぶんソートを絡めると計算量を減らせる
ans = 0
XY.combination(2).each do |xy|
  ax = xy[0][0]
  ay = xy[0][1]
  bx = xy[1][0]
  by = xy[1][1]
  v_ab = [bx - ax, by - ay]

  # 2点間の垂直ベクトルを出す
  # 片側の垂直ベクトルだけ見れば良い
  # もし逆側に2点が存在する場合は、その2点のベクトルから探索するので
  vv_ab = [(by - ay) * -1, bx - ax] # 反時計回り

  # 正方形となる位置に柱が存在するかの確認(反時計回り)
  cx = ax + vv_ab[0]
  cy = ay + vv_ab[1]
  dx = bx + vv_ab[0]
  dy = by + vv_ab[1]
  if exists[cx + cy * 10000] && exists[dx + dy * 10000]
    # ベクトルの長さの2乗が面積
    ans = [ans, v_ab[0]**2 + v_ab[1]**2].max
  end
end

puts ans