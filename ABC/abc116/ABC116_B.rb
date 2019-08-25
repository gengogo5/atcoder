a = gets.to_i
h = Hash.new(0)
h[a] = 1
(2..1000000).each do |i|
  a = a.even? ? a/2 : 3*a+1
  if h[a] != 0
    puts i
    break
  else
    h[a] = i
  end
end
