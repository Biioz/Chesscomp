/*INSERTION DES DONNEES DE TESTS*/

/*2 SEULS INSERTIONS POSSIBLE DANS TYPES*/
INSERT INTO types (t_id)VALUES
	("officiel"),
	("amateur")
;

/*3 SEULS INSERTIONS POSSIBLE DANS CADENCES*/
INSERT INTO cadence (ca_id)VALUES
	("blitz"),
	("rapide"),
	("classique")
;

/*INSERTIONS POSSIBLE DANS LIEU*/
INSERT INTO lieu (l_id, l_ville, l_num, l_rue, l_region,)VALUES
("Bourges", 1, "avenue Charle de Gaulle", "Centre-val-de-Loire"),
("Le Mans", 2, "rue Saint Honoré", "Centre-val-de-Loire"),
("Paris", 56, "avenue des Champs Elyssé", "Ile de France")
;

/*INSERTIONS POSSIBLE DANS UTILISATEUR*/
INSERT INTO utilisateur (u_nom, u_prenom, u_mail, u_mdp, u_dNaissance, categorie, u_rang, u_nationalite)VALUES
("dufour", "benoit", "dufour.b3012@gmail.com", "aa", "2004-12-30", "officiel", 750, "france"),
("dufey", "april", "april.dufey@gmail.com", "bb", "2004-05-17", "amateur", 100, "france")
;

/*INSERTIONS POSSIBLE DANS COMPETITION*/
INSERT INTO competition (c_nom, c_date, t_id, ca_id, l_id)VALUES
("Competiton de Bourges", "2023-06-27", "amateur", "blitz", 1),
("Competiton du Mans", "2023-09-08", "amateur", "rapide", 2),
("Competiton de Paris", "2024-01-15", "officiel", "classique", 3)
;
 
 /*INSERTIONS POSSIBLE DANS PARTICIPE*/
INSERT INTO participe (joueur, competitions)VALUES
	(2, 1),
	(2, 2),
	(1, 3)
; 
