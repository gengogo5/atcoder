S = gets.chomp
week = %w(SUN MON TUE WED THU FRI SAT)

idx = 7 - week.rindex(S)

puts idx
