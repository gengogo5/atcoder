A,B,C = gets.split.map(&:to_i)

ans = -1
1.upto(1000).each do |i|
  cn = C * i
  if cn >= A && cn <= B
    ans = cn
    break
  end
  break if cn > B
end

puts ans