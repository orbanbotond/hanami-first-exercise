# json.rendered_by books.render_method
json.books books do |book|
  # json.type book.render_method
  json.title book.title
  json.author book.author
end
