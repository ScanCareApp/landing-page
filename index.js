const express = require('express');
const path = require('path');

const app = express();
const port = process.env.PORT || 7000;

const publicPath = path.join(__dirname, 'public');

app.use(express.static(publicPath));

app.listen(port, () => {
  console.log(`Server is up on port ${port}`);
});
