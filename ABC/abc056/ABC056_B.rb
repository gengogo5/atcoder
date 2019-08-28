W,a,b = gets.split.map(&:to_i)
ra = (a..(a+W)).to_a
rb = (b..(b+W)).to_a
# Aの範囲からBの範囲を引いてsizeが変動したら連結している
if ra.size != (ra - rb).size
  p 0
else
  p [(a+W-b).abs,(b+W-a).abs].min
end
