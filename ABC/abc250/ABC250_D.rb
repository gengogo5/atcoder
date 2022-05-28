class Eratoshenes
  attr_reader :is_prime, :primes
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

N = gets.to_i
er = Eratoshenes.new(1000001)
primes = er.primes

# require 'prime' でもよかった

nums = 0
primes.each_with_index do |pr,i|
  mxq = primes.bsearch_index { |x| pr * (x ** 3) > N }
  break if mxq - i - 1 <= 0 # pr ** 3 > N でbreakの条件も含んでいる
  nums += (mxq-i-1)
end

puts nums