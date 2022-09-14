class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    @books.concat(author.books)
  end


  def publication_time_frame_for(author)
    first = author.books.map do |book|
      book.publication_year.to_i
    end.min.to_s
    last = author.books.map do |book|
      book.publication_year.to_i
    end.max.to_s
    {start: first, end: last}
  end
end