A,B,K = gets.split.map(&:to_i)

tk = [A - K,0].max
ao = [B - [K - A,0].max,0].max

puts "#{tk} #{ao}"