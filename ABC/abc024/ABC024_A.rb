A,B,C,K = gets.split.map(&:to_i)
S,T = gets.split.map(&:to_i)

fee = (S*A)+(T*B)
fee -= (S+T) * C if S + T >= K

p fee
