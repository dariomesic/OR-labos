const { Client } = require('pg')

const client = new Client({
  user: 'postgres',
  host: 'localhost',
  database: 'OR',
  password: 'dario',
  port: 5434,
})

module.exports = client