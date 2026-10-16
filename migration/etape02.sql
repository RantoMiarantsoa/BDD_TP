CREATE TABLE CATEGORIE(
    id_cat INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    libelle VARCHAR(200)
);

INSERT INTO CATEGORIE(libelle) VALUES ('Plat Malagasy'), ('Dessert et goûter'), ('Boisson'),('Plat Chinois'),('Soupe');

ALTER TABLE PLAT ADD COLUMN id_categorie INTEGER;
ALTER TABLE PLAT ALTER COLUMN id_categorie SET NOT NULL;

        

UPDATE PLAT SET id_categorie = 1 WHERE nom_plat='Romazava';
UPDATE PLAT SET id_categorie = 1 WHERE nom_plat='Ravitoto sy henakisoa';
UPDATE PLAT SET id_categorie = 1 WHERE nom_plat='Akoho sy voanio';

UPDATE PLAT SET id_categorie = 2 WHERE nom_plat = 'Dessert';
UPDATE PLAT SET id_categorie = 5 WHERE nom_plat = 'Soupe chinoise';
UPDATE PLAT SET id_categorie = 3 WHERE nom_plat = ' Ranon ampango';
UPDATE PLAT SET id_categorie = 4 WHERE nom_plat = 'Mi sao';



