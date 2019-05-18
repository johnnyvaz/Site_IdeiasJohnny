var controller = require('../controllers/ideias.js');
// var controller = require('../controllers/contato.js');

// app.get('/', controller.index);
app.get('/', controller.listarIdeias);
app.get('/index', controller.listarIdeias);
app.post('/', controller.ideiasSalvar);
app.post('/index', controller.ideiasSalvar);

app.get('/novo', controller.ideiasNovo);
// app.get('/novorecurso', controller.ideiasNovoRecurso);

app.get('/ideias/listar', controller.listarIdeias);

app.post('/ideias/salvar', controller.ideiasSalvar);
// app.post('/recursos/salvar', controller.recursosSalvar);

app.get('/ideias/editar/:codigo', controller.ideiasBuscar);

app.get('/excluir/:codigo', controller.ideiaExcluir);

// app.post('contato', controller.sendMail);

// app.route('/book')
//   .get(function(req, res) {
//     res.send('Get a random book');
//   })
//   .post(function(req, res) {
//     res.send('Add a book');
//   })
//   .put(function(req, res) {
//     res.send('Update the book');
//   });

// app.get('/', (req, res, next) => {
//     res.locals.hello = 'Hello World';
//     next();
//   }); 
  
//   // Middleware #2
//   app.get('/', (req, res) => {
//     return res.send(res.locals.hello);
//   });
  