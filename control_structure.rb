#• "99本のビールが壁に..." 遠足などでよく歌われる古典的な童謡の歌詞、"99 Bottles of Beer on the Wall" を 出力するプログラムを書いてみましょう。 （訳註:マザーグースの歌なのですが、日本ではあまりメジャーではないので、 出力例をあげておきます。)
bottles = 99

while bottles != 0
	puts bottles.to_s + " bottles of beer on the wall"
	puts bottles.to_s + " bottles of beer."
	puts "Take one down and pass it around"
	bottles -= 1
	puts bottles.to_s + " bottles of beer on the wall."
	puts " "
end

#• 耳の遠いおばあちゃんのプログラムを書いてみましょう。 おばあちゃんに何を言っても(何をタイプしても)、叫ばない限り (つまり、全部大文字でタイプしない限り)、 は?! もっと大きな声で話しておくれ、坊や! と返事をします。もし叫んだときは、彼女はあなたの言葉を聞いて (少なくとも聞いた気がして)、 いやー、1938年以来ないねー! と大声で返事をします。 プログラムにちょっと真実味 を持たせるため、 1930年から1950年のランダムな数字で毎回違う年を叫ぶようにしましょう。 (この部分はオプションです。メソッドの 章で、Rubyの乱数発生法の節を読んでいたら簡単でしょう。) あなたはBYEと叫ぶまでおばあちゃんとの会話から逃れられません。
say_to_granma = gets.chomp

while say_to_granma != "BYE"
	if say_to_granma != say_to_granma.upcase
		puts "もっと大きな声で話しておくれ、坊や！"
		say_to_granma = gets.chomp
	else
		year = 1930 + (rand(21))
		puts "いやー" + year.to_s + "年以来ないねー!"
		say_to_granma = gets.chomp
	end
end

#• 上で作った、「耳の遠いおばあちゃんのプログラム」を拡張しましょう。 おばあちゃんはあなたに行って欲しくないのです。 あなたがBYEと叫んでもおばあちゃんは聞こえないふりをします。 BYEを3回連続で 叫ばないといけないように変更してみてください。 BYEと3回叫んでも 連続していない限り、おばあちゃんとの会話は続くようになっているか プログラムをテストして確認してみましょう。
say_to_granma1 = gets.chomp

while say_to_granma1 != "BYE"
	if say_to_granma1 != say_to_granma1.upcase
		puts "もっと大きな声で話しておくれ、坊や！"
		say_to_granma1 = gets.chomp
	else
		year = 1930 + (rand(21))
		puts "いやー" + year.to_s + "年以来ないねー!"
		say_to_granma1 = gets.chomp
	end
end
puts "最近耳が遠くてねぇ。もう一回言っておくれ、坊や"

say_to_granma2 = gets.chomp

while say_to_granma2 != "BYE"
	if say_to_granma2 != say_to_granma2.upcase
		puts "もっと大きな声で話しておくれ、坊や！"
		say_to_granma2 = gets.chomp
	else
		year = 1930 + (rand(21))
		puts "いやー" + year.to_s + "年以来ないねー!"
		say_to_granma2 = gets.chomp
	end
end
puts "何だって？もう一度言っとくれ？坊や！"

say_to_granma3 = gets.chomp

while say_to_granma3 != "BYE"
	if say_to_granma3 != say_to_granma3.upcase
		puts "もっと大きな声で話しておくれ、坊や！"
		say_to_granma3 = gets.chomp
	else
		year = 1930 + (rand(21))
		puts "いやー" + year.to_s + "年以来ないねー!"
		say_to_granma3 = gets.chomp
	end
end
puts "ああ、もう帰るんだね。気をつけてお帰り、坊や"

#• うるう年。 開始の年と終わりの年を聞いて、その間にあるすべてのうるう年を (もし開始や終了の年がうるう年だったらそれも含めて)表示するプログラムを書きましょう。 うるう年は(1984年とか2004年のように)4で割り切れる数の年です。ただし、100で割り切れる年は うるう年ではなくて (たとえば1800年や1900年)、さらに、それは 400で割り切れない限り です。(つまり、1600年や2000年はうるう年です。) (確かに、このルールは紛らわしいです。でも7月が冬の真ん中に来てしまうのはもっと紛らわしいと 思いませんか?このルールがなかったらそうなったかもしれないのです。)
puts '開始の年を教えて下さい'
startYear = gets.chomp.to_i
puts '終わりの年を教えて下さい'
endYear = gets.chomp.to_i
finishYear = endYear + 1

puts "うるう年は以下の通りです"

while startYear != finishYear
    a = startYear % 4
    b = startYear % 100
    c = startYear % 400

    if a == 0 and (b != 0 or c == 0)
        puts startYear
    end

    startYear += 1
end

