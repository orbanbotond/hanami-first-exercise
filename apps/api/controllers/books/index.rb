module Api::Controllers::Books
  class Index
    include Api::Action

    expose :books

    def call(params)
      self.format = :json

      @books = BookRepository.new.all
    end
  end
end
