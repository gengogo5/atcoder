N,K = gets.split.map(&:to_i)
d1 = N/K
d2 = d1 + 1

ad1 = (N - (d1 * K)).abs
ad2 = (N - (d2 * K)).abs

puts [ad1,ad2].min