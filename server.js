// Step 1: Import Required Libraries
const express = require('express');
const app = express();
const db = require('./dbConfig');

// Step 2: Import Controllers
const moviesController = require('./controllers/movies');
const query1 = require('./controllers/query1');
const query6 = require('./controllers/query6');
// const streamServicesController = require('./controllers/StreamServices');
// const userController = require('./controllers/user');

// Step 3: Middleware Setup
app.use(express.json());
app.use(express.static('public'));

// Step 4: Define Routes

// Movies routes
app.get('/movies', moviesController.getAllMovies);
app.get('/movies/details', moviesController.getMovieDetails);

// Query 1 routes (User favorite movies)
app.get('/user', query1.getAllUsers);
app.get('/user/details', query1.getFavoriteMovieByUser);

// Query 6
app.get('/api/query6', query6.getAllMoviesWithRatings);

// // Stream services routes
// app.get('/project/duration', projectController.getAllProjectsTotalHours);

// // User routes
// app.get('/project/hours', worksonController.getHoursWorkedByEmployee);

// Step 5: Start the Server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});