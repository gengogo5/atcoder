N = gets.to_i

checked = false
box = 0
day = 0
while !checked
  day += 1
  box += day

  checked = true if box >= N
end
puts day