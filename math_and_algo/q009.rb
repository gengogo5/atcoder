# ビット全探索
N, S = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

found = false
# ビット全探索用に2のN乗回繰り返す
(2 ** N).times do |i|
  sum = 0
  # 内側のループはビット数(N)分のループ
  (0...N).each do |j|
    # 1の位から1ビットずつ確認し、ビットが一致する要素だけを合計に加える
    sum += A[j] if i & (1 << j) != 0
  end
  if sum == S
    found = true
    break
  end
end
puts found ? "Yes" : "No"

