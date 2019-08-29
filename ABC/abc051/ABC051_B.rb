K,S = gets.split.map(&:to_i)

cnt = 0
(0..K).each do |x|
  (0..K).each do |y|
    z = S-x-y
    cnt += 1 if z >= 0 && z <= K
  end
end
p cnt
