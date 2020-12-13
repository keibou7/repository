# ①配列を定義する
# ②配列の要素を隣同士で比較する
# ③左の数字が右の数字よりも大きかった場合、変数に入れて移動させる
# コメントが入っているかの確認

def bubble_sort(ary)
  p [63,56,72,18]
  length = ary.length
  (1..length).each do  |number| 
    (1..(length-number)).each  do |latter| 
      former = latter - 1 
      puts ary[former]
      if ary[former] > ary[latter]
        replace = ary[former]
        ary[former] = ary[latter]
        ary[latter] = replace
        puts ary[latter]
      end 
    end
  end
  return  ary
end
p bubble_sort([63,56,72,18])