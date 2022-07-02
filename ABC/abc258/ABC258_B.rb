N = gets.to_i
A = N.times.map { gets.chomp.chars }

ans = []
N.times do |i|
  N.times do |j| # 始点用ループ 100
    # 横
    num = ""
    N.times do |k|
      num << A[i][(j+k) % N]
    end
    ans << num.to_i

    num = ""
    N.times do |k|
      num << A[i][(j-k) % N]
    end
    ans << num.to_i

    # 縦
    num = ""
    N.times do |k|
      num << A[(i+k) % N][j]
    end
    ans << num.to_i

    # 縦
    num = ""
    N.times do |k|
      num << A[(i-k) % N][j]
    end
    ans << num.to_i

    # 右斜
    num = ""
    N.times do |k|
      num << A[(i-k) % N][(j+k) % N]
    end
    ans << num.to_i

    # 右斜
    num = ""
    N.times do |k|
      num << A[(i+k) % N][(j-k) % N]
    end
    ans << num.to_i

    # 左斜
    num = ""
    N.times do |k|
      num << A[(i+k) % N][(j+k) % N]
    end
    ans << num.to_i

    # 左斜
    num = ""
    N.times do |k|
      num << A[(i-k) % N][(j-k) % N]
    end
    ans << num.to_i
  end
end

p ans.max