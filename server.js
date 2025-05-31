// Step 1: Import Required Libraries
const express = require('express');
const app = express();
const db = require('./dbConfig');

// Step 2: Import Controllers
const moviesController = require('./controllers/movies');
//const streamServicesController = require('./controllers/StreamServices')
//const userController = require('./controllers/user');

// Step 3: Middleware Setup
// Use express.json() to parse incoming JSON requests.
// Use express.static() to serve static files from the 'public' directory.
app.use(express.json());
app.use(express.static('public'));

// Step 4: Define Routes
// movies routes
app.get('/movies', moviesController.getAllMovies);
app.get('/movies/details', moviesController.getMovieDetails);

//stream services routes
//app.get('/project/duration', projectController.getAllProjectsTotalHours);


//user routes
//app.get('/project/hours', worksonController.getHoursWorkedByEmployee);


// Step 5: Start the Server
// Define the port the server will listen on, defaulting to 5000 if not specified in environment variables.
const PORT = process.env.PORT || 5000;

// Start the server and log a message indicating the URL.
app.listen(PORT, () => {
console.log(`Server running on http://localhost:${PORT}`);
});