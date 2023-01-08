const { Client } = require('pg')

const client = new Client({
  user: 'postgres',
  host: 'localhost',
  database: 'OR-lab',
  password: 'bazepodataka',
  port: 5434,
})

client.connect()

module.exports = client