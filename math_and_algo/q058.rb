N,X,Y = gets.split.map(&:to_i)

ds = (X.abs + Y.abs)

if N < ds
  # 移動距離が短くて届かない
  puts 'No'
else
  if N.odd? == ds.odd?
    puts 'Yes'
  else
    # 偶奇が一致していないと1マス足りずに届かない
    puts 'No'
  end
end