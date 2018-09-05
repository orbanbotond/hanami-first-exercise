require 'roar/json'
require 'representable/json'

class BookRepresenter < Roar::Decorator
  include Roar::JSON

  property :title
  property :author
end
