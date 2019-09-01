A,B = gets.split.map(&:to_i)

u = 0
if B == 1
  puts 0
  exit
end
loop do
  if A+((A-1)*u) >= B
    puts u+1
    exit
  end
  u += 1
end
