N,X,Y,Z = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

# 数学の点が高い
gokaku = Hash.new(false)
_A = A.map.with_index { |a,i| [a,i+1] }.sort { |a,b| (b[0]<=>a[0]).nonzero? || (a[1]<=>b[1]) }
cnt = 0
_A.each do |a|
  break if cnt >= X
  gokaku[a[1]] = true
  cnt += 1
end

# 英語の点が高い
_B = B.map.with_index { |a,i| [a,i+1] }.sort { |a,b| (b[0]<=>a[0]).nonzero? || (a[1]<=>b[1]) }
cnt = 0
_B.each do |b|
  next if gokaku[b[1]]
  break if cnt >= Y
  gokaku[b[1]] = true
  cnt += 1
end

# 数学と英語の合計点
C = N.times.map { |i| [A[i]+B[i], i+1] }.sort { |a,b| (b[0]<=>a[0]).nonzero? || (a[1]<=>b[1]) }
cnt = 0
C.each do |c|
  next if gokaku[c[1]]
  break if cnt >= Z
  gokaku[c[1]] = true
  cnt += 1
end

gokaku.keys.sort.each do |k|
  if gokaku[k]
    puts k
  end
end
