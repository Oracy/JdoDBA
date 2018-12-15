-- Insert Values in Esportes
INSERT INTO Esportes
    (`ID`, `Nome`)
VALUES
    (NULL, 'Futebol'),
    (NULL, 'Basquete'),
    (NULL, 'Tenis'),
    (NULL, 'MMA');




-- Insert Values in Ligas
INSERT INTO Ligas
    (`ID`, `Esporte_ID`, `Nome`, `Ano`)
VALUES
    (NULL, '1', 'Paulista', '2019'),
    (NULL, '1', 'La Liga', '2019'),
    (NULL, '2', 'NBA', '2019'),
    (NULL, '4', 'UFC', '2019'),
    (NULL, '4', 'Bellator', '2019'),
    (NULL, '3', 'wimbledon', '2019');




-- Insert Values in Rodadas
INSERT INTO Rodadas
    (`ID`, `Liga_ID`, `Rodada`)
VALUES
    (NULL, '1', '1'),
    (NULL, '1', '2'),
    (NULL, '1', '3'),
    (NULL, '2', '1'),
    (NULL, '2', '2'),
    (NULL, '2', '3'),
    (NULL, '3', '1'),
    (NULL, '3', '2'),
    (NULL, '3', '3'),
    (NULL, '4', '215'),
    (NULL, '4', '216'),
    (NULL, '4', '217'),
    (NULL, '5', '174'),
    (NULL, '5', '175'),
    (NULL, '5', '176'),
    (NULL, '6', '1'),
    (NULL, '6', '2'),
    (NULL, '6', '3');




-- Insert Values in Jogos
INSERT INTO Jogos
    (`ID`, `Rodada_ID`, `Oponente_1`, `Oponente_2`)
VALUES
    (NULL, '1', 'SAO', 'PAL'),
    (NULL, '1', 'COR', 'SAN'),
    (NULL, '2', 'PIR', 'BAU'),
    (NULL, '2', 'SCA', 'MIR'),
    (NULL, '3', 'BRA', 'NOV'),
    (NULL, '3', 'ITU', 'OES'),
    (NULL, '4', 'BAR', 'SEV'),
    (NULL, '4', 'CVI', 'LEG'),
    (NULL, '5', 'ATL', 'VAL'),
    (NULL, '5', 'ESP', 'MAD'),
    (NULL, '6', 'ATH', 'ALV'),
    (NULL, '6', 'BET', 'GIR'),
    (NULL, '7', 'UTAH', 'MIAMI'),
    (NULL, '7', 'SACRAMENTO', 'MINNESOTA'),
    (NULL, '8', 'GSW', 'TORONTO'),
    (NULL, '8', 'HOU', 'LA'),
    (NULL, '9', 'SAS', 'LAC'),
    (NULL, '9', 'DAL', 'ATL'),
    (NULL, '10', 'KevinLee', 'AlIaquinta'),
    (NULL, '10', 'EdsonBarboza', 'DanHooker'),
    (NULL, '11', 'RobFont', 'SergioPettis'),
    (NULL, '11', 'JimMiller', 'CharlesOliveira'),
    (NULL, '12', 'AndersonSilva', 'Chael'),
    (NULL, '12', 'CrisCyborg', 'AmandaNunes'),
    (NULL, '13', 'EddieAlvarez', 'MichaelChandler'),
    (NULL, '13', 'NickNewell', 'BenAskren'),
    (NULL, '14', 'DuduDantas', 'BibianoFernandes'),
    (NULL, '14', 'ShinyaAoki', 'YushinOkami'),
    (NULL, '15', 'TitoOrtiz', 'JonFitch'),
    (NULL, '15', 'RousimarToquinho', 'AlexanderShlemenko'),
    (NULL, '16', 'AlexanderZverev', 'JuanMartíndelPotro'),
    (NULL, '16', 'NickKyrgios', 'SerenaWilliams'),
    (NULL, '17', 'MariaSharapova', 'SimonaHalep'),
    (NULL, '17', 'GaelMonfils', 'NovakDjokovic'),
    (NULL, '18', 'NicolasJarry', 'JohnIsner'),
    (NULL, '18', 'LeonardoMayer', 'StefanosTsitsipas');




-- Insert Values in Apostadores
INSERT INTO Apostadores
    (`ID`, `Nome`, `CPF`, `Email`)
VALUES
    (NULL, 'Marcos', '12345678901', 'marcos@email.com'),
    (NULL, 'Paulo', '12345678902', 'paulo@email.com'),
    (NULL, 'Mariana', '12345678903', 'mariana@email.com'),
    (NULL, 'Marcela', '12345678904', 'marcela@email.com'),
    (NULL, 'Mario', '12345678905', 'mario@email.com'),
    (NULL, 'Maria', '12345678906', 'maria@email.com');




-- Insert Values in Contas
INSERT INTO Contas
    (`ID`, `Apostador_ID`, `Saldo`)
