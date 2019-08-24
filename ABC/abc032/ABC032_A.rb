a = gets.to_i
b = gets.to_i
n = gets.to_i

loop do
  if n%a==0 && n%b==0
    puts n
    break
  end
  n += 1
end

