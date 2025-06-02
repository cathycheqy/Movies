const db = require('../dbConfig');

// Get list of streaming service for drowndown
const getAllStreamingServices = (req, res) => {
    const sql = 'SELECT Streaming FROM STREAMING_SERVICE';
    db.query(sql, (err, result) => {
        if (err) {
            console.error('Error fetching streaming services:', err);
            res.status(500).json({ error: 'Internal Server Error' });
            return;
        }
        res.json(result);
    });
};

// Get details for streaming services
const getStreamingServiceDetails = (req, res) => {
    const { Streaming } = req.query;
    const sql = `
        SELECT S.Company, S.Streaming, COUNT(*) AS NumberOfMovies
        FROM MOVIES M
        JOIN 
            STREAMING_SERVICE S ON M.Streaming = S.Streaming
        GROUP BY 
            S.Company, S.Streaming
        HAVING 
            S.Streaming = ?;
    `;
    db.query(sql, [Streaming], (err, result) => {
        if (err) {
            console.error('Error fetching streaming services details:', err);
            return;
        }
        res.json(result);
    });
};
module.exports = { getAllStreamingServices, getStreamingServiceDetails };