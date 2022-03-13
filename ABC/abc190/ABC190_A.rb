A,B,C = gets.split.map(&:to_i)

# 高橋くん先手
if C == 0
  puts A <= B ? "Aoki" : "Takahashi"
else
  puts B <= A ? "Takahashi" : "Aoki"
end