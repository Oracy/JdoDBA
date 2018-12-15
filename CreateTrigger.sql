--TRG_UPDATE_SALDO_AFTER_APOSTA
delimiter //
CREATE TRIGGER TRG_UPDATE_SALDO_AFTER_APOSTA BEFORE INSERT ON Apostas
FOR EACH 
ROW
    BEGIN
        UPDATE Contas
        SET Saldo = Saldo - NEW.Valor_Apostado
        WHERE Apostador_ID = NEW.Apostador_ID;
    END;
//
delimiter ;

--TRG_UPDATE_SALDO_AFTER_DEPOSITO
delimiter //
CREATE TRIGGER TRG_UPDATE_SALDO_AFTER_DEPOSITO BEFORE INSERT ON Deposito
FOR EACH 
ROW
    BEGIN
        UPDATE Contas
        SET Saldo = Saldo + NEW.Valor_Depositado
        WHERE Apostador_ID = NEW.Apostador_ID;
    END;
//
delimiter ;

--TRG_UPDATE_SALDO_AFTER_SAQUE
delimiter //
CREATE TRIGGER TRG_UPDATE_SALDO_AFTER_SAQUE BEFORE INSERT ON Saque
FOR EACH
ROW
    BEGIN
        UPDATE Contas
        SET Saldo = Saldo - NEW.Valor_Sacado
        WHERE Apostador_ID = NEW.Apostador_ID;
    END;
//
delimiter ;

--TRG_UPDATE_SALDO_AFTER_TRANSFERENCIA
delimiter //
CREATE TRIGGER TRG_UPDATE_SALDO_AFTER_TRANSFERENCIA BEFORE INSERT ON Transferencias
FOR EACH 
ROW
    BEGIN
        IF (NEW.Valor_Transferido > 0) THEN
    
            UPDATE Contas
            SET Saldo = Saldo + NEW.Valor_Transferido
               ,Qtd_Transferencia = Qtd_Transferencia + 1
            WHERE Apostador_ID = NEW.Destino_Apostador_ID;

            UPDATE Contas
            SET Saldo = Saldo - NEW.Valor_Transferido
               ,Qtd_Transferencia = Qtd_Transferencia + 1
            WHERE Apostador_ID = NEW.Origem_Apostador_ID;
     
        END IF;
    END;
//
delimiter ;


--TRG_UPDATE_SALDO_AFTER_RESULTADO
delimiter //
CREATE TRIGGER TRG_UPDATE_SALDO_AFTER_RESULTADO BEFORE INSERT ON Resultado
FOR EACH 
ROW
    BEGIN
        IF (NEW.Resultado = (SELECT Resultado FROM Apostas WHERE Aposta_Finalizada = 0)) THEN
       
            UPDATE Apostas
            SET Resultado = NEW.Resultado
               ,Aposta_Finalizada = 1
            WHERE Apostador_ID = (SELECT Apostador_ID FROM Apostas WHERE Aposta_Finalizada = 0);

            UPDATE Contas
            SET Saldo = Saldo + (Valor_Apostado * 2)
            WHERE Apostador_ID = (SELECT Apostador_ID FROM Apostas WHERE Aposta_Finalizada = 0);
            
            ELSE

            UPDATE Apostas
            SET Resultado = NEW.Resultado
               ,Aposta_Finalizada = 1
            WHERE Apostador_ID = (SELECT Apostador_ID FROM Apostas WHERE Aposta_Finalizada = 0);

        END IF;
    END;
//
delimiter ;
