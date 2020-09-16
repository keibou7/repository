# kindleを模倣したアプリ
# kindleで自分の持っている本を全て表示する
# kindle自体を読むか、書評を読むかを選べる

class BookReader
  def initialize
    @books = [
      { name: '7つの習慣' , review: '書評' },
      { name: '嫌われる勇気' , review: '書評'  },
      { name: 'イシューからはじめよ' , review: '書評' }
    ]
  end

  def select_book_review
    puts '気になる本を以下から選んでください'
    @books.each_with_index do |book, i|
      puts "[#{i}] 書名：#{book[:name]}"
    end
    selected = @books[gets.to_i]
    p "#{selected[:name]}が選択されました"
    puts '本を読む場合は0、書評を読む場合は1を選択してください'
    select_num = gets.to_i
    while true do
      if select_num == 0
        puts "#{selected[:name]}を読みます"
        break
      elsif select_num == 1
        puts "#{selected[:name]}の書評を読みます"
        break
      else
        puts '本を読む場合は0、書評を読む場合は1を選択してください'
        select_num = gets.to_i
      end
    end
  end

end

bookreader = BookReader.new
bookreader.select_book_review