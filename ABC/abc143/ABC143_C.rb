N = gets.to_i
S = gets.chomp

prev = '0'
num = 0
S.chars do |c|
  num += 1 if c != prev
  prev = c
end

p num
