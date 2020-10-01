# マージソートで値を並び替える

def merge_sort(array)
  a_length = array.length
  return array if a_length <= 1
 
  mid = a_length / 2
  left_array  = array[0...mid]
  right_array = array[mid...a_length]
  merge(merge_sort(left_array), merge_sort(right_array))
end
 
def merge(left_array, right_array)
  sorted = []
  until left_array.empty? || right_array.empty?
    if left_array.first <= right_array.first
      sorted << left_array.shift
    else
      sorted << right_array.shift
    end
  end
  sorted.concat(left_array).concat(right_array)
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
# マージソートで並び替えた配列をary2に代入して、二分探索を実行
ary2 = merge_sort(ary1)
binary_search(ary2)