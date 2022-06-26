N,X = gets.split.map(&:to_i)

s = ('A'..'Z').to_a

n = (X/N.to_f).ceil
puts s[n-1]