VALUES
    (NULL, '1', '700.00'),
    (NULL, '2', '1000.00'),
    (NULL, '3', '5000.00'),
    (NULL, '4', '250.00'),
    (NULL, '5', '365.00'),
    (NULL, '6', '391.82');




-- Insert Values in Apostas
INSERT INTO Apostas
    (`ID`, `Jogo_ID`, `Apostador_ID`, `Minha_Aposta`, `Valor_Apostado`, `Aposta_Finalizada`, `Resultado`)
VALUES
    (NULL, '1' , '1', '2', '50', 0, NULL),
    (NULL, '1' , '1', '3', '200', 0, NULL),
    (NULL, '2' , '1', '1', '300', 0, NULL),
    (NULL, '2' , '1', '2', '450', 0, NULL),
    (NULL, '3' , '1', '3', '260', 0, NULL),
    (NULL, '3' , '1', '1', '350', 0, NULL),
    (NULL, '4' , '2', '2', '690', 0, NULL),
    (NULL, '4' , '2', '3', '153', 0, NULL),
    (NULL, '5' , '2', '1', '132.56', 0, NULL),
    (NULL, '5' , '2', '2', '658', 0, NULL),
    (NULL, '6' , '2', '3', '650', 0, NULL),
    (NULL, '6' , '2', '1', '320', 0, NULL),
    (NULL, '7' , '3', '2', '321', 0, NULL),
    (NULL, '7' , '3', '3', '654', 0, NULL),
    (NULL, '8' , '3', '1', '123', 0, NULL),
    (NULL, '8' , '3', '2', '987', 0, NULL),
    (NULL, '9' , '3', '3', '456', 0, NULL),
    (NULL, '9' , '3', '1', '321', 0, NULL),
    (NULL, '10' , '4', '2', '159', 0, NULL),
    (NULL, '10' , '4', '3', '951', 0, NULL),
    (NULL, '11' , '4', '1', '327', 0, NULL),
    (NULL, '11' , '4', '2', '723', 0, NULL),
    (NULL, '12' , '4', '3', '756', 0, NULL),
    (NULL, '12' , '4', '1', '984', 0, NULL),
    (NULL, '13' , '5', '2', '512', 0, NULL),
    (NULL, '13' , '5', '3', '659', 0, NULL),
    (NULL, '14' , '5', '1', '652', 0, NULL),
    (NULL, '14' , '5', '2', '564', 0, NULL),
    (NULL, '15' , '5', '3', '984', 0, NULL),
    (NULL, '15' , '5', '1', '520', 0, NULL),
    (NULL, '16' , '6', '2', '580', 0, NULL),
    (NULL, '16' , '6', '3', '500', 0, NULL),
    (NULL, '17' , '6', '1', '204', 0, NULL),
    (NULL, '17' , '6', '2', '213', 0, NULL),
    (NULL, '18' , '6', '3', '2004', 0, NULL),
    (NULL, '18' , '6', '1', '311', 0, NULL);



-- Insert Values in Transferencias
INSERT INTO Transferencias
    (`ID`, `Origem_Apostador_ID`, `Destino_Apostador_ID`, `Valor_Transferido`, `Data`)
VALUES
    (NULL, '1', '6', '200.00', SYSDATE()),
    (NULL, '2', '5', '300.00', SYSDATE()),
    (NULL, '3', '4', '400.00', SYSDATE()),
    (NULL, '4', '3', '500.00', SYSDATE()),
    (NULL, '5', '2', '100.00', SYSDATE()),
    (NULL, '6', '1', '200.00', SYSDATE()),
    (NULL, '1', '6', '300.00', SYSDATE()),
    (NULL, '2', '5', '400.00', SYSDATE()),
    (NULL, '3', '4', '150.00', SYSDATE()),
    (NULL, '4', '3', '250.00', SYSDATE()),
    (NULL, '5', '2', '350.00', SYSDATE()),
    (NULL, '6', '1', '230.00', SYSDATE()),
    (NULL, '1', '6', '330.00', SYSDATE()),
    (NULL, '2', '5', '660.00', SYSDATE()),
    (NULL, '3', '4', '120.00', SYSDATE()),
    (NULL, '4', '3', '200.00', SYSDATE()),
    (NULL, '5', '2', '100.00', SYSDATE()),
    (NULL, '6', '1', '90.00', SYSDATE()),
    (NULL, '1', '6', '80.00', SYSDATE()),
    (NULL, '2', '5', '70.00', SYSDATE()),
    (NULL, '3', '4', '60.00', SYSDATE()),
    (NULL, '4', '3', '50.00', SYSDATE()),
    (NULL, '5', '2', '40.00', SYSDATE()),
    (NULL, '6', '1', '90.00', SYSDATE()),
    (NULL, '1', '6', '60.00', SYSDATE()),
    (NULL, '2', '5', '30.00', SYSDATE()),
    (NULL, '3', '4', '40.00', SYSDATE()),
    (NULL, '4', '3', '70.00', SYSDATE()),
    (NULL, '5', '2', '80.00', SYSDATE()),
    (NULL, '6', '1', '90.00', SYSDATE());

