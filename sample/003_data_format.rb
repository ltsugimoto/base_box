# -*- coding:utf-8 -*-
# Fixnum
a = 1
puts "#{a} => #{a.class}"

# Float
a = 0.1
puts "#{a} => #{a.class}"

# String
a = 'string'
puts "#{a} => #{a.class}"

# Symbol
b = :hogehoge
puts "#{b} => #{b.class}"

# stringの比較
puts a === 'string'
puts a.object_id
puts 'string'.object_id

# symbolの比較
puts b === :hogehoge
puts b.object_id
puts :hogehoge.object_id

# Array
a = [1 ,2 ,3, '1', 'hoge', :fuga, [1, 2 ,3]]
puts "#{a} => #{a.class}"

puts a[0].to_s
puts a[-2].to_s
puts a[2..4].to_s

# Hash
a = {a: 1, b: 2, c: 3}
b = {:a => 1, :b => 2, :c => 3}
c = {"a" => 1, "b" => 2, "c" => 3}
puts "#{a} => #{a.class}"
puts "#{b} => #{b.class}"
puts "#{c} => #{c.class}"

puts a[:a]
puts b[:b]
puts c["c"]
