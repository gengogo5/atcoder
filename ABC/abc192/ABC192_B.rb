S = gets.chomp

yominikui = true
S.chars.each.with_index do |c,i|
  if i.even?
    if ('A'..'Z').to_a.include?(c)
      yominikui = false
      break
    end
  else
    if ('a'..'z').to_a.include?(c)
      yominikui = false
      break
    end
  end
end
puts yominikui ? 'Yes' : 'No'
