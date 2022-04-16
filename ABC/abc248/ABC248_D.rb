N = gets.to_i
A = gets.split.map(&:to_i)

find_at = Array.new(N+1) {Array.new}
N.times do |i|
  find_at[A[i]] << i+1
end

Q = gets.to_i
qs = Q.times.map { gets.split.map(&:to_i) }

qs.each do |(l,r,x)|
  left = find_at[x].bsearch_index { |n| n >= l }
  right = find_at[x].bsearch_index { |n| n > r } || find_at[x].length
  num = if left.nil?
          0
        else
          right - left
        end
  puts num
end