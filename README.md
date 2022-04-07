# Docker Compose
- Start PostgreSQL database
- Start PGAdmin
- Run database migrations
- Seed database with sample data
- Start Apache NiFi
```
sample@system:~$ docker-compose up
```

# Access PostgreSQL data through Apache NiFi API
```
sample@system:~$ curl <endpoint>
<response>
```