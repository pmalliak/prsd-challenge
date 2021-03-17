json.title @book.title
json.description truncate(@book.description, length: 100, omission: '...', separator: ' ')
json.isbn @book.isbn
json.creation_date date_with_slash(@book.creation_date)
json.author_name @book.author.try(:full_name)
json.authors_birthday date_to_text(@book.author.birthday)
json.publisher_name @book.publisher.try(:name)
json.publisher_address @book.publisher.try(:address)