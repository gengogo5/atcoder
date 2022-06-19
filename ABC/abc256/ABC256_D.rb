N = gets.to_i

nums = Array.new(200002,0)

L,R = N.times.map { gets.split.map(&:to_i) }.transpose

N.times do |i|
  nums[L[i]] += 1
  nums[R[i]] -= 1
end

stk = []
ans = []
_in = 0

nums.each_with_index do |n,idx|
  next if n == 0
  if n >= 1
    _in = idx if stk.size == 0 # 入り口を記録
    n.times do
      stk << 1
    end
  else
    (-1 * n).times do
      stk.shift
    end
    if stk.size == 0
      ans << [_in, idx]
    end
  end
end

ans.each do |a|
  puts "#{a[0]} #{a[1]}"
end