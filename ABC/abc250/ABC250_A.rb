H,W = gets.split.map(&:to_i)
R,C = gets.split.map(&:to_i)

d1 = 1
d2 = 1
d3 = 1
d4 = 1

# 高さが1
if H == 1
  d1 = 0
  d2 = 0
end

# 幅が1
if W == 1
  d3 = 0
  d4 = 0
end

d1 = 0 if R == 1
d2 = 0 if R == H
d3 = 0 if C == W
d4 = 0 if C == 1

puts d1 + d2 + d3 + d4