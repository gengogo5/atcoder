a = gets.to_i
b = gets.to_i

# a,bの差、9->0になる場合、0->9になる場合の最小値
p [(a-b).abs,10-a+b,a+10-b].min
