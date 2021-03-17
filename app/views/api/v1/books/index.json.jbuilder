json.data do
  json.array! @books do |book|
    json.title book.title
    json.description truncate(book.description, length: 100, omission: '...', separator: ' ')
    json.isbn book.isbn
    json.author_name book.author.try(:full_name)
  end
end
json.message "Success"