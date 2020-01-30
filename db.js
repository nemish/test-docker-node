const { Client } = require("pg");

let client = null;

const getClient = async () => {
  if (!client) {
    client = new Client();
    await client.connect();
  }
  return client;
};

module.exports = {
  getClient,
};
