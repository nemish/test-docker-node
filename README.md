```
docker run -d --rm -p 8081:3000 --name test-docker-node --volume $(pwd):/app --link test-docker-node-db:db test-docker-node:latest
docker run -d --rm --name test-docker-node-db -p 8088:5432 -v $(pwd)/db:/var/lib/postgresql/data postgres
docker exec -it test-docker-node-db sh
psql testdockernodedb testdockernodedbuser
```

```
CREATE DATABASE testdockernodedb;
CREATE USER testdockernodedbuser WITH ENCRYPTED PASSWORD 'passwd';
GRANT ALL PRIVILEGES ON DATABASE testdockernodedb TO testdockernodedbuser;

CREATE TABLE IF NOT EXISTS userprofile(
   id serial PRIMARY KEY,
   username VARCHAR (50) UNIQUE NOT NULL,
   password VARCHAR (50) NOT NULL,
   email VARCHAR (355) UNIQUE NOT NULL,
);

INSERT INTO userprofile (username, password, email)
VALUES
   ('testuser1', 'testpassword1', 'testemail1@email.com'),
   ('testuser2', 'testpassword2', 'testemail2@email.com');
```
