class BookRepository < Hanami::Repository
  def most_recent_by_author(author, limit: 8)
    books
      .where(author: author)
      .order(:created_at)
      .limit(limit)
  end

  def count
    books.count
  end
end
