N,K = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

cnt=0
h.each do |f|
  cnt += 1 if f >= K
end
p cnt
