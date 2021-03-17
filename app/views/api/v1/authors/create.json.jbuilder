json.data do
  json.id @author.id
  json.first_name @author.first_name
  json.last_name @author.last_name
  json.email @author.email
  json.birthday date_to_text(@author.birthday)
end
json.message "Success"