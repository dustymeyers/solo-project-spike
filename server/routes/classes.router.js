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

router.get('/:id', (req, res) => {
  
  const queryText =`
    SELECT 
      "classes".class_name, 
      "features".feature_name,
      "features".feature_description
    FROM "classes" 
    JOIN "classes_features"
      ON "classes".id = "classes_features".class_id
    JOIN "features"
      ON "classes_features".feature_id = "features".id
    WHERE "classes".id = $1;
  `;

  pool
    .query(queryText, [req.params.id])
    .then(dbRes => {
      console.log('Got class info from DB', dbRes);
      res.send(dbRes.rows);
    }).catch(err => {
      console.log('Error getting class info', err);
      res.sendStatus(500);
    });
});

module.exports = router;