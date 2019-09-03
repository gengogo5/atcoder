L,H = gets.split.map(&:to_i)
N = gets.to_i
A = N.times.map { gets.to_i }

A.each do |a|
  if (L..H).member?(a)
    p 0
  elsif a > H
    p -1
  else
    p L-a
  end
end
