N,A,B = gets.split.map(&:to_i)

allsum = ((N+1)*N)/2
# Aの倍数の総和
asum = (N/A)*(A+((N/A)*A))/2
# Bの倍数の総和
bsum = (N/B)*(B+((N/B)*B))/2
# A*Bの倍数の総和
l = A.lcm(B)
absum = (N/l)*((l)+((N/l)*(l)))/2

ans = 0
if A % B == 0
  ans = allsum - bsum
elsif B % A == 0
  ans = allsum - asum
else
  ans = allsum - asum - bsum + absum
end

puts ans