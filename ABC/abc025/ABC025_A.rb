S = gets.chomp #長さ5
N = gets.to_i

s = S.chars.sort
i=0
s.each do |c|
  s.each do |c2|
    i+=1
    if i == N
      puts "#{c}#{c2}"
      exit
    end
  end
end
