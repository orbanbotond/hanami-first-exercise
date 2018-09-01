module Api::Views::Books
  class Index
    include Api::View

    def as_json
      books.map do |book|
        {title: book.title, author: book.author}
      end
    end
  end
end
