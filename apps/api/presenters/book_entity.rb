require 'grape_entity'

class BookEntity < Grape::Entity
  expose :title
  expose :author
end
