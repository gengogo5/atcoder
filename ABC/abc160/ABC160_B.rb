X = gets.to_i

y500 = X / 500
y5 = (X - (y500 * 500)) / 5

puts y500 * 1000 + y5 * 5