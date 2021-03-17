puts "Process 1/2: Deleting existing records..."
# Destroy all
Book.destroy_all
Author.destroy_all
Publisher.destroy_all
puts "Done"

puts "Process 2/2: Populating database..."
# Create authors
200.times do |index|
  Author.create!(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 email: Faker::Internet.email,
                 birthday: Faker::Date.between(from: '1900-01-01', to: '2002-01-01'))
end

# Create publishers
200.times do |index|
  Publisher.create!(name: Faker::Book.publisher,
                 telephone: Faker::PhoneNumber.phone_number,
                 address: Faker::Address.street_address)
end

# Create books
1000.times do |index|
  Book.create!(title: Faker::Book.title,
               description: Faker::Lorem.paragraph(random_sentences_to_add: 4),
               creation_date: Faker::Date.between(from: '1900-01-01', to: '2002-01-01'),
               isbn: Faker::Number.unique.number(digits: 10),
               visible: Faker::Boolean.boolean(true_ratio: 0.8),
               author_id: Author.pluck(:id).sample,
               publisher_id: Publisher.pluck(:id).sample)
end
puts "Done"