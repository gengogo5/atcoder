a,b,c = gets.split.map(&:to_i)

if a == b
  p c
elsif a == c
  p b
elsif b == c
  p a
end
