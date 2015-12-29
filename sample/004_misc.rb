# -*- coding:utf-8 -*-
# その他
# 式の展開
a = '#{1 + 1}点'
puts a
b = "#{1 + 1}点"
puts b

# パーセント記法
a = %i( hoge piyo fuga )
puts a.to_s

b = %w* hoge piyo fuga *
puts b.to_s

c = %q!裏庭には#{1 + 1}羽、庭には#{1 + 1}羽、鶏がいる!
puts c
d = %Q!裏庭には#{1 + 1}羽、庭には#{1 + 1}羽、鶏がいる!
puts d
