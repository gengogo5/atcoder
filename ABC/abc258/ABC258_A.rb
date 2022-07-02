K = gets.to_i

t = Time.local(2017, 5, 1, 21, 00);

t = t + (K*60)

puts t.strftime("%H:%M")
