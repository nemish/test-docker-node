const { Client } = require("pg");

let client = null;

const getClient = async () => {
  if (!client) {
    client = new Client({
      host: "db",
    });
  }
  await client.connect();
  return client;
};

module.exports = {
  getClient,
};
