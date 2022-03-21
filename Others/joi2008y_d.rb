# https://atcoder.jp/contests/joi2008yo/tasks/joi2008yo_d

# 探したい星座(input)
m = gets.to_i
mx = []
my = []
m.times do |i|
  x,y = gets.split.map(&:to_i)
  # 1つ目の星を起点に相対座標を記録する
  if i == 0
    mx[i] = x
    my[i] = y
  else
    mx[i] = x - mx[0]
    my[i] = y - my[0]
  end
end

# 写真に写っている星(input)
n = gets.to_i
nx = []
ny = []
# 星の存在をO[1]で引けるようにする
exists = Hash.new(false)
n.times do |i|
  x,y = gets.split.map(&:to_i)
  exists[x * 1000_000 + y] = true
  nx[i] = x
  ny[i] = y
end

# 星座全探索
# O(mn)でできるはず
n.times do |i|
  # nx[i],ny[i]をmx[0],my[0]と仮定して残りのm-1個の存在確認をする
  found = true
  1.upto(m-1) do |j|
    x = nx[i] + mx[j]
    y = ny[i] + my[j]
    unless exists[x * 1000_000 + y]
      found = false
      break
    end
  end
  if found
    puts "#{nx[i]-mx[0]} #{ny[i]-my[0]}"
    break
  end
end