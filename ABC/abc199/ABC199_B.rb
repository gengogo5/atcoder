N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

cnt = 0
(1..1000).each do |i|
  ok = true
  N.times do |j|
    unless A[j] <= i && i <= B[j]
      ok = false
      break
    end
  end
  cnt += 1 if ok
end

puts cnt