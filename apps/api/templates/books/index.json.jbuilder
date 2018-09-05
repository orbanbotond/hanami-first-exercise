json.books books do |book|
  #I cant' use the method defined in the view, because it
  # json.type render_method
  json.title book.title
  json.author book.author
end
