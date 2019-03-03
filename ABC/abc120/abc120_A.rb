A,B,C = gets.split.map(&:to_i)

d = B/A

if d > C
  d = C
end

puts d
