const express = require('express');
const app = express();

// Middleware to serve static files (optional, if you have static assets)
app.use(express.static('public'));

// Sample route
app.get('/', (req, res) => {
    res.send('Hello, World! This is a simple Node.js app.');
});

// Start the server on port 3000
app.listen(3000, () => {
    console.log('Server is running on http://localhost:3000');
});

