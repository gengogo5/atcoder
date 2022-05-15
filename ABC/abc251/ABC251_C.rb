N = gets.to_i
S = []
T = []
origin = []
poe = {}
N.times do |i|
  s,t = gets.chomp.split
  S << s
  T << t.to_i
  origin << i if poe[s].nil? # オリジナルの要素番号を配列へ
  poe[s] = 1
end

mx = [0,0]
origin.each do |oidx|
  mx = [oidx, T[oidx]] if T[oidx] > mx[1]
end

puts mx[0] + 1