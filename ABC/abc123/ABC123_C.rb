N = gets.to_i
A,B,C,D,E = 5.times.map { gets.to_i }

# 最小の旅客人数(ボトルネック)を見つける
min_p = [A,B,C,D,E].min

# 人数をボトルネックとなる都市の旅客人数で割る
# ボトルネック都市以外は1分で着くので * 4を足す
# 割り切れない場合を考慮して切り上げロジックを入れる
puts (N+min_p-1)/min_p + 4
