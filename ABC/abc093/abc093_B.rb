a, b, k = gets.split.map(&:to_i)
ans = []
a.upto([a+k-1, b].min) do |i|
  ans.push i
end
[a, b-k+1].max.upto(b) do |i|
  ans.push i
end
puts ans.uniq

