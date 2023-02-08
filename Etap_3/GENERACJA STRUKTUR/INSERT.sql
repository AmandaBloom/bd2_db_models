INSERT INTO Systemy_Operacyjne VALUES (NULL, 'Windows 7', NULL);
INSERT INTO Systemy_Operacyjne VALUES (NULL, 'Windows 8', NULL);
INSERT INTO Systemy_Operacyjne VALUES (NULL, 'Windows 10', NULL);
INSERT INTO Systemy_Operacyjne VALUES (NULL, 'Windows 11', NULL);
INSERT INTO Systemy_Operacyjne VALUES (NULL, 'Ubuntu 18', NULL);
INSERT INTO Systemy_Operacyjne VALUES (NULL, 'Ubuntu 20', NULL);
INSERT INTO Systemy_Operacyjne VALUES (NULL, 'Ubuntu 22', NULL);
INSERT INTO Systemy_Operacyjne VALUES (NULL, 'Android 8.0', 'Oreo');

INSERT INTO Produkty VALUES (NULL, 'Car Consumption Calculator', 'Car economy calculator');
INSERT INTO Produkty VALUES (NULL, 'Car Consumption Calculator PRO', 'Car economy calculator, premium version');
INSERT INTO Produkty VALUES (NULL, 'Car Consumption Calculator Lite', 'Car economy calculator, most important purposes');
INSERT INTO Produkty VALUES (NULL, 'Weksel Lite', 'Spreadsheet app');
INSERT INTO Produkty VALUES (NULL, 'Weksel PRO', 'Spreadsheet app - full version');


INSERT INTO Platformy VALUES (1001, '7.11', NULL);
INSERT INTO Platformy VALUES (1001, '7.12', NULL);
INSERT INTO Platformy VALUES (1001, '7.13', 'Wsparcie obiektów 3D');
INSERT INTO Platformy VALUES (1002, '8.00', NULL);
INSERT INTO Platformy VALUES (1002, '8.01', NULL);
INSERT INTO Platformy VALUES (1002, '8.02', NULL);
INSERT INTO Platformy VALUES (1003, '10.15', NULL);
INSERT INTO Platformy VALUES (1003, '10.17A', 'Brak wsparcia dla XYZ');
INSERT INTO Platformy VALUES (1004, '11.00', 'Beta Testy OS');
INSERT INTO Platformy VALUES (1005, '04', NULL);
INSERT INTO Platformy VALUES (1005, '05', NULL);
INSERT INTO Platformy VALUES (1005, '06', NULL);
INSERT INTO Platformy VALUES (1006, '01', NULL);
INSERT INTO Platformy VALUES (1007, '12', NULL);
INSERT INTO Platformy VALUES (1008, '17.00', NULL);
INSERT INTO Platformy VALUES (1008, '17.01', NULL);


INSERT INTO Wersje_Produktu VALUES (1001, '1000,01', NULL);
INSERT INTO Wersje_Produktu VALUES (1002, '2000,01', NULL);
INSERT INTO Wersje_Produktu VALUES (1002, '2000,02', NULL);
INSERT INTO Wersje_Produktu VALUES (1002, '2001,01', NULL);
INSERT INTO Wersje_Produktu VALUES (1003, '3000,01', NULL);
INSERT INTO Wersje_Produktu VALUES (1003, '3000,02', 'Wersja z banerem reklamy');
INSERT INTO Wersje_Produktu VALUES (1004, '4120,00', NULL);
INSERT INTO Wersje_Produktu VALUES (1005, '2442,00', NULL);
INSERT INTO Wersje_Produktu VALUES (1005, '2442,01', NULL);

INSERT INTO Certyfikacje VALUES (1001, '7.11', 1001, '1000,01', 'N', TO_DATE('11/12/2022','dd/mm/yyyy'), NULL);
INSERT INTO Certyfikacje VALUES (1005, '04', 1003, '3000,01', 'C', TO_DATE('08/01/2023','dd/mm/yyyy'), TO_DATE('08/04/2023','dd/mm/yyyy'));
INSERT INTO Certyfikacje VALUES (1007, '12', 1005, '2442,00', 'T', TO_DATE('08/12/2022','dd/mm/yyyy'), TO_DATE('08/01/2023','dd/mm/yyyy'));
INSERT INTO Certyfikacje VALUES (1003, '10.15', 1002, '2001,01', 'T', TO_DATE('20/11/2022','dd/mm/yyyy'), TO_DATE('20/11/2023','dd/mm/yyyy'));
INSERT INTO Certyfikacje VALUES (1003, '10.15', 1003, '3000,02', default, TO_DATE('16/01/2022','dd/mm/yyyy'), NULL);

COMMIT;