const express = require('express');
const pool = require('../modules/pool');
const router = express.Router();

/**
 * GET route template
 */
 router.get('/', (req, res) => {
  // GET route code here
  
  const queryText = 'SELECT * FROM "classes";'

  pool
    .query(queryText)
    .then(dbRes => {
      console.log('Got classes from DB', dbRes);
      res.send(dbRes.rows);
    })
    .catch(err => {
      console.log('Error getting classes', err);
      res.sendStatus(500);
    })
});

/**
 * POST route template
 */
router.post('/', (req, res) => {
  // POST route code here
});

module.exports = router;