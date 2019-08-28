N,M = gets.split.map(&:to_i)
a,b = N.times.map { gets.split.map(&:to_i) }.transpose
c,d = M.times.map { gets.split.map(&:to_i) }.transpose

N.times do |i|
  min_m = 999999999999999
  min_idx = 0
  M.times do |j|
    m = (a[i]-c[j]).abs + (b[i]-d[j]).abs
    # 最小CPが複数あった場合に、番号が小さいものが優先される
    if m < min_m
      min_m = m
      min_idx = j+1
    end
  end
  p min_idx
end
