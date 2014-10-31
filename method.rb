#練習問題

#• 「怒ったボス」のプログラムを書いてみましょう。 まず、無作法に何が望みか聞いてきます。 で、何を答えようと「怒ったボス」はそれを叫び返して、あなたを首にします。 たとえば、もし給料上げてくださいとタイプしたとすると なにぃ? "給料上げてください" だとー!! おまえは首だ!! と、叫び返してきます。
puts "お前の望みは何だ？！"
nozomi = gets.chomp
puts "なにぃ？！「" + nozomi + "」だとー！！お前は首だ！！"



#• center, ljust, そして rjust を使ってもう少し何かやってみましょう。こんな感じの「目次」を表示する プログラムを書いてみてください。
lineWidth = 40
index = "目　次"
space = "   "
string1 = "１章：　数"
string2 = "２章：　文字"
string3 = "３章：　変数"
page1 = "p.1"
page2 = "p.72"
page3 = "p.118"

puts index.center lineWidth
puts space.center lineWidth
puts string1.ljust(lineWidth/2) + page1.rjust(lineWidth/2)
puts string2.ljust(lineWidth/2) + page2.rjust(lineWidth/2)
puts string3.ljust(lineWidth/2) + page3.rjust(lineWidth/2)

