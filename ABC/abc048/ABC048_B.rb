a,b,x = gets.split.map(&:to_i)
def f(n,x)
  if n >= 0
    n/x+1
  else
    0
  end
end
# 対象範囲はa以上b以下なので、差を求めるにはa-1を使う
p f(b,x) - f(a-1,x)
