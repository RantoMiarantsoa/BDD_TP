CREATE TABLE PLAT(
    id_plat INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom_plat VARCHAR(100),
    prix INTEGER
    );

    INSERT INTO PLAT(nom_plat,prix) VALUES
            ('Romazava',7000),
            ('Ravitoto sy henakisoa',8000),
            ('Akoho sy voanio',8500),
            ('Mi sao',6000),
            ('Soupe chinoise',5000),
            ('Mofo gasy (les 4)',1000),
            ('Ranon ampango',500);

        SELECT * FROM PLAT ORDER BY prix DESC;
