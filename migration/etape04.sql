
CREATE TABLE CLIENT(
    id_client INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom_client VARCHAR(100)
);

ALTER TABLE COMMANDE ADD COLUMN id_client INTEGER;
ALTER TABLE COMMANDE ADD CONSTRAINT fk_commande_client
FOREIGN KEY (id_client)
REFERENCES CLIENT (id_client);  

INSERT INTO CLIENT (nom_client ) VALUES
('Tonton'),
('Neks'),
('DYlou');

UPDATE COMMANDE
SET id_client = 1
WHERE id_com = 1;

UPDATE COMMANDE
SET id_client = 2
WHERE id_com = 2;


SELECT
    c.id_com,
    c.date,
    COALESCE(cl.nom_client, 'client de passage') as nom
FROM COMMANDE c
LEFT JOIN CLIENT cl
    ON c.id_client = cl.id_client
ORDER BY c.id_com;