const Pool = require('pg').Pool
const pool = new Pool({
    user: process.env.USER,
    password: process.env.PASSWORD,
    host: process.env.HOST,
    port: process.env.DPORT,
    database: "college"
})

module.exports = {
  query: (text, params) => pool.query(text, params),
}