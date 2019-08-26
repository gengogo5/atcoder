N = gets.to_i
prev = 1
(1..N).each do |i|
  if i**2 <= N && N != 1
    prev = i**2
  else
    p prev
    break
  end
end
