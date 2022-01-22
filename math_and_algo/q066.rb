N,K = gets.split.map(&:to_i)

# 余事象を求める
ptn = 0
(1..N).each do |a|
  bs = [1, a-(K-1)].max
  (bs..([N, a+(K-1)].min)).each do |b|
    cs = [1, a-(K-1)].max
    (cs..([N, a+(K-1)].min)).each do |c|
      ptn += 1 if ((b-c).abs <= K - 1)
    end
  end
end

puts N**3 - ptn
