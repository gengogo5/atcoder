A,B = gets.split.map(&:to_i)

if (A < 10 && B < 10)
  puts A * B
else
  puts -1
end