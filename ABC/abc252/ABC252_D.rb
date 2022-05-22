N = gets.to_i
A = gets.split.map(&:to_i)

# cnt[i]: i未満の数がAにいくつ存在するか
cnt = Array.new(200002,0)
A.each do |a|
  cnt[a+1] += 1
end
(1..200001).each do |i|
  cnt[i] += cnt[i-1]
end

ans = 0
N.times do |j|
  # cnt[A[j]]はj未満の数i
  # N-cnt[A[j]+1]はjを超える数
  ans += cnt[A[j]] * (N-cnt[A[j]+1])
end

puts ans