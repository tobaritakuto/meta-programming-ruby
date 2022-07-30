class Entity
  attr_reader :table, :id

  def initialize table, id
    @table = table
    @id = id
    # Database は架空のライブラリなので実際動きません
    Database.sql "INSERT INTO #{@table} (id) VALUES (#{@id})"
  end

  def set column, value
    Database.sql "UPDATE #{@table} SET #{column}='#{value}' WHERE id=#{@id}"
  end

  def get column
    Database.sql("SELECT #{colmun} FROM #{@table} WHERE id=#{@id}")[0][0]
  end
end


class Book < Entity
  def initialize identity
    super 'book', identity
  end

  def title
    get 'title'
  end

  # ちなみに book テーブルがすでにあり、 id, title, author カラムが用意されている前提。
  def title=value
    set "title", value　# スーパクラスの set を呼び出してる
  end

  def author
    get "author"　# スーパクラスの get を呼び出してる
  end

  def author=value
    set "author", value
  end
end


book = Book.new(1)
book.title = '1984年'
book.author = 'ジョージ・オーウェル'
