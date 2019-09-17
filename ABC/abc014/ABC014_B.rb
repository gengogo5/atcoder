n,X = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

sum = 0
xr = X.to_s(2).reverse
xr.length.times do |i|
  sum += a[i] if xr[i] == '1'
end

p sum
