const express = require('express');
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.get('/', (req, res) => {
  res.status(200).json({
    success: true,
    message: 'rest api ready to war.',
    version: process.env.VERSION,
    author: process.env.AUTHOR,
  });
});

const PORT = process.env.PORT || 1337;

app.listen(PORT, () => {
  console.log(`server running in ${process.env.NODE_ENV} on port ${PORT}`);
});
