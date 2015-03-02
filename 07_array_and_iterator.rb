names = ['Ada', 'Belle', 'Chris']

puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]

languages = ['English', '日本語', 'Ruby']

languages.each do |lang|
	puts '私は' + lang + 'が好きだー！'
	puts 'あなたは？'
end

puts 'では、C++についても聞かせて下さい！'
puts '...'

3.times do
	puts 'ヒップ　ヒップ　フレー！'
end

#練習問題#
#好きな数だけ単語の入力をしてもらい(1行に1単語、最後はEnterだけの空行)、 アルファベット順に並べ変えて出力するようなプログラムを書いてみましょう

words = []
your_word = nil

puts "あなたの好きな単語を入力して下さい。"
puts "最後はEnterだけの空行にして下さい。"

while your_word != ""
	your_word = gets.chomp
	words << your_word
	puts "好きな単語を入力して下さい。終わらせる場合はEnterだけ押して下さい。"
end

puts "単語をアルファベット順に並べます"
puts words.sort


#上のプログラムをsortメソッドなしで 書けますか。→書けませんでした。


#以前、メソッドの章で書いた 目次を表示するプログラムを修正してみましょう。
#その際、プログラムの最初で 目次の情報(つまり、章の名前やページ番号など)をすべてひとつの配列にしまいます。
#その後、その配列から情報を取り出して美しくフォーマットされた目次を出力します。

lineWidth = 40
mokuji = ["目  次".center(lineWidth), "1章:  数".ljust(lineWidth/2) + "p. 1".rjust(lineWidth/2), "2章:  文字".ljust(lineWidth/2) + "p. 72".rjust(lineWidth/2), "3章:  変数".ljust(lineWidth/2) + "p. 118".rjust(lineWidth/2)]
puts mokuji

