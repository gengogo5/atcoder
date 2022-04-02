# https://www.ioi-jp.org/joi/2008/2009-ho-prob_and_sol/2009-ho.pdf#page=4
d = gets.to_i # 環状線の全長
n = gets.to_i # 店舗の総数
m = gets.to_i # 注文の個数
shiten = (n-1).times.map { gets.to_i } # 本店以外の店舗の位置
takuhaisaki = m.times.map { gets.to_i } # 宅配先の場所を示す

stores = shiten.sort # 始点からソート
stores.unshift(0) # 本店を追加
stores << d # 本店(逆周り用)を追加

# 以後、takuhaisakiごとにstoresに対する2分探索を行う
sum = 0
takuhaisaki.each do |t|
  l = -1 # 左端(常に条件を満たさない)
  r = stores.size # 右端(常に条件を満たす(こちら側に寄せる))
  while ( r - l > 1 )
    # 中央値を試す
    m = (l + r)/2
    s = stores[m]
    if s < t
      # 目標より小さければ、中央値を左端にする(左端は条件を満たさない)
      l = m
    else
      # 目標より大きければ、中央値を右端にする
      r = m
    end
  end
  # rかr-1のうちtに最も近い方を採用
  if r != 0
    dist = [(t - stores[r]).abs, (t-stores[r-1]).abs].min
  else
    dist = (t - stores[r]).abs
  end
  sum += dist
end

puts sum