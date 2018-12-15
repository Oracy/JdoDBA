--Aposta_Resultados_View
CREATE VIEW Aposta_Resultados_View AS
      SELECT a.Nome AS Apostador
            ,e.Nome AS Esporte
            ,l.Nome AS Liga
            ,r.Rodada
            ,j.Oponente_1
            ,j.Oponente_2
            ,ap.Minha_Aposta
            ,re.Resultado
            ,(CASE
            	WHEN ap.Minha_Aposta = re.Resultado THEN "Venceu Aposta"
                ELSE "Perdeu Aposta"
             END) AS `Vencedor?`
      FROM Apostadores a
      LEFT JOIN Apostas ap ON a.ID = ap.Apostador_ID
      LEFT JOIN Jogos j ON ap.Jogo_ID = j.ID
      LEFT JOIN Rodadas r ON j.Rodada_ID = r.ID
      LEFT JOIN Ligas l ON r.Liga_ID = l.ID
      LEFT JOIN Esportes e ON l.Esporte_ID = e.ID
      LEFT JOIN Resultados re ON j.ID = re.Jogo_ID
      WHERE ap.Aposta_Finalizada = 1;
    
--Aposta_Pendentes_View
CREATE VIEW Aposta_Pendentes_View AS
      SELECT a.Nome AS Apostador
          ,e.Nome AS Esporte
          ,l.Nome AS Liga
          ,r.Rodada
          ,j.Oponente_1
          ,j.Oponente_2
          ,ap.Minha_Aposta
          ,re.Resultado
      FROM Apostadores a
      LEFT JOIN Apostas ap ON a.ID = ap.Apostador_ID
      LEFT JOIN Jogos j ON ap.Jogo_ID = j.ID
      LEFT JOIN Rodadas r ON j.Rodada_ID = r.ID
      LEFT JOIN Ligas l ON r.Liga_ID = l.ID
      LEFT JOIN Esportes e ON l.Esporte_ID = e.ID
      LEFT JOIN Resultados re ON j.ID = re.Jogo_ID
      WHERE ap.Aposta_Finalizada = 0;

--Consultar_Caixa_View
CREATE VIEW Consultar_Caixa_View AS
    SELECT a.Nome
          ,c.Saldo
          ,COUNT(DISTINCT d.ID) AS Depositos
          ,COUNT(DISTINCT s.ID) AS Saques
          ,SUM(d.Valor_Depositado) AS Valor_Depositado
          ,SUM(s.Valor_Sacado) AS Valor_Sacado
          ,COUNT(DISTINCT t.ID) AS Transferencias_Efetuadas
          ,SUM(t.Valor_Transferido) AS Valor_Enviado_Transferencia
          ,COUNT(DISTINCT ap.ID) AS Quantidade_Apostas
          ,SUM(ap.Valor_Apostado) AS Valor_Apostado
    FROM Apostadores a
    LEFT JOIN Contas c ON a.ID = c.Apostador_ID
    LEFT JOIN Depositos d ON a.ID = d.Apostador_ID
    LEFT JOIN Saques s ON a.ID = s.Apostador_ID
    LEFT JOIN Transferencias t ON a.ID = t.Origem_Apostador_ID
    LEFT JOIN Apostas ap ON a.ID = ap.Apostador_ID
    GROUP BY a.Nome, c.Saldo;