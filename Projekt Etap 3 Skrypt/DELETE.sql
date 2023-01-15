DELETE FROM certyfikacje;

DELETE FROM platformy;

DELETE FROM produkty;

DELETE FROM "Systemy Operacyjne";

DELETE FROM "Wersje Produktu";

COMMIT;

DROP SEQUENCE id_prod_seq;

DROP SEQUENCE id_sys_seq;

DROP TABLE certyfikacje;

DROP TABLE platformy;

DROP TABLE "Systemy Operacyjne";

DROP TABLE "Wersje Produktu";

DROP TABLE produkty;

COMMIT;