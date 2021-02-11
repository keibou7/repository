# ①配列を定義する
# ②配列の要素を隣同士で比較する
# ③左の数字が右の数字よりも大きかった場合、変数に入れて移動

def bubble_sort(ary)
  p ary
  length = ary.length
  (1..(length-1)).each  do |i| 
    (1..(length - i)).each  do |index|
      former = index - 1 
      puts ary[former]
      if ary[former] > ary[index]
        replace      = ary[former]
        ary[former]  = ary[index]
        ary[index]   = replace
        puts ary[index]
      end 
    end
  end
  ary
end

p bubble_sort([63,56,72,18])