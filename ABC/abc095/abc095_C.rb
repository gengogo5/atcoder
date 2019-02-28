A,B,C,X,Y = gets.split.map(&:to_i)

x = X
y = Y

cost = 0
if (A+B) >= C*2
  c_num = [X,Y].min
  cost += c_num * C * 2

  x -= c_num
  y -= c_num

  if x!=0 && y==0
    if A <= C * 2
      cost += x * A
    else
      cost += (2 * x * C)
    end
  elsif x==0 &&y!=0
    if B <= C * 2
      cost += y * B
    else
      cost += (2 * y * C)
    end
  end
else
  cost += (A*x) + (B*y)
end
puts cost
