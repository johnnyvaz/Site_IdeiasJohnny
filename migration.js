// # migration.js
var mysql = require('mysql');
var migration = require('mysql-migrations2');
const dotenv = require('dotenv');
dotenv.config();

var connection = mysql.createPool({
    connectionLimit: 10,
    user: process.env.USER,
    password: process.env.PASSWORD,
    host: process.env.HOST,
    port: process.env.PORTMYSQL,
    database: process.env.DATABASE
});

migration.init(connection, __dirname + '/migrations');