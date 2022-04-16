N = gets.to_i

0.upto(100) do |i|
  if 2 ** i > N
    puts i-1
    break
  end
end