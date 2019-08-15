N,X = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

# 各都市と出発座標の差を配列にする
difs = x.map { |m| (m-X).abs }

# 出発座標と都市の座標の最大公約数が答え
puts difs.inject { |a,b| a.gcd(b) }
