require_relative '../../presenters/books_entity'
require "ostruct"

module Api::Views::Books
  class Index
    include Api::View

    def render
      books_struct = OpenStruct.new
      books_struct.books = books
      books_struct.render_method = render_method
      raw BooksEntity.new(books_struct).to_json
    end

    def render_method
      "The data is rendered by Grape Entities"
    end
  end
end
