class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    # require 'pry'; binding.pry
    @authors << author
    @books.concat(author.books)
  end

  # def min_date(author)
  #   @books.map do |book|
  #     book.publication_year.to_i
  #   end#.min.to_s
  #   require 'pry'; binding.pry
  # end

  # def publication_time_frame_for(author)
  #   time_frame = {start: first, end: last}
  # end
end