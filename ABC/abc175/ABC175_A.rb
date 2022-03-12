S = gets.chomp

r = 0
3.times do |i|
  if S[i] == "R" && ((r == 0) || S[i-1] == "R")
    r += 1
  end
end

puts r
