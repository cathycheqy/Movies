const db = require('../dbConfig');

//get details for genre using Query 8 from moviesdbQUERIES
const getGenreDetails = (req, res) => {
    const { Minimum_Age } = req.query;
    const sql = `
    SELECT
        m.Title AS MovieTitle, 
        m.Genre AS MovieGenre, 
        r.Minimum_Age AS MinimumAge
    FROM MOVIES m
    JOIN GENRES g ON m.Genre = g.Genre
    JOIN RATINGS r ON m.Rating = r.Rating
    WHERE g.Acceptable = 'Yes' AND r.Minimum_Age >= ?;
    `;
    db.query(sql, [Minimum_Age], (err, result) => {
        if (err) {
            console.error('Error fetching genre details:', err);
            return;
        }
        res.json(result);
    });
};
module.exports = {
    getGenreDetails 
};