//const knexfile = require('../knexfile')
//const knex = require('knex')(knexfile['development'])


const knex = require('knex')
const knexfile = require('../knexfile').development
const db = knex(knexfile)

module.exports = db