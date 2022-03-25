N = gets.to_i
A = gets.split.map(&:to_i).sort

ans = 1
A.each do |a|
  ans *= a
  if ans > 1000_000_000_000_000_000
    ans = -1
    break
  end
end
puts ans