N = gets.to_i
A = gets.split.map(&:to_i)

cnt = 0
A.each do |i|
  if i > 10
    cnt += (i - 10)
  end
end
puts cnt