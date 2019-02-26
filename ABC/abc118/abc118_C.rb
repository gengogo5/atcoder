N = gets.to_i
HPs = gets.split.map(&:to_i)

#シード作り
random=Random.new(1)

#死ぬまでループ
loop do
  attacker=random.rand(N)
  diffender=0
  loop do
    diffender=random.rand(N)
    unless attacker == diffender
      break
    end
  end


  break

end
