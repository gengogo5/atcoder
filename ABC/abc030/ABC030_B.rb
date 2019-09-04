h,m = gets.split.map(&:to_i)

# 短針の角度
# 30h + ((m/60) * 30)
s_angle = (h%12 * 30) + m/2.0

# 長針の角度
l_angle = 6 * m

p [(s_angle - l_angle).abs, 360 - (l_angle - s_angle).abs].min
