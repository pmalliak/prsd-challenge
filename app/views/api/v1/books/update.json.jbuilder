json.data do
  json.partial! 'api/v1/books/book', book: @book
end
json.message "Success"