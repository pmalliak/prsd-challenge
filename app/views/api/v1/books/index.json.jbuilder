json.data do
  json.array! @books do |book|
    json.id book.id
    json.title book.title
    json.description truncate(book.description, length: 100, omission: '...', separator: ' ')
    json.isbn book.isbn
    json.author do
      json.id book.author.try(:id)
      json.full_name book.author.try(:full_name)
    end
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