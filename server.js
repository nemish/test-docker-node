const express = require("express");
const { getClient } = require("./db");

const app = express();

const PORT = process.env.PORT;

app.get("/", async (req, res) => {
  const db = await getClient();
  const result = await db.query("SELECT id, username, email FROM userprofile");
  console.log({ result });
  await db.end();
  res.send({ items: result.rows });
});

app.get("/user", (req, res) => {
  res.send("This is user");
});

app.listen(PORT, () => {
  console.log("listen on port", PORT);
});
