class Author
  attr_reader :name, :books, :first_name, :last_name
  
  def initialize(attributes)
    @name = attributes[:first_name] + " " + attributes[:last_name]
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @books = []
  end

  def write(title, date)
    book_info = {author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: date}
    book = Book.new(book_info)  
    @books << book
    return book
  end
end