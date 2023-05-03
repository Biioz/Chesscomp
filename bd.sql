/*Fichier de création des tables*/

/*Création de la table TYPES*/
CREATE TABLE TYPES(
	t_id VARCHAR(30) NOT NULL,
	PRIMARY KEY(t_id)
);

/*Création de la table CADENCE*/
CREATE TABLE CADENCE(
	ca_id VARCHAR(20) NOT NULL,
	PRIMARY KEY(ca_id)

);

/*Création de la table LIEU*/
CREATE TABLE LIEU (
	l_id INT NOT NULL AUTO_INCREMENT,
	l_ville VARCHAR(30) NOT NULL,
	l_num INT NOT NULL,
	l_rue VARCHAR(60) NOT NULL,
	l_region VARCHAR(60) NOT NULL,
	PRIMARY KEY (l_id)
	
);

/*Création de la table UTILISATEUR*/
CREATE TABLE UTILISATEUR (
	u_id INT NOT NULL AUTO_INCREMENT,
	u_nom VARCHAR(30) NOT NULL,
	u_prenom VARCHAR(30) NOT NULL,
	u_mail VARCHAR(30) NOT NULL,
	u_mdp VARCHAR(30) NOT NULL,
	u_dNaissance date NOT NULL,
	categorie VARCHAR(20) NOT NULL,
	u_rang int,
	u_nationalite VARCHAR(30) NOT NULL,
	PRIMARY KEY (u_id)
);

/*Création de la table COMPETITION*/
CREATE TABLE COMPETITION (
	c_id INT NOT NULL AUTO_INCREMENT,
	c_nom VARCHAR(30) NOT NULL,
	c_date date NOT NULL,
	t_id VARCHAR(30) NOT NULL,
	ca_id VARCHAR(20) NOT NULL,
	l_id INT NOT NULL,
	PRIMARY KEY (c_id)
);

/*Création de la table PARTICIPE*/
CREATE TABLE PARTICIPE(
	joueur INT NOT NULL,
	competitions INT NOT NULL
);


AlTER TABLE UTILISATEUR
	ADD FOREIGN KEY (categorie) REFERENCES TYPES(t_id)
;

AlTER TABLE COMPETITION
	ADD FOREIGN KEY (t_id) REFERENCES TYPES(t_id),
	ADD FOREIGN KEY (ca_id) REFERENCES CADENCE(ca_id),
	ADD FOREIGN KEY (l_id) REFERENCES LIEU(l_id)
;

AlTER TABLE PARTICIPE
	ADD PRIMARY KEY (joueur, competitions),
	ADD FOREIGN KEY (joueur) REFERENCES UTILISATEUR(u_id),
	ADD FOREIGN KEY (competitions) REFERENCES COMPETITION(c_id)
;












