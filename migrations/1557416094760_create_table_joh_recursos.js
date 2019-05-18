module.exports = {
    "up": "CREATE TABLE `joh_recursos` ( `idRecurso` int(11) NOT NULL, `tipoRecurso` varchar(45)  DEFAULT NULL, `descricao` varchar(200)  DEFAULT NULL, PRIMARY KEY (`idRecurso`) ) ENGINE=InnoDB DEFAULT CHARSET=latin1;",
    "down": "DROP TABLE `joh_recursos`;"
}