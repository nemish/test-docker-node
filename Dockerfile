FROM node:12-alpine
WORKDIR /app
COPY ./package.json .
RUN npm i
COPY . .

ENV PORT=3000
ENV PGUSER=testdockernodedbuser
ENV PGPASSWORD=passwd
ENV PGDATABASE=testdockernodedb

EXPOSE $PORT
ENTRYPOINT [ "npm", "start" ]
