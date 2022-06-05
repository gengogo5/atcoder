N = gets.to_i

ans = Array.new(N) { Array.new }
N.times do |i|
  (i+1).times do |j|
    if j == 0 || j == i
      ans[i] << 1
    else
      ans[i] << ans[i-1][j-1] + ans[i-1][j]
    end
  end
end

ans.each do |line|
  puts line.join(' ')
end