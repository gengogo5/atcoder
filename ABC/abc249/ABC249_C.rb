N,K = gets.split.map(&:to_i)
S = N.times.map { gets.chomp }

# 文字列の組み合わせでビット全探索
mx = 0
1.upto(N) do |i|
  S.combination(i) do |data|
    h = Hash.new(0)
    data.each do |d|
      d.chars.each do |c|
        h[c] += 1
      end
    end
    cnt = 0
    h.each do |k,v|
      cnt += 1 if v == K
    end
    mx = cnt if mx < cnt
  end
end
puts mx