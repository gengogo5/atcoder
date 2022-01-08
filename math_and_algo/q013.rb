# 約数列挙
N = gets.to_i

divs = []
tgt = Math.sqrt(N).to_i # √Nまで調べればよい

(1..tgt).each do |i|
  next if N % i != 0 # 割り切れなければ次へ
  divs << i # 割り切れたらiは約数
  if i != N / i
    divs << N / i # Nをiで割った数も約数。重複除外の為if文で確認
  end
end

puts divs.join("\n")
