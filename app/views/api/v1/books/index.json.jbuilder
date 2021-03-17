json.data do
  json.array! @books do |book|
    json.title book.title
    json.description truncate(book.description, length: 100, omission: '...', separator: ' ')
    json.isbn book.isbn
    json.author_name book.author.try(:full_name)
  end
end
json.pagination do
  json.count @pagy.count
  json.current @pagy.page
  json.prev @pagy.prev
  json.next @pagy.next
  json.pages @pagy.pages
end
json.message "Success"