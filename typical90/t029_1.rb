# 小課題1
W,N = gets.split.map(&:to_i)
L,R = N.times.map { gets.split.map(&:to_i) }.transpose

line = Array.new(W+1) {0}
top = 0
N.times do |i|
  top = line[L[i]..R[i]].max
  (L[i]..R[i]).each do |j|
    line[j] = top + 1
  end
  p top + 1
end
