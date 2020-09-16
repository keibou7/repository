# kindleを模倣したアプリ
# kindleで自分の持っている本を全て表示する
# kindleで選択した本が、もし読みかけだった場合、途中から表示するか選択できる
# 途中ページを計算する

class Kindle
  def initialize
    @books = [
      { name: '7つの習慣'        , pages : 500 , continued_pages: continued_pages },
      { name: '嫌われる勇気'      , pages : 300 , continued_pages: continued_pages  },
      { name: 'イシューからはじめよ' pages : 400 , continued_pages: continued_pages }
    ]
  end
  def can_read_book
    choose_book
    puts "前回は#{selected[:continued_pages]}ページまで読みましたが、続きから読みますか？"
    puts '続きから読む場合は0、最初から読む場合は1を選択してください'
    page_select = gets.to_i
    while true do
      if page_select == 0
        puts "続きの#{selected[:continued_pages]}ページから読み始めます"
        continued_pages = continued_pages
        break
      elsif page_select == 1
        puts '最初のページから読み始めます'
        continued_pages = 1
        break
      else
        puts '続きから読む場合は1、最初から読む場合は2を選択してください'
    end
  end
  def choose_book
    puts '読みたい本を以下から選んでください'
    @books.each_with_index do |book, i|
      puts "[#{i}] 商品名：#{book[:name]} ページ数：#{book[:pages]}"
    selected = @books[gets.to_i]
    p "#{selected[:name]}が選択されました"
    selected

    def read_book
      while true do
        if page.click
          current_pages = current_pages + 1
        elsif pages - current_pages == 0
          current_pages = 1
          break
        else
          continued_pages = current_pages
          break
        end
      end
    end
  end
  kindle = Kindle.new
  kindle.can_read_book