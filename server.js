'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';
const CUSTOM_MESSAGE = process.env.CUSTOM_MESSAGE || 'Hello world'

// App
const app = express();
app.get('/', (req, res) => {
  res.send(`${CUSTOM_MESSAGE}\n`);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
