a = gets.split.map(&:to_i)

ans = 0
3.times do |i|
  ans = a[ans]
end

puts ans