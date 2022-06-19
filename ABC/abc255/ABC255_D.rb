# 累積和の配列を返す(先頭要素は0)
def cumulative_sum(org)
  s = Array.new(org.size+1)
  s[0] = 0
  org.size.times do |i|
    s[i+1] = s[i] + org[i]
  end
  s
end

N,Q = gets.split.map(&:to_i)
A = gets.split.map(&:to_i).sort
X = Q.times.map { gets.to_i }

cs_A = cumulative_sum(A)

ans = []
Q.times do |i|
  idx = A.bsearch_index { |x| x > X[i] } # 境界
  if idx
    a = (idx * X[i]) - cs_A[idx] # xより小さい分
    # xより大きい分
    # xより大きい分の累積和から、x * xより大きい要素数の値を引く
    b = (cs_A[-1] - cs_A[idx]) - ((N - idx) * X[i])
    ans << a+b
  else
    # すべてxより小さい場合
    ans << (X[i] * N) - cs_A[-1]
  end
end

ans.each do |a|
  puts a
end