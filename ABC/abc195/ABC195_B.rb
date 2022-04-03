A,B,W = gets.split.map(&:to_i)

# 選ばれるみかんの個数で全探索
max_n = 0
min_n = Float::INFINITY
1.upto(1000000) do |n|
  if (A * n <= 1000 * W && 1000 * W <= B * n)
    max_n = [max_n,n].max
    min_n = [min_n,n].min
  end
end

puts max_n == 0 ? 'UNSATISFIABLE' : "#{min_n} #{max_n}"