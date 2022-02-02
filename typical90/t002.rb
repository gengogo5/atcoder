N = gets.to_i

# ビット全探索用に2のN乗ループ
ansk = []
(2 ** N).times do |i|

  kk = "" # カッコ文字列保持
  l = 0   # 開きカッコの数
  r = 0   # 閉じカッコの数
  valid = true

  # 1ビットずつ判定
  N.times do |j|
    if i & (1 << j) != 0
      kk << ')'
      r += 1
    else
      kk << '('
      l += 1
    end

    # 閉じカッコの方が多い場合は不正
    if l < r
      valid = false
      break
    end
  end
  # 最終的にカッコの数が不一致なら不正
  valid = false if r != l

  ansk << kk if valid
end

ansk.sort.each { |k| puts k }