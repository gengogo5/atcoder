A,B = gets.split.map(&:to_i)

C = A - (B * 2)
p C > 0 ? C : 0

