const Sequelize = require ("sequelize");

const db = new Sequelize('mern_db', 'root', '',{
    dialect: "mysql"
})

db.sync({})
module.exports = { db };