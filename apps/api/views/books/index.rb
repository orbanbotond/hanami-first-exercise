require_relative '../../presenters/book_representer'

module Api::Views::Books
  class Index
    include Api::View

    def render
      # binding.pry
      # "[{title: \"asd\"}]"
      raw books.map{|book| BookRepresenter.new(book).to_json }.to_s
    end

    def render_method
      "The data is rendered by Jbuilder"
    end
  end
end
