json.books books do |book|
  #I cant' use the method defined in the view, because
  json.title book.title
  json.author book.author
end
