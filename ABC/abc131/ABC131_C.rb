A,B,C,D = gets.split.map(&:to_i)

divB = B - (B/C) - (B/D) + (B/C.lcm(D))
divA = A-1 - ((A-1)/C) - ((A-1)/D) + ((A-1)/C.lcm(D))

puts divB-divA
