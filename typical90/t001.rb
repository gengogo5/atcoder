N,L = gets.split.map(&:to_i)
K = gets.to_i
A = gets.split.map(&:to_i) # Aは予め累積和配列になっている

# 2分探索用の左端と右端
l = -1
r = L+1
m = 0

loop do
  # 中央値を試す
  m = (l+r)/2

  # rとlの差が1であればmが確定している
  break if r - l == 1

  # 切り離された羊羹の長さ
  cutlen = 0
  # 切った回数
  cutnum = 0

  # 左から貪欲法でm以上になるように切る
  N.times do |i|

    # 左端からの長さ - 切り離した分の長さ が m以上であればそこで切る
    if A[i] - cutlen >= m
      cutnum += 1 # 切った回数を加算
      cutlen = A[i] # 切り離した分の長さを記録
    end

    # K回切ったら判定へ
    break if cutnum == K
  end

  # 次の2分探索をlとrどちらで進めるか決める
  if cutnum != K
    # K回切れなかったのでmが大きすぎた
    # 次の探索はmを上限に行う
    r = m
  elsif L - cutlen < m
    # K回切れたが、最後の1ピースがm未満なのでmが大きすぎた
    # 次の探索はmを上限に行う
    r = m
  else
    # K回切れたがすべてのピースがm以上なのでもっと大きいmを探す
    # 次の探索はmを下限に行う
    l = m
  end
end

puts m
