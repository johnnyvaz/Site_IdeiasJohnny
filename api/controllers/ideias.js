var Ideias = require('../models/ideias.js');



module.exports = {
  index,
  listarIdeias,
  ideiasNovo,
  ideiasSalvar,
  ideiasBuscar,
  ideiaExcluir
}  

function index(req, res) {
  res.render('index.ejs', {title: 'Minhas ideias'});      
}


function listarIdeias(req, res){
  // res.header("Content-Type", "application/json; charset=utf-8");
  Ideias.listarIdeias(function (err, result)
  {
    if (err) 
    {
      throw err;
    }
    res.render('index.ejs',
    // res.render('ideiasListar.ejs',
    {
      title: 'Listar Ideias',
      ideias: result
    })
  })
}  


function ideiasNovo(req, res) 
{
  var dados = [
    {
      nome: "",
      resumo: "",
      imagens: "",
      descricao: "",
      idRecursos: "",
      tipo: ""
    }
  ];
  console.log("entrando em Novo")
  // res.send(document.getElementById("btn1").click())
  Ideias.listarIdeias(function (err, result)
  {
    if (err) 
    {
      throw err;            
    } else 
        {
          res.render('ideiasNovo.ejs',
          {
            ideias: dados
          })
        }
      });
    }

function ideiasSalvar(req, res)
{
  var dados = req.body;
  console.log("Salvando ideia...");
  console.log(req.body);
  console.log(dados.id);
  if (dados.id == "") 
  {
    dados.id = null;
    console.log("Inserindo ideia...");
    Ideias.salvarIdeia(dados, function (err, result)
    {
      if (err) {
        throw err;
      }
      // res.redirect('/ideias/listar');
      res.redirect('/');
    })
  } else {
    console.log("Alterando ideia...");
    Ideias.alterarIdeia(dados, function (err, result) 
    {
      if (err)
      {
        throw err;
      }
      // res.redirect('/ideias/listar');
      res.redirect('/');
    });
  }
}


function ideiasBuscar(req, res)
{
  var id = req.params.codigo;
  Ideias.listarUmaIdeia(id, function(err, result)
  {
    if (err)
    {
      throw err;
    } else
    {          
      // res.render('ideiasEditar.ejs', 
      res.sender('ideiasEditar.ejs', 
      {
        ideias: result
      });            
    }
  }
  ); 
}

function ideiaExcluir(req, res){
  var id = req.params.codigo;
  console.log('preparando para excluir' + id)
  Ideias.ideiaExcluir(function (err, result)
  {
    if (err) 
    {
      throw err;
    }
    console.log('excluindo...')
    // res.render('ideiasListar.ejs',
    res.render('index.ejs',
    {
      title: 'Listar Ideias',
      ideias: result
    })
  })
}  
