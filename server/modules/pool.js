const pg = require('pg');
const Pool = pg.Pool;
const config = { 
  database: 'solo_spike', 
  host: 'localhost', 
  port: 5432 
};
const pool = new pg.Pool(config);

pool.on('connect', client => console.log('connected to postgres'));
pool.on('error', (error, client) => console.log('Error: Connecting to postgres', error));

module.exports = pool;