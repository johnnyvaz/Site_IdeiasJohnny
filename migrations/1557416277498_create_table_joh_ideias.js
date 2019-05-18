module.exports = {
    "up": "CREATE TABLE `joh_ideias` (`id` int(11) NOT NULL AUTO_INCREMENT, \
        `nome` varchar(45) DEFAULT NULL, \
        `resumo` varchar(300) DEFAULT NULL, \
        `descricao` varchar(3000) DEFAULT NULL, \
        `idRecursos` int(11) DEFAULT NULL, \
        `tipo` varchar(100) DEFAULT NULL, \
        PRIMARY KEY (`id`)) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;",

    "down": "DROP TABLE `joh_ideias`;"
}