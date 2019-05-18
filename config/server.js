/*
 *   criar objetos básicos
 */
const express = require('express');
const consign = require('consign');
const expressLayouts = require('express-ejs-layouts');
const path = require('path');
const body = require('body-parser');

const dotenv = require('dotenv');
dotenv.config();


// instanciando objeto express
app = express();

//configurando recursos para tratamento json
app.use(body.urlencoded({ extended: true }));
app.use(body.json());

//diretório estático
app.set('views', path.join(__dirname, '../api/views'));

app.use(express.static('public'))
app.set('view engine', 'ejs');

// configurando a porta para http
app.set('port', process.env.PORT);

consign({ cwd: 'api' })
    .include('models')
    .then('controllers')
    .then('routes')
    .into(app);
app.use(expressLayouts);

module.exports = app;