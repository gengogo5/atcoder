N = gets.to_i

can = false
(0..(N/4)).each do |c|
  (0..(N/7)).each do |d|
    can = true if (c*4) + (d*7) == N
    break if can
  end
  break if can
end

puts can ? 'Yes' : 'No'
