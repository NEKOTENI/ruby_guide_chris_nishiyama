#上のenglishNumberを拡張してみましょう。 最初にthousand(千の桁)を導入してください。上のプログラムでは 'ten hundred'となっているところを'one thousand'を返すように、 あるいは、'one hundred hundred'の代わりに'ten thousand'を 返すようにします。

def englishNumber number
  if number < 0  #  負の数は不可です。
    return '負でない数を入力してください.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''  #  これが最終的に返す文字列です。

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  #  上のほうの桁から表示させていって、"remain" には
  #  まだ残っている数を入れます。
  #  "write" にはこれからすぐに出力させるための
  #  一桁分の数を入れます。
  #  write = 該当の桁、remain = それ以外の桁

  remain = number

  write = remain/1000          #  1000の桁以上の桁をwriteに入れます。
  remain = remain - write*1000  #  残り3桁をremainに残します。

  if write > 0

    thousands  = englishNumber write
    numString = thousands + ' thousand'

    if remain > 0
      #  この時、'two hundredfifty-one'のように
      #  ならないためにスペースを入れます。
      numString = numString + ' '
    end
  end

  write = remain/100
  remain = remain - write*100

  if write > 0

    hundreds = englishNumber write
    numString = numString + hundreds + ' hundred'

    if remain > 0
      numString = numString + ' '
    end
  end

  write = remain/10          #  今度は十の桁です。
  remain = remain - write*10  #  そして十の桁をひきます。

  if write > 0
    if ((write == 1) and (remain > 0))
      numString = numString + teenagers[remain-1]
      remain = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if remain > 0
      numString = numString + '-'
    end
  end

  write = remain  #  ここで、一の桁を書き出します。
  remain = 0     #  この桁を引きます。(0になります。)

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString

end

puts englishNumber(1920)

