N = gets.to_i
A = gets.split.map(&:to_i)
h = Hash.new(0)
A.each { |a| h[a] += 1 } # 出現回数(添字の組み合わせなので同じ値でも重複カウントする)

# 全探索法
sum = 0
(1..200001).each do |i| # 分母
  i.step(by: i, to:200001) do |j| # 分子を分母の倍数だけ
    k = j/i
    sum += h[i] * h[j] * h[k]
  end
end

puts sum