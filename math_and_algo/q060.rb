N = gets.to_i
# 1個 先手
# 2個 先手
# 3個 先手
# 4個 後手
# 5個 先手
# 6個 先手
# 7個 先手
# 8個 後手

puts N % 4 == 0 ? 'Second' : 'First'
