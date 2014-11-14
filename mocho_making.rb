def num_in_english(number)
  if number < 0
    return "負でない数を入力してください。"
  end
  if number == 0
    return "zero"
  end
  
  output = ""
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  
  remain = number
  write = remain/100
  remain = remain - write*100
  
  if write > 0
    hundred = num_in_english(write)
    output = output + hundred + " hundred"    
    if remain > 0
      output = output + " "
    end
  end
  
  write = remain/10
  remain = remain - write*10
  
  if write > 0
    if ((write == 1) and (remain > 0))
      output = output + teenagers[remain-1]
      remain = 0  #teenagersで１の位にも対応してくれるから１の位を出力させない。そうでないと、例）eleven oneになる。
    else
      output = output + tens_place[write-1]
    end
    if remain > 0
      output = output + " "
    end
  end
  
  write = remain
  remain = 0
  
  if write > 0
    output = output + ones_place[write-1]
  end
  output
end


num_in_english(1900)

