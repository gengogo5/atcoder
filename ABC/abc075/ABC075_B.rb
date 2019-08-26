H,W = gets.split.map(&:to_i)
S = H.times.map { gets.chomp }
# 下右上左...の順
di = [1,  0, -1,  0,  1, -1, -1,  1]
dj = [0,  1,  0, -1,  1,  1, -1, -1]

H.times do |i|
  W.times do |j|
    # 爆弾はパス
    next if S[i][j] == '#'

    # 周囲のマスをチェック
    bomb = 0
    8.times do |k|
      # 調査対象の座標
      ni = i + di[k]
      nj = j + dj[k]

      # 調査対象の範囲外チェック
      next if ni < 0 or H <= ni
      next if nj < 0 or W <= nj

      # 調査対象が爆弾ならカウント
      bomb += 1 if S[ni][nj] == '#'
    end
    S[i][j] = bomb.to_s
  end
  puts S[i]
end
