A = gets.to_i
B = gets.to_i
C = gets.to_i

s = [A,B,C].sort.reverse
puts s.index(A)+1
puts s.index(B)+1
puts s.index(C)+1
