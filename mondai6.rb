# 問題6
# くじ引き
# くじ引きのアルゴリズム
# 1000円ごとの買い物に応じて1回引ける
# 当たりの数字はランダムに決まる
# 1から10までの好きな数字を選ぶ
# 1等から4等まである

def draw_lottery
  draw_number = input_shopping_amount
  lottery = [ 1 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,10 ]
  prize_nums = pick_prize_number(lottery)

  while draw_number > 0
    puts '1〜10の中から好きな数字を入力してください'
    puts lottery.join(" , ")
    target = gets.to_i

    if target == prize_nums[0]
      puts "おめでとうございます！#{target}は1等です！\n3000円分の商品券です！"
    elsif target == prize_nums[1]
      puts "惜しかった！#{target}は2等です！\n1000円分の商品券です！"
    elsif target == prize_nums[2]
      puts "もうちょっとでした！#{target}は3等です！\n500円分の商品券です！"
    else
      puts '残念！ハズレです！'
    end

    draw_number -= 1
    puts "残り#{draw_number}回です"
  end

  puts 'くじ引きは以上となります'
end

def pick_prize_number(array)
  shuffled = array.shuffle
  [shuffled[0], shuffled[1], shuffled[2]]
end

def input_shopping_amount
  puts "今日はいくらお買い物をしましたか？"
  shopping_amount = gets.to_i
  puts "#{(shopping_amount / 1000).floor}回くじが引けます"
  (shopping_amount / 1000).floor
end

draw_lottery
