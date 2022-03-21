N,M = gets.split.map(&:to_i)
k = Array.new(M)
s = Array.new(M)
M.times do |i|
  ks = gets.split.map(&:to_i)
  k[i] = ks[0] # 先頭要素をkに
  s[i] = ks.slice(1..-1) # 残りをsに
end
P = gets.split.map(&:to_i)

# スイッチの状態でbit全探索
cnt = 0
(2 ** N).times do |i|
  swt = []
  N.times do |j|
    # 1ビットずつ1かを見る
    # スイッチの状態を配列にする
    swt.unshift((i & (1 << j)) != 0)
  end
  all_ok = true
  M.times do |j|
    # 評価対象スイッチ個数
    ons = 0
    k[j].times do |sw|
      # 対象スイッチがONならカウント
      ons += 1 if swt[s[j][sw]-1]
    end
    # 1つでも電球が付かない場合はスイッチループで次へ
    if ons % 2 != P[j]
      all_ok = false
      break
    end
  end
  # 全部電球が点灯したスイッチ配列をカウント
  cnt += 1 if all_ok
end

puts cnt