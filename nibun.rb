def nibun_tansaku(array, target)

  head   = 0
  tail   = array.length - 1

  while head <= tail do

  center = (head + tail) / 2

    if array[center] == target
      puts "#{target}は#{center + 1}番目にありました"
      return
    elsif array[center] < target
      head = center + 1
    else
      tail = center - 1
    end

  end

  puts "#{target}は見つかりませんでした"

end

array  = [14, 32, 45, 67, 89, 122, 245, 367]
 
puts "探索したい値を以下から選んで、入力してください"
puts array.join(" , ")
target = gets.to_i
nibun_tansaku(array, target)