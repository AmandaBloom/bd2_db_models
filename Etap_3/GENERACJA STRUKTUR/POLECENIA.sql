set echo on
set linesize 300
set pagesize 500
spool BD2C038_DML.LIS

  
-- DELETE kaskadowe
INSERT INTO Systemy_Operacyjne VALUES (NULL, 'iOS Zebra', NULL);
INSERT INTO Platformy VALUES (1009, '77.77', NULL);
SELECT * FROM Platformy;
DELETE FROM Systemy_Operacyjne
    WHERE ID_SYSTEMU = 1009;
SELECT * FROM Platformy;

-- DELETE kaskadowe error
SELECT * FROM Wersje_Produktu;
DELETE FROM Produkty
    WHERE ID_PRODUKTU = 1001;
SELECT * FROM Wersje_Produktu;

-- UPDATE na nietransferowalnych więzach 
UPDATE Wersje_Produktu
  SET ID_PRODUKTU = ID_PROD_SEQ.NEXTVAL
  WHERE NUMER_WERSJI = '2001,01';

UPDATE Certyfikacje
  SET ID_SYSTEMU = ID_SYS_SEQ.NEXTVAL
  WHERE NUMER_WERSJI_PLATFORMY = '17.00';

-- INSERT naruszenie więzów spójności
INSERT INTO Certyfikacje VALUES (1002, '7.11', 1001, '1000,01', 'N', TO_DATE('11/12/2022','dd/mm/yyyy'), NULL);

-- INSERT naruszenie unikalności
INSERT INTO Systemy_Operacyjne VALUES (NULL, 'Android 8.0', 'Oreo');

-- UPDATE naruszenie spójności CHECK numeru wersji produktu
UPDATE Wersje_Produktu
  SET NUMER_WERSJI = '148,859'
  WHERE NUMER_WERSJI = '1000,01';

UPDATE Wersje_Produktu
  SET NUMER_WERSJI = '1488.59'
  WHERE NUMER_WERSJI = '1000,01';

UPDATE Wersje_Produktu
  SET NUMER_WERSJI = '1488259'
  WHERE NUMER_WERSJI = '1000,01';
  
-- Próba dodania wartości certyfikatu z niepoprawna wartoscia
INSERT INTO Certyfikacje VALUES (1008, '17.00', 1005, '2442,00', 'F', TO_DATE('08/12/2022','dd/mm/yyyy'), TO_DATE('08/01/2023','dd/mm/yyyy'));

spool off