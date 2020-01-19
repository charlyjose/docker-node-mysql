var mysql = require('mysql');
var config = require('./config/config');


var pool  = mysql.createPool(config.dbConfig);

module.exports = pool;