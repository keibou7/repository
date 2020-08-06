# ①最小値を一番頭に持ってくる
# ②それを継続する

def select_sort(array)
  p array
  length = array.length

  (0...length).each do |i|
    min = array[i]
    min_num = i

    ((i+1)...length).each do |j| 
      if min > array[j]
        min = array[j]
        min_num = j
      end 
    end 
    tmp = array[i]
    array[i] = min 
    array[min_num] = tmp
  end 

  return array
end

array = [245, 45, 32, 367, 122, 67, 14, 89]
p select_sort(array)