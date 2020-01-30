FROM postgres:11-alpine

ENV POSTGRES_DB testdockernodedb
COPY init.sql /docker-entrypoint-initdb.d
COPY seed.sql /docker-entrypoint-initdb.d
