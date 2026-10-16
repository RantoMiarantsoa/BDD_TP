CREATE TABLE COMMANDE(
    id_com INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    date TIMESTAMP,
);

ALTER TABLE COMMANDE ADD COLUMN designation VARCHAR(20);
CREATE TABLE COMMANDE_DETAIL(
    id_com_detail INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_com INTEGER NOT NULL,
    id_plat INTEGER NOT NULL,
    qte INTEGER NOT NULL,
    FOREIGN KEY (id_com) REFERENCES COMMANDE(id_com),
    FOREIGN KEY (id_plat) REFERENCES PLAT(id_plat)
);

SELECT c.id_com,c.designation,SUM(p.prix * cd.qte) FROM COMMANDE AS c JOIN COMMANDE_DETAIL AS cd ON c.id_com = cd.id_com JOIN PLAT AS p ON cd.id_plat = p.id_plat GROUP BY c.id_com,c.designation;

SELECT
    c.id_com,
    c.date,
    p.nom_plat,
    p.prix,
    cd.qte,
    p.prix * cd.qte AS sous_total
FROM COMMANDE c
JOIN COMMANDE_DETAIL cd ON c.id_com = cd.id_com
JOIN PLAT p ON cd.id_plat = p.id_plat
ORDER BY c.id_com;
INSERT INTO COMMANDE(date,designation) VALUES
    ('2026-10-16 12:30:00','Sakafo atoandro'),
('2026-10-16 13:15:00','Sakafo atoandro'),
('2026-10-16 19:00:00','Sakafo hariva');

INSERT INTO COMMANDE_DETAIL (id_com, id_plat, qte) VALUES
(1, 1, 2),
(1, 3, 1),
(1, 6, 2),
(2, 2, 1),
(2, 4, 2),
(3, 5, 3),
(3, 7, 4);
