N = gets.to_i
cnt = 0

(N+1).times do |i|
  if i%3 != 0 && i%5 != 0
    cnt += i
  end
end
p cnt