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

  def main
    book = choose_book
    choose_action(book)
  end

  def choose_book
    puts '気になる本を以下から選んでください'
    @books.each_with_index do |book, i|
      puts "[#{i}] 書名：#{book[:name]}"
    end
    selected = @books[gets.to_i]
    p "#{selected[:name]}が選択されました"
    selected
  end

  def choose_action(book)
    puts '本を読む場合は0、書評を読む場合は1を選択してください'
    input = gets.to_i
    while true do
      if input == 0
        puts "#{book[:name]}を読みます"
        break
      elsif input == 1
        puts "#{book[:name]}の書評を読みます"
        break
      else
        puts '本を読む場合は0、書評を読む場合は1を選択してください'
        input = gets.to_i
      end
    end
  end
end

bookreader = BookReader.new
bookreader.main
