N = gets.to_i
e = 0
o = 0
(1..N).each do |i|
  if i.even?
    e +=1
  else
    o +=1
  end
end

puts o/N.to_f
