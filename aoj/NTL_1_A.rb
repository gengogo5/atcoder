# https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=NTL_1_A&lang=ja

N = gets.to_i
n = N
factors = []

(2..(Math.sqrt(N))).each do |i|
  while n % i == 0
    factors << i
    n /= i
  end
  break if n == 1
end

factors << n if n != 1 # 素数の時

puts "#{N}: #{factors.join(" ")}"