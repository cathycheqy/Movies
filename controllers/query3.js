const db = require('../dbConfig');

// Get details for genres
const getGenreDetails = (req, res) => {
    const genreDetails = req.query.genreDetails; // Get age for query parameter
    const query = `
        SELECT
            m.Title AS MovieTitle, 
            m.Genre AS MovieGenre, 
            r.Minimum_Age AS MinimumAge
        FROM MOVIES m
        JOIN GENRES g ON m.Genre = g.Genre
        JOIN RATINGS r ON m.Rating = r.Rating
        WHERE g.Acceptable = 'Yes' AND r.Minimum_Age >= ?
    `;

    db.query(query, [genreDetails], (err, results) => {
        if (err) {
            return res.status(500).json({ error: 'Error fetching genre details' });
        }
        if (results.length === 0) {
            return res.status(404).json({ message: 'No genre details found' });
        }
        res.json(results);
    });
};

module.exports = {
    getGenreDetails,
};