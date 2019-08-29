N = gets.to_i
S = gets.chomp
max_x = 0
x = 0
S.chars do |c|
  if c == 'I'
    x += 1
  else
    x -= 1
  end
  max_x = x if x > max_x
end
p max_x

