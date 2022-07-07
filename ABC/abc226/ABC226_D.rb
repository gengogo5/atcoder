N = gets.to_i
X,Y = N.times.map { gets.split.map(&:to_i) }.transpose

mgk = []
N.times do |i|
  N.times do |j|
    next if i == N-j-1
    dx = X[N-j-1] - X[i]
    dy = Y[N-j-1] - Y[i]
    
    # 魔法を最小単位に変換
    # 最大公約数で割れば通分になる
    dg = dx.gcd(dy)
    if dg > 1
      dx /= dg
      dy /= dg
    end
    mgk << [dx,dy]
  end
end

p mgk.uniq.size