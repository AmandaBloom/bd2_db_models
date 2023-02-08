DELETE FROM Certyfikacje;
DELETE FROM Platformy;
DELETE FROM Wersje_Produktu;
DELETE FROM Produkty;
DELETE FROM Systemy_Operacyjne;

DROP SEQUENCE id_prod_seq;
DROP SEQUENCE id_sys_seq;

DROP TABLE Certyfikacje;
DROP TABLE Platformy;
DROP TABLE Systemy_Operacyjne;
DROP TABLE Wersje_Produktu;
DROP TABLE Produkty;

COMMIT;