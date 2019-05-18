/*
/     configurações de acesso ao banco de dados
*/
const dotenv = require('dotenv');
dotenv.config();
const mysql = require('mysql');
const database = process.env.DATABASE;

// instanciar objeto de acesso ao banco de dados
const client = mysql.createConnection({
    user: process.env.USER,
    password: process.env.PASSWORD,
    host: process.env.HOST,
    port: process.env.PORTMYSQL
});

client.query('USE ' + database);

module.exports = client;