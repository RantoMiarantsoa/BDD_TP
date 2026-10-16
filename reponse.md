## NIVEAU 1: Fondamental
# Etape 01
    nouveau:
        - Table : PLAT(**id_plat**,nom,prix)
    **Piege**:
        -Type du prix j'ai mis INTEGER,
        -Pour l'identifiant j'ai aussi mis en INTEGER
    
# Etape 02
    nouveau
        -Table: CATEGORIE(**id_cat**,libelle)
    modifier:
        Table: PLAT:(**id_plat**,nom,#id_categorie,prix)

        PLAT->CATEGORIE
        Si on ajoute une colonne VARCHAR(50) donc à chaque insertion nouveau plat il faut entrer manuellement le nom categorie et les noms du catégories peuvent changer à chaque fois
         ex: On a catégorie Soupe et quelqu'un peut ajouter un nouveau plat dans la carte et il met 'Lasopy' comme catégorie 
        et on ne pourrait pas ralier les 2 tables 
    
# Etape03
    nouveau: 
        Table: COMMANDE(**id_com**,date)
                COMMANDE_DETAIL(*id_detail**,#id_com,#id_plat,qte)

Piege: Je mets la quantité dans la table commande_detail

# Etape 4:
    nouveau:
        Table: CLIENT(**id_client**,nom_client)
    modifier:
        COMMANDE(**id_com**,date,#id_client)

        Piege: Le FK n'est pas  null 
        J'utilise LEFT JOIN pour ne pas  perdre aucune commande

Piege:Une table de la salle et la commande sont différentes parce que la table de la salle indique juste l'endroit que les clients s'installe et la commande représente l'achat qu'un client fait en une journée