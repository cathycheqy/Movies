const db = require('../dbConfig');
exports.getAllUsers = (req, res) => {
  db.query('SELECT Username FROM USERS', (err, results) => {
    if (err) return res.status(500).json({ error: 'Database error' });
    res.json(results);
  });
};
exports.getFavoriteMovieByUser = (req, res) => {
  const { Username } = req.query;
  const sql = `
    SELECT u.Username, m.Title
    FROM USERS u
    JOIN FAVORITE_MOVIES fm ON u.Username = fm.Username
    JOIN MOVIES m ON fm.Movie_ID = m.Movie_ID
    WHERE u.Username = ?
  `;
  db.query(sql, [Username], (err, results) => {
    if (err) return res.status(500).json({ error: 'Database error' });
    res.json(results);
  });
};
