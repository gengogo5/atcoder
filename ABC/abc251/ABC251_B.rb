N,W = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

ans = []
A.combination(1).to_a.each do |it|
  ans << it.sum if it.sum <= W
end
A.combination(2).to_a.each do |it|
  ans << it.sum if it.sum <= W
end
A.combination(3).to_a.each do |it|
  ans << it.sum if it.sum <= W
end

puts ans.uniq.size