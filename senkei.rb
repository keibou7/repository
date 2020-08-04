def senkei_tansaku

  array  = [ 14, 32, 45, 67, 89, 122, 245, 367 ]
  puts "探索したい値を以下から選んで、入力してください"
  puts array.join(" , ")
  target = gets.to_i
  
  array.each_with_index do |num, index|
    # もし、探してる値が見つかった場合は、途中でも抜ける
    if num == target
      puts "探してる値は#{index + 1}番目にあります"
      return
    end
  end
  
end
  
senkei_tansaku