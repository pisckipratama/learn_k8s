const express = require('express');
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.get('/', (_, res) => {
  res.status(200).json({
    success: true,
    message: 'rest api ready to war.',
    app_name: process.env.APPLICATION,
    version: process.env.VERSION,
    author: process.env.AUTHOR,
    env_details: process.env,
  });
});

app.get('/hello', (req, res) => {
  const { name } = req.query;

  if (!name) {
    return res.status(200).send('Hello Guest!');
  }

  res.status(200).send(`Hello ${name}!`);
});

const PORT = process.env.PORT || 1337;

app.listen(PORT, () => {
  console.log(`server running in ${process.env.NODE_ENV} on port ${PORT}`);
});
