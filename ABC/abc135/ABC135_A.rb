A,B = gets.split.map(&:to_i)

if A % 2 != B % 2
  puts "IMPOSSIBLE"
else
  puts (A + B) / 2
end
