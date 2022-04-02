N,K,X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

# 2周目用
a2 = []

# 1周目
# X円引きにできるようにクーポンを使う
k = K
A.each do |a|
  use = [a/X, k].min # 使用枚数
  k = [k - use,0].max
  after = (a - (use * X))
  a2 << after
end

sum = 0
a2.sort!.reverse!
a2.each do |a|
  if k > 0
    k -= 1
  else
    sum += a
  end
end
puts sum