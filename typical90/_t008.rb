# 未完成
def darray(n1,n2,ini=nil); Array.new(n1) { Array.new(n2) { ini } } end
N = gets.to_i
S = gets.chomp
T = "atcoder"

mod = 10 ** 9 + 7

# i = 0文字目からN文字目まで
# j = atcoder 0文字目から7文字目まで
dp = darray(N+1,8,0)
