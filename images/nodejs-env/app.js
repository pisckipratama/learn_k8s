const http = require('http');
const process = require('process');

const hostname = '0.0.0.0';
const port = process.env.PORT || 1337;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'application/json');
  res.end(
    JSON.stringify({
      application: process.env.APPLICATION,
      version: process.env.VERSION,
      author: process.env.AUTHOR,
    })
  );
});

server.listen(port, hostname, () => {
  console.log(`server running in ${process.env.NODE_ENV} on port ${port}`);
});
