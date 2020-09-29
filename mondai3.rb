# 3回の質問で確実に年齢を当てるアプリ
def query_age(array , target)
  head = 0
  tail = array.length - 1
  index = 0
  while index < 3 do
    center = (head + tail) / 2
    index += 1
    if array.length == 1 or array[center] == target
      puts "Aさんは#{target}歳ですか？"
      puts "はい"
      puts "#{index}回、質問しました"
      return
    elsif array[center] < target
      puts "Aさんの年齢は#{array[center]}歳以上ですか？"
      puts "はい"
      head = center + 1
    else
      puts "Aさんの年齢は#{array[center]}歳以上ですか？"
      puts "いいえ"
      tail = center - 1
    end
    puts "#{index}回、質問しました"
  end
  puts "#{target}は見つかりませんでした"
end

array  = [22, 23, 24, 25, 26, 27, 28, 29]
puts "BさんはAさんの年齢を入力してください"
target = gets.to_i
query_age(array , target)