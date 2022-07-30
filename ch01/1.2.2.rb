# 以下は 1.2.1.rb と同じ動作
class Book < ActiveRecord::Base
end

book = Book.new(1)
book.title = '1984年'
book.author = 'ジョージ・オーウェル'
