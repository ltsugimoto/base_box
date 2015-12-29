# -*- coding:utf-8 -*-
# if文
if true
  puts "標示されるよ！"
end

if false
  puts "標示されないよ"
end

puts "これも！" if true

puts "残念ながら、これも見えない" if false

unless true
  puts "unlessは、ifの逆ですが、これは見えないです"
end

unless false
  puts "unlessは、ifの逆ですので、これが見えます"
end

# flow
puts 'start while'
a = 0
while a < 10
  puts a
  a = a + 1
end
puts 'end while'

puts 'start each'
arr = [1, 2, 3]
arr.each do |a|
  puts a
end
puts 'end each'

puts 'start for'
for a in 0..5
  puts a
end
puts 'end for'

puts 'start case'
a = 1
case a
when 1
  puts 'これ'
when 2
  puts 'じゃない'
else
  puts 'じゃない'
end
puts 'end case'

puts 'start times'
a = 1
3.times do |a|
  puts a
end
puts 'end times'

puts 'start times'
a = 1
3.upto(6) do |a|
  puts a
end
puts 'end times'
