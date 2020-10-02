
# クイックソートで値を並び替える
def quick_sort(ary)
  return ary if ary.length < 2
  pivot = ary.shift
  smaller = []
  bigger  = []
  ary.each do |num|
    if num < pivot
      smaller << num
    else
      bigger << num
    end
  end
  quick_sort(smaller) + [pivot] + quick_sort(bigger)
end
 
# 二分探索で値を探し出す
def binary_search(ary)
  puts "探索したい値を以下から選んで、入力してください"
  puts ary.join(" , ")
  target = gets.to_i
  head = 0
  tail = ary.length - 1
  while head <= tail do
    center = (head + tail) / 2
    if ary[center] == target
      puts "#{target}は#{center + 1}番目にありました"
      return
    elsif ary[center] < target
      head = center + 1
    else
      tail = center - 1
    end
  end
  puts "#{target}は見つかりませんでした"
end
 
ary1  = [245, 45, 32, 367, 122, 67, 14, 89]

# クイックソートで並び替えた配列をary2に代入して、二分探索を実行
ary2 = quick_sort(ary1)
binary_search(ary2)
 