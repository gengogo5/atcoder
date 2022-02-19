def isPrime(i)
  # 1は素数ではない
  return false if i == 1

  # 2は素数
  return true if i == 2

  judge = true
  (2..i).each do |j|
      # root i までで十分
      break if j > i**0.5 
      if i % j == 0
            judge = false
            break
      end
  end
  return judge   
end

A,B,C,D = gets.split.map(&:to_i)

can_make = false
can_make_num = 0
A.upto(B).each do |i|
  # iを使って青木くんが素数を作れるか
  can_make = false
  C.upto(D).each do |j|
    if isPrime(i+j)
      can_make = true
    end
  end
  can_make_num += 1 if can_make
end

puts can_make_num == (B-A+1) ? "Aoki" : "Takahashi"
