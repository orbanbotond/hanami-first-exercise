require_relative '../../presenters/books_representer'
require "ostruct"

module Api::Views::Books
  class Index
    include Api::View

    def render
      books_struct = OpenStruct.new
      books_struct.books = books
      books_struct.render_method = render_method
      raw BooksRepresenter.new(books_struct).to_json
    end

    def render_method
      "The data is rendered by Jbuilder"
    end
  end
end
