K = gets.to_i

ans = 0
(1..K).each do |i|
  (1..K).each do |j|
    (1..K).each do |k|
      ans += (i.gcd(j)).gcd(k)
    end
  end
end
p ans
