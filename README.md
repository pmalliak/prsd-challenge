
## Quickstart:

0. Ruby version is 2.6.3
1. Install depedencies: `bundle` & `yarn install`
2. Start postgres: `docker-compose up` or `sudo docker-compose up`
3. Create db: `rails db:create`
4. Run the migrations: `rails db:migrate`
5. Seed db: `rails db:seed`

## Endpoints

1. GET  `/api/v1/books`
2. GET  `/api/v1/books/:id`
3. POST `/api/v1/authors`
4. POST `/api/v1/publishers`
5. POST `/api/v1/books`
6. UPDATE `/api/v1/books/:id`
7. DELETE `/api/v1/books/:id`