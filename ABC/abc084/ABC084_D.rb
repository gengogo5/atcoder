class Eratoshenes
  attr_reader :is_prime
  def initialize(n)
    @is_prime = Array.new(n+1, true) # 素数マーク
    @minfactor = Array.new(n+1, -1) # 素因数分解用
    @primes = []

    @is_prime[1] = false
    @minfactor[1] = 1

    (2..n).each do |q|
      next unless @is_prime[q]
      # 最も小さいバツの付いていない数字nは素数
      @primes << q 
      @minfactor[q] = q
    
      (q*2).step(n, q) do |k|
        # nの倍数にバツを付けていく
        @is_prime[k] = false
    
        # qの倍数はqで割り切れる
        @minfactor[k] = q if @minfactor[k] == -1
      end
    end
  end

  def factorize(n)
    ans = []
    while n > 1
      k = @minfactor[n]
      exp = 0

      # nを最小の素因数kで割り切れるだけ割る
      while @minfactor[n] == k
        n /= k
        exp += 1
      end
      ans << [k, exp]
    end
    ans
  end
end

Q = gets.to_i
l,r = Q.times.map { gets.split.map(&:to_i) }.transpose

er = Eratoshenes.new(100000)
pr = er.is_prime

# 2017に似た数の累積和
likes = Array.new(100001,0)
(1..100000).each do |i|
  likes[i] = likes[i-1]
  likes[i] += 1 if i.odd? && pr[i] && pr[(i+1)/2]
end

Q.times do |i|
  puts likes[r[i]] - likes[l[i]-1]
end
