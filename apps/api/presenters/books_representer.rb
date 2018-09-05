require 'roar/json'
require 'representable/json'
require_relative 'book_representer'

class BooksRepresenter < Roar::Decorator
  include Roar::JSON

  property :render_method
  collection :books, extend: BookRepresenter, class: Book
end
