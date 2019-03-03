A,B,K = gets.split.map(&:to_i)

nums = Array.new

(1..100).each do |n|
  if A%n==0 && B%n==0
    nums << n
  end
end

puts nums[nums.length-K]
