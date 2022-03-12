N = gets.to_i
S = gets.chomp

cnt = 0
(0..9).each do |i|
  i_idx = S.index(i.to_s)
  next unless i_idx
  (0..9).each do |j|
    j_idx = S.index(j.to_s, i_idx+1)
    next unless j_idx
    (0..9).each do |k|
      k_idx = S.index(k.to_s, j_idx+1)
      cnt += 1 if k_idx
    end
  end
end

puts cnt