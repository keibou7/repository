# プルリク用コメント
# 線形探索
# ①配列を定義する
# ②探したい値を決める
# ③1つずつ当てをつけにいく

def linear_search(array, index ,target)

  # 探してる値が見つからない間は、indexに1を足して、配列の次の値を探しにいく
  # ただ、配列の個数以上にくりかえすと無限ループになるため、配列全てを探し終わったら終了する
  while index < array.length
    # もし、探してる値が見つかった場合は、途中でもwhile文を抜ける
    if array[index] == target
      break
    else
      index = index + 1
    end
  end

  # while文を抜けた時に、配列の中身の個数よりもindexの値が低かった場合は、if文でbreakした場合しかあり得ないので、その時の配列番号で出力する
  if index < array.length - 1
    puts "探してる値は#{index}番目にあります"
  else
    # while文を抜けた時に、配列の中身の個数よりもindexの値が大きいもしくは同じだった場合は、値が見つからなくてwhile文を抜けているから
    puts '探してる値は見つかりませんでした'
  end

end

array  = [7, 4, 3, 8, 2]
# 配列の番号
index  = 0
target = 3
linear_search(array, index, target)