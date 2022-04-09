# Docker Compose

- Start PostgreSQL database
- Start PGAdmin
- Run database migrations
- Seed database with sample data
- Start Apache NiFi
- Start Apache NiFi Registry

```
sample@system:~$ docker-compose up
```

# Apache NiFi API

`GET`

```
sample@system:~$ curl localhost:7001/books

[
	{
		"book_id": 1,
		"title": "Charlie & Choc Factory",
		"genre": "Luck",
		"author_id": 1
	},
	{
		"book_id": 2,
		"title": "Advanced Rust Programming",
		"genre": "Children",
		"author_id": 2
	},
    ...
]
```

`POST`

```
sample@system:~$ curl --request POST \
  --url http://localhost:7001/createBook \
  --header 'Content-Type: application/json' \
  --data '{
	"title": "Basic NiFi",
	"genre": "Tech",
	"author_id": 1
    }'
```
