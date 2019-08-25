N = gets.to_i
S = N.to_s.chars.join('+')
puts N % eval(S) == 0 ? 'Yes' : 'No'

