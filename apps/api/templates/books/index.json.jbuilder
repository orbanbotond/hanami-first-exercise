json.books books do |book|
  # json.type render_method
  json.title book.title
  json.author book.author
end
