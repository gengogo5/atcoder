N,A,B = gets.split.map(&:to_i)
P,Q,R,S = gets.split.map(&:to_i)

x = (Q-P+1).times.map { ('.' * (S - R + 1)).chars }

l = [P-A,R-B].max
r = [Q-A,S-B].min
(l..r).each do |i|
  x[A+i-P][B+i-R] = '#'
end

l2 = [P-A,B-S].max
r2 = [Q-A,B-R].min
(l2..r2).each do |i|
  x[A+i-P][B-i-R] = '#'
end

x.each do |line|
  puts line.join
end