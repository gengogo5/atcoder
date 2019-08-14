N,M = gets.split.map(&:to_i)
AB = N.times.map { gets.split.map(&:to_i) }

# 金額でソート
AB.sort_by! { |x| x[0] }

bought = 0
pay = 0
N.times do |i|
  p = AB[i][0] * AB[i][1]
  if M > bought + AB[i][1]
    bought += AB[i][1]
    pay += p
  else
    diff = M - bought
    bought += diff
    pay += diff * AB[i][0]
    break
  end
end

puts pay
