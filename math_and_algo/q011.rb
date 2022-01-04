N = gets.to_i

primes = [2] # 2は例外なので最初から入れる
(2..N).each do |n|
  next if n.even?
  is_prime = true
  # 自身は割り切れるので除外
  (2...n).each do |n2|
    is_prime = false if n % n2 == 0
  end
  primes << n if is_prime
end

puts primes.join(" ")

