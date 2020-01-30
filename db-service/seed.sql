CREATE TABLE IF NOT EXISTS userprofile(
   id serial PRIMARY KEY,
   username VARCHAR (50) UNIQUE NOT NULL,
   password VARCHAR (50) NOT NULL,
   email VARCHAR (355) UNIQUE NOT NULL
);
ALTER TABLE userprofile OWNER to testdockernodedbuser;

INSERT INTO userprofile (username, password, email)
VALUES
   ('testuser1', 'testpassword1', 'testemail1@email.com'),
   ('testuser2', 'testpassword2', 'testemail2@email.com');
