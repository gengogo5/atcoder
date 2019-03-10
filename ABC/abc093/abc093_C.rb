A,B,C = gets.split.map(&:to_i).sort

max = C*3

diff = C*3 - (A+B+C)

if diff.even?
  puts diff / 2
else
  puts (diff / 2) + 2
end
