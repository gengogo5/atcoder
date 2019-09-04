N = gets.to_i
a = gets.split.map(&:to_i)

all_p = a.inject(:+)
sum_p = [a[0]]
(1...N).each do |i|
  sum_p << a[i] + sum_p[i-1]
end

# 全人口/島の個数で余りが出たら失敗
if all_p%N != 0
  p -1
  exit
end

# 島あたりの目標人数
p = all_p/N

b = 0
N.times do |i|
  if sum_p[i] != p * (i+1)
    b += 1
  end
end
p b
