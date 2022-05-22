ans = []
loop do
  n = gets.to_i
  break if n == 0
  yl = Array.new(240002,0)
  n.times do
    s,g = gets.chomp.split
    si = s.gsub(/[^\d]/, "").to_i
    gi = g.gsub(/[^\d]/, "").to_i
    yl[si] += 1
    yl[gi] -= 1
  end
  mx = 0
  (1..240001).each do |i|
    yl[i] += yl[i-1]
    mx = yl[i] if mx < yl[i]
  end
  ans << mx
end

ans.each do |a|
  puts a
end