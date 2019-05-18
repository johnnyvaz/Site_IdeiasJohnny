var client = require('../../config/conexao.js');

module.exports = {
    listarIdeias,
    listarRecursos,
    alterarIdeia,
    listarUmaIdeia,
    salvarIdeia,
    excluirIdeia
}

function listarIdeias(callback) {
    // client.query('select l.liv_codigo,l.liv_titulo, l.liv_edicao, l.liv_isbn, l.liv_ano, a.aut_apelido,  e.edt_nome from livros as l join autores as a on (l.aut_codigo = a.aut_codigo) join editoras as e on (l.edt_codigo = e.edt_codigo)', callback)
    // client.query('select * from joh_ideias as i left join joh_recursos as r on (i.idRecursos = r.idRecurso)', callback)
    client.query('select * from joh_ideias order by 1', callback)
}

function listarUmaIdeia (id, callback){
    client.query('SELECT * FROM joh_ideias WHERE id = ' + id, callback);
}

function listarRecursos (callback) {
    client.query('select * from joh_recursos order by 1', callback);
}

function salvarIdeia(dados, callback) {
    var msql = 'INSERT INTO joh_ideias SET ? ';
    client.query(msql, dados, callback);
}

function alterarIdeia(dados, callback) {
    var msql = "UPDATE joh_ideias " + 
    " SET nome = '" + dados.nome + 
    "' , resumo = '" + dados.resumo + 
    "' , descricao = '" + dados.descricao + 
    "' , idRecursos = '" + dados.idRecursos + 
    "' , tipo = '" + dados.tipo +
    "'  WHERE id = '" + dados.id + "'";
    client.query(msql, callback);
}

function excluirIdeia(id, callback){
    client.query('delete from joh_ideias where id = ' + id, callback);    
}