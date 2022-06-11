# 累積和の配列を返す(先頭要素は0)
def cumulative_sum(org)
  s = Array.new(org.size+1)
  s[0] = 0
  org.size.times do |i|
    s[i+1] = s[i] + org[i]
  end
  s
end

N,K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

sa = cumulative_sum(A)

ans = 0
d = Hash.new(0)
sa.each do |r|
  l = r - K
  ans += d[l]
  d[r] += 1
end

puts ans