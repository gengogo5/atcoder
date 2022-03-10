A,B,C,X,Y = gets.split.map(&:to_i)

# ABピザを買う枚数を全探索する

min = Float::INFINITY
0.upto(201010).each do |ab|
  # ABピザをab枚買う
  sm = C * ab
  
  # ABピザab枚で作れるAピザとBピザの枚数
  x = X - ab / 2
  y = Y - ab / 2

  # 不足分を単品で買う
  sm += x * A if 0 < x
  sm += y * B if 0 < y

  min = [min, sm].min
end

puts min
