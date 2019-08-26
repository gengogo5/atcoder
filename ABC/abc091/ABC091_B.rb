N = gets.to_i
bh = Hash.new(0)
N.times { bh[gets.chomp] += 1 }

M = gets.to_i
rh = Hash.new(0)
M.times { rh[gets.chomp] += 1 }

max_y = 0
bh.keys.each do |k|
  max_y = bh[k] - rh[k] if bh[k] - rh[k] > max_y
end
p max_y
