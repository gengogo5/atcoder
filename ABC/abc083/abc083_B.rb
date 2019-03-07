N,A,B = gets.split.map(&:to_i)

sum = 0
(1..N).each do |n|
  _sum = 0
  n.to_s.chars do |c|
    _sum += c.to_i
  end
  if _sum >= A && _sum <= B
    sum += n
  end
end

puts sum
