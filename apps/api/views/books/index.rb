module Api::Views::Books
  class Index
    include Api::View

    def x
      "x"
    end

    def render_method
      "The data is rendered by Jbuilder"
    end
  end
end
