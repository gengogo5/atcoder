n = gets.to_i

min = 100000
(1..10000).each do |x|
  (1..10000).each do |y|
    if x*y <= n
      m = (x-y).abs + (n-(x*y))
      min = m if m < min
    else
      break
    end
  end
end
p min