-- Insert Values in Depositos
INSERT INTO Depositos
    (`ID`, `Apostador_ID`, `Valor_Depositado`, `Data`)
VALUES
    (NULL, '1', '700', SYSDATE()),
    (NULL, '2', '900', SYSDATE()),
    (NULL, '3', '580', SYSDATE()),
    (NULL, '4', '260', SYSDATE()),
    (NULL, '5', '360', SYSDATE()),
    (NULL, '6', '154', SYSDATE()),
    (NULL, '1', '1000', SYSDATE()),
    (NULL, '2', '1346', SYSDATE()),
    (NULL, '3', '2005', SYSDATE()),
    (NULL, '4', '360', SYSDATE()),
    (NULL, '5', '392', SYSDATE()),
    (NULL, '6', '182', SYSDATE()),
    (NULL, '1', '362', SYSDATE()),
    (NULL, '2', '182', SYSDATE()),
    (NULL, '3', '270', SYSDATE()),
    (NULL, '4', '390', SYSDATE()),
    (NULL, '5', '160', SYSDATE()),
    (NULL, '6', '380', SYSDATE()),
    (NULL, '1', '290', SYSDATE()),
    (NULL, '2', '370', SYSDATE()),
    (NULL, '3', '193', SYSDATE()),
    (NULL, '4', '256', SYSDATE()),
    (NULL, '5', '509', SYSDATE()),
    (NULL, '6', '536', SYSDATE()),
    (NULL, '1', '500', SYSDATE()),
    (NULL, '2', '190', SYSDATE()),
    (NULL, '3', '160', SYSDATE()),
    (NULL, '4', '380', SYSDATE()),
    (NULL, '5', '190', SYSDATE()),
    (NULL, '6', '170', SYSDATE());

-- Insert Values in Saques
INSERT INTO Saques
    (`ID`, `Apostador_ID`, `Valor_Sacado`, dATA)
VALUES
    (NULL, '1', '100', SYSDATE()),
    (NULL, '2', '200', SYSDATE()),
    (NULL, '3', '100', SYSDATE()),
    (NULL, '4', '50', SYSDATE()),
    (NULL, '5', '55', SYSDATE()),
    (NULL, '6', '70', SYSDATE()),
    (NULL, '1', '80', SYSDATE()),
    (NULL, '2', '90', SYSDATE()),
    (NULL, '3', '65', SYSDATE()),
    (NULL, '4', '55', SYSDATE()),
    (NULL, '5', '45', SYSDATE()),
    (NULL, '6', '60', SYSDATE()),
    (NULL, '1', '35', SYSDATE()),
    (NULL, '2', '61', SYSDATE()),
    (NULL, '3', '99', SYSDATE()),
    (NULL, '4', '66', SYSDATE()),
    (NULL, '5', '55', SYSDATE()),
    (NULL, '6', '33', SYSDATE()),
    (NULL, '1', '88', SYSDATE()),
    (NULL, '2', '15', SYSDATE()),
    (NULL, '3', '20', SYSDATE()),
    (NULL, '4', '29', SYSDATE()),
    (NULL, '5', '36', SYSDATE()),
    (NULL, '6', '58', SYSDATE());

-- Insert Values in Resultado
INSERT INTO Resultados
    (`ID`, `Jogo_ID`, `Resultado`)
VALUES
    (NULL, '1', '0'),
    (NULL, '1', '1'),
    (NULL, '2', '2'),
    (NULL, '2', '0'),
    (NULL, '3', '1'),
    (NULL, '3', '2'),
    (NULL, '4', '0'),
    (NULL, '4', '1'),
    (NULL, '5', '2'),
    (NULL, '5', '3'),
    (NULL, '6', '0'),
    (NULL, '6', '1'),
    (NULL, '7', '2'),
    (NULL, '7', '3'),
    (NULL, '8', '0'),
    (NULL, '8', '1'),
    (NULL, '9', '2'),
    (NULL, '9', '3'),
    (NULL, '10', '0'),
    (NULL, '10', '1'),
    (NULL, '11', '2'),
    (NULL, '11', '3'),
    (NULL, '12', '0'),
    (NULL, '12', '1'),
    (NULL, '13', '2'),
    (NULL, '13', '3'),
    (NULL, '14', '0'),
    (NULL, '14', '1'),
    (NULL, '15', '2'),
    (NULL, '15', '3'),
    (NULL, '16', '0'),
    (NULL, '16', '1'),
    (NULL, '17', '2'),
    (NULL, '17', '3'),
    (NULL, '18', '0'),
    (NULL, '18', '1');