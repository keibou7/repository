# 背の順をクイックソートで並び替えて、何番目に誰が来るかを出力するアプリ

def adjust_order_of_height(ary)
  return ary if ary.length < 2
  pivot = ary.shift
  smaller = []
  bigger  = []
 
  ary.each do |num|
    if num[:height] < pivot[:height]
      smaller << num
    else
      bigger << num
    end
  end
  adjust_order_of_height(smaller) + [pivot] + adjust_order_of_height(bigger)
end

def search_order(ary)
  target = gets.to_i
  puts "#{target}番目は#{ary[target - 1][:name]}です"
end

ary1 = [
  {name: '佐藤' , height: 170},
  {name: '高橋' , height: 171},
  {name: '鈴木' , height: 123},
  {name: '田中' , height: 167},
  {name: '山田' , height: 157},
  {name: '山中' , height: 178},
  {name: '山口' , height: 187},
  {name: '佐々木' , height: 147},
  {name: '中田' , height: 183},
  {name: '日向' , height: 193}
]

ary2 = adjust_order_of_height(ary1)
puts ary2
search_order(ary2)