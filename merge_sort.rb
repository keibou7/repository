def merge_sort(array)
  length = array.length
  if length <= 1
    return array
  end
  array_1 = merge_sort(array[0..((length - 1)/2)])
  array_2 = merge_sort(array[((length + 1)/2)..(length - 1)])
  i = 0
  while i < length do
    if array_1[0] < array_2[0]
      array[i] = array_1.shift
    else
      array[i] = array_2.shift
    end
    i += 1
    if array_1.length == 0
      while i < length do
        array[i] = array_2.shift
        i += 1
      end
    elsif array_2.length == 0
      while i < length do
        array[i] = array_1.shift
        i += 1
      end
    end
  end
  return array
end

array = [245, 45, 32, 367, 122, 67, 14, 89]
p array
p merge_sort(array)