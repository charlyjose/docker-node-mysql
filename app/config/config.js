var env = require("./env.json");

module.exports.dbConfig = {
	connectionLimit: env.db.connectionLimit,
    host: env.db.host,
    user: env.db.username,
    password: env.db.password,
    database: env.db.database,
    port: env.db.port
}

module.exports.webConfig = {
    port: env.web.port
}