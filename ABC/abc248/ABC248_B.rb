A,B,K = gets.split.map(&:to_i)

slm = A
cnt = 0
while slm < B
  slm *= K
  cnt += 1
end

puts cnt