# ①配列を定義する
# ②配列の要素を隣同士で比較する
# ③左の数字が右の数字よりも大きかった場合、変数に入れて移動させる
# コメントが入っているかの確認

def bubble_sort(ary)
  p [245, 45, 32, 367, 122, 67, 14, 89]
  length = ary.length
  (1..length).each do |i| 
    (1..(length - i)).each do |index| 
      if ary[index - 1] > ary[index]
        p index - 1
        replace = ary[index - 1]
        ary[index - 1] = ary[index]
        ary[index] = replace
      end
    end
  end
  return ary
end
ary = [245, 45, 32, 367, 122, 67, 14, 89]
p bubble_sort(ary)