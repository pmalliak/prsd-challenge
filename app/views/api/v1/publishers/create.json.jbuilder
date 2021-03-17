json.data do
  json.id @publisher.id
  json.name @publisher.name
  json.telephone @publisher.telephone
  json.address @publisher.address
end
json.message "Success"