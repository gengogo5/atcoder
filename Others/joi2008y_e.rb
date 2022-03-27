R,C = gets.split.map(&:to_i)
A = R.times.map { gets.split.map(&:to_i) }

# ビット全探索
mx = 0
# 行のひっくり返し方のループ
(2 ** R).times do |i|
  # 1ビットずつ判定
  sum = 0 # あるひっくり返し方における合計
  # 列ごとのループ(j列目)
  C.times do |j|
    sum_c = 0 # 列の1の合計
    # 行ごと
    R.times do |k|
      s = A[k][j]
      # ひっくり返し対象の行であれば、反転したビットで計算する
      if i[k] == 1
        s ^= 1
      end
      sum_c += s
    end
    # 1の数の最大値(sum_c)と0の数の最大値(R-sum_c)の大きい方を取る
    sum += [sum_c, R - sum_c].max
  end
  mx = [mx, sum].max
end

puts mx