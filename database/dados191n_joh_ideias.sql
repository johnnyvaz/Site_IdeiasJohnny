-- criado por Johnny vaz

CREATE TABLE `joh_classificacao` (
  `joh_id` int(11) NOT NULL,
  `johname` varchar(255) NOT NULL,
  PRIMARY KEY (`joh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `joh_classificacao` VALUES (1,'Meio Ambiente');

CREATE TABLE `joh_recursos` (
  `idRecurso` int(11) NOT NULL,
  `tipoRecurso` varchar(45) DEFAULT NULL,
  `descricao` varchar(200)  DEFAULT NULL,
  PRIMARY KEY (`idRecurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `joh_recursos` VALUES (1,'Financeiro','capital necessario');


CREATE TABLE `joh_ideias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `resumo` varchar(300) DEFAULT NULL,
  `imagens` tinyblob,
  `descricao` varchar(3000) DEFAULT NULL,
  `idRecursos` int(11) DEFAULT NULL,
  `idIdeia_relacionada` int(11) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `PontoFraco` varchar(200) DEFAULT NULL,
  `PontoForte` varchar(45) DEFAULT NULL,
  `objetivoFinanceiro` varchar(45) DEFAULT NULL,
  `tipoImpacto` varchar(45) DEFAULT NULL COMMENT '(Se ambiental, qualidade de vida, economia)',
  `idClassificacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `joh_ideias` VALUES (1,'Park Security (estacionamento seguro)','Desenvolver um aplicativo para cadastrar os veí­culos e fazer a gestaoo dos espacos para estacionar',NULL,'O Aplicativo que estará com o seguranca contará com a facilidade da visaoo computacional para tirar uma foto da placa do carro e consultar no banco de dados, se naoo for cadastrado entaoo irá disponibilizar o cadastro rápido do veí­culo no aplicativo possuirá botões para alertas- 1 vermelho para situacões muito urgentes, ou seja, existe um sinistro em curso\n- 2 Amarelo: para alertar sobre uma situacaoo suspeita\n- 3 Verde: indicando que esta tudo bem, para os donos ficarem tranquilos.',1,1,'Aplicativo','difi­cil para fazer o controle financeiro.','traz seguranca para o dono do veí­culo e par','alugar o sistema por evento ou por prazo dete','seguranca',1),(2,'Toten Evangelí­stico para Hospital','Criar um móvel com suporte para um TV, para ser colocado filmes e mensagens de auto ajuda, alem de colocar tambem um equipamento eletronico para coletar pedidos de oracaoo e outro lugar para deixar livros e brinquedos para uso publico.',NULL,'O Toten seria colocado em um lugar de facil acesso e seria atualizado pela internet com conteudos de mensagens biblicas, oracoes, musicas com mensagens.',1,1,'financeiro','ponto fraco segunda ideia','ponto forte segunda ideia','objetivo financeiro segunda ideia','meio ambiente',1),(3,'Banho Portatil','Criar um dispositivo pratico que possa ser levado em uma mochila, que possa aquecer uma certa quantidade de agua e fixando em uma porta por exemplo possa diponibilizar banho rapido e economico.',NULL,'O dispositivo seria no formato de um cilindro feito de plastico e com um reservatorio para 5 litros de agua, sendo aquecida por uma resistencia dentro de uma bolsa própria.',1,NULL,'Higiene',NULL,NULL,'vender o equipamento','economia',NULL);


