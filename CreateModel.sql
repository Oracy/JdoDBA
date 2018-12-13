-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `Esportes`

CREATE TABLE `Esportes`
(
 `ID`   int NOT NULL AUTO_INCREMENT ,
 `Nome` varchar(100) NOT NULL ,
PRIMARY KEY (`ID`)
) AUTO_INCREMENT=1;






-- ************************************** `Apostadores`

CREATE TABLE `Apostadores`
(
 `ID`    int NOT NULL AUTO_INCREMENT ,
 `Nome`  varchar(200) NOT NULL ,
 `CPF`   int NOT NULL ,
 `Email` varchar(200) NOT NULL ,
PRIMARY KEY (`ID`)
) AUTO_INCREMENT=1;






-- ************************************** `Transferencias`

CREATE TABLE `Transferencias`
(
 `ID`                   int NOT NULL AUTO_INCREMENT ,
 `Origem_Apostador_ID`  int NOT NULL ,
 `Destino_Apostador_ID` int NOT NULL ,
 `Valor_Transferido`    decimal NOT NULL ,
PRIMARY KEY (`ID`),
KEY `fkIdx_87` (`Origem_Apostador_ID`),
CONSTRAINT `FK_87` FOREIGN KEY `fkIdx_87` (`Origem_Apostador_ID`) REFERENCES `Apostadores` (`ID`),
KEY `fkIdx_90` (`Destino_Apostador_ID`),
CONSTRAINT `FK_90` FOREIGN KEY `fkIdx_90` (`Destino_Apostador_ID`) REFERENCES `Apostadores` (`ID`)
) AUTO_INCREMENT=1;






-- ************************************** `Ligas`

CREATE TABLE `Ligas`
(
 `ID`         int NOT NULL AUTO_INCREMENT ,
 `Esporte_ID` int NOT NULL ,
 `Nome`       varchar(150) NOT NULL ,
 `Ano`        int NOT NULL ,
PRIMARY KEY (`ID`),
KEY `fkIdx_16` (`Esporte_ID`),
CONSTRAINT `FK_16` FOREIGN KEY `fkIdx_16` (`Esporte_ID`) REFERENCES `Esportes` (`ID`)
) AUTO_INCREMENT=1;






-- ************************************** `Contas`

CREATE TABLE `Contas`
(
 `ID`                int NOT NULL ,
 `Apostador_ID`      int NOT NULL ,
 `Saldo`             decimal NOT NULL ,
 `Qtd_Saque`         int ,
 `Qtd_Deposito`      int ,
 `Qtd_Transferencia` int ,
PRIMARY KEY (`ID`),
KEY `fkIdx_61` (`Apostador_ID`),
CONSTRAINT `FK_61` FOREIGN KEY `fkIdx_61` (`Apostador_ID`) REFERENCES `Apostadores` (`ID`)
);






-- ************************************** `Rodadas`

CREATE TABLE `Rodadas`
(
 `ID`      int NOT NULL AUTO_INCREMENT ,
 `Liga_ID` int NOT NULL ,
 `Rodada`  int NOT NULL ,
PRIMARY KEY (`ID`),
KEY `fkIdx_21` (`Liga_ID`),
CONSTRAINT `FK_21` FOREIGN KEY `fkIdx_21` (`Liga_ID`) REFERENCES `Ligas` (`ID`)
) AUTO_INCREMENT=1;






-- ************************************** `Jogos`

CREATE TABLE `Jogos`
(
 `ID`         int NOT NULL AUTO_INCREMENT ,
 `Rodada_ID`  int NOT NULL ,
 `Oponente_1` varchar(50) NOT NULL ,
 `Oponente_2` varchar(50) NOT NULL ,
PRIMARY KEY (`ID`),
KEY `fkIdx_24` (`Rodada_ID`),
CONSTRAINT `FK_24` FOREIGN KEY `fkIdx_24` (`Rodada_ID`) REFERENCES `Rodadas` (`ID`)
) AUTO_INCREMENT=1;






-- ************************************** `Resultado`

CREATE TABLE `Resultado`
(
 `ID`        int NOT NULL AUTO_INCREMENT ,
 `Jogo_ID`   int NOT NULL ,
 `Resultado` int NOT NULL COMMENT '0 - Empate
1 - Vitoria Time 1
2 - Vitoria Time 2' ,
PRIMARY KEY (`ID`),
KEY `fkIdx_32` (`Jogo_ID`),
CONSTRAINT `FK_32` FOREIGN KEY `fkIdx_32` (`Jogo_ID`) REFERENCES `Jogos` (`ID`)
) AUTO_INCREMENT=1;






-- ************************************** `Apostas`

CREATE TABLE `Apostas`
(
 `ID`                int NOT NULL AUTO_INCREMENT ,
 `Jogo_ID`           int NOT NULL ,
 `Apostador_ID`      int NOT NULL ,
 `Minha_Aposta`      int NOT NULL COMMENT '0 - Empate
1 - Vitoria Time 1
2 - Vitoria Time 2' ,
 `Valor_Apostado`    decimal NOT NULL ,
 `Aposta_Finalizada` bit NOT NULL ,
 `Resultado`         int COMMENT '0 - Empate
1 - Vitoria Time 1
2 - Vitoria Time 2' ,
PRIMARY KEY (`ID`),
KEY `fkIdx_71` (`Jogo_ID`),
CONSTRAINT `FK_71` FOREIGN KEY `fkIdx_71` (`Jogo_ID`) REFERENCES `Jogos` (`ID`),
KEY `fkIdx_79` (`Apostador_ID`),
CONSTRAINT `FK_79` FOREIGN KEY `fkIdx_79` (`Apostador_ID`) REFERENCES `Apostadores` (`ID`)
) AUTO_INCREMENT=1;