def quick_sort(array)
  p array
  return array if array.length < 2
  pivot = array.shift
  smallers = []
  biggers  = []

  array.each do |num|
    if num < pivot
      smallers << num
    else
      biggers << num
    end
  end
  quick_sort(smallers) + [pivot] + quick_sort(biggers)
  
end

array = [245, 45, 32, 367, 122, 67, 14, 89]
p quick_sort(array)