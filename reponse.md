## NIVEAU 1: Fondamental
# Etape 01
    nouveau:
        - Table : PLAT(**id_plat**,nom,categorie,prix)
    **Piege**:
        -Type du prix j'ai mis INTEGER,
        -Pour l'identifiant j'ai aussi mis en INTEGER
    
# Etape 02
    nouveau
        -Table: CATEGORIE(**id_cat**,libelle)
    modifier:
        Table: PLAT:(**id_plat**,nom,#id_categorie,prix)