H,W = gets.split.map(&:to_i)
A = H.times.map { gets.split.map(&:to_i) }.transpose

A.each do |a|
  puts a.join(" ")
end