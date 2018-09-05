require 'grape_entity'
require_relative 'book_entity'

class BooksEntity < Grape::Entity
  expose :render_method
  expose :books, using: BookEntity
end
