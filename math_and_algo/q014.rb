# 自然数Nを素因数分解する
# 自然数Nを素因数分解した時、√Nを超えるものは高々1つまで
# √Nを超えた数字同士をかけ合わせるとNを超えてしまう
n = gets.to_i

tgt = Math.sqrt(n).to_i

primes = []
# 2から√Nまでの数に対して計算
(2..tgt).each do |i|
  # 割り切れるまで割り続ける
  # 割り切れるごとに素因数に追加
  loop do
    break if n % i != 0

    primes << i
    n = n / i
  end
end
# 最後に1以外の数が残っていればそれも素因数
primes << n if n != 1

puts primes.join(" ") 
