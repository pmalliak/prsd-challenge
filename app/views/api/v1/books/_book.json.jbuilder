json.id @book.id
json.title @book.title
json.description truncate(@book.description, length: 100, omission: '...', separator: ' ')
json.isbn @book.isbn
json.creation_date date_with_slash(@book.creation_date)
json.author do
  json.id @book.author.id
  json.full_name @book.author.try(:full_name)
  json.birthdate date_to_text(@book.author.birthday)
end
json.publisher do
  json.id @book.publisher.try(:id)
  json.name @book.publisher.try(:name)
  json.address @book.publisher.try(:address)
end