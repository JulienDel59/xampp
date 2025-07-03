-- SELECT / FROM /  AS

SELECT * FROM personnage;
SELECT * FROM arme;
SELECT nom,levelMin FROM arme;
SELECT nom , surnom , level FROM personnage ;
SELECT nom AS Pseudo, level AS Niveau FROM personnage ; 
SELECT libelle AS "type d'armes du jeu" FROM typearme ;

-- COUNT / SUM / AVG / MIN /MAX 

SELECT COUNT(*) as "Nombre d'armes" FROM arme;
SELECT COUNT(*) as "Nombre de personnage" FROM personnage;
SELECT AVG(level) as "Moyenne de niveau" FROM personnage;
SELECT SUM(baseForce) as "Points de force" , SUM(baseAgi) as " Points d'agilité" , SUM(baseIntel) as "Point d'agilité" FROM classe;
SELECT MIN(levelMin) as "MIN(levelMin)" , MAX(levelMin) as "MAX(levelMin)" FROM arme;
SELECT nom, baseForce+baseAgi+baseIntel FROM `classe`;

-- CONCAT / SUBSTRING / LEFT

SELECT CONCAT(nom,' ',surnom ) as personnage FROM `personnage`;
SELECT CONCAT(nom,':',' ','F:',baseForce,' ','A:',baseAgi,' ','I:',baseIntel) as classe FROM classe;
SELECT LEFT(nom, 6 ) FROM personnage;
SELECT SUBSTRING(nom, 1, 6) as substring FROM personnage;
SELECT CONCAT(LEFT(nom, 5),'-',LEFT(description, 20)) AS classe FROM classe;

--  WHERE


SELECT * FROM arme WHERE levelMin > 5;
SELECT * FROM arme WHERE degat < 25;
SELECT nom , surnom FROM personnage WHERE level = 10;
SELECT * FROM typearme WHERE estDistance = 1;

-- AND / OR / BETWEEN

SELECT * FROM arme WHERE levelMIn >=4 AND levelMIn <=8;
SELECT * FROM personnage WHERE idPersonnage <=3 AND level =10;
SELECT nom , levelMin FROM arme WHERE levelMin <4 OR levelMin >8;
SELECT * FROM arme WHERE idArme <=2 OR degat >30;
SELECT * FROM arme WHERE idArme <=2 OR degat BETWEEN 25 AND 40; 
SELECT * FROM personnage WHERE level !=8 AND level >7 OR level <6;
SELECT COUNT(*) AS "NB Perso <10" FROM personnage WHERE level !=10;
SELECT AVG(degat) AS "Moyenne dégat" FROM arme WHERE levelMin >=3 AND levelMin <=7;

-- LIKE / IN LIMIT / OFFSET / IS NULL

SELECT * FROM personnage WHERE nom LIKE 'l%';
SELECT * FROM personnage WHERE nom LIKE 'l%' AND nom LIKE '%er';
SELECT * FROM personnage WHERE nom LIKE 'l%er';
SELECT * FROM arme WHERE nom LIKE '%bois%';
SELECT * FROM arme WHERE nom LIKE 'A_B%';
SELECT * FROM arme WHERE idArme IN (1,2,4,5,7);
SELECT * FROM personnage WHERE idPersonnage IN (2,3,4,6) AND level =10;
SELECT * FROM personnage WHERE surnom IS NOT NULL;
SELECT * FROM personnage WHERE surnom IS NULL;
SELECT * FROM personnage LIMIT 3;
SELECT * FROM personnage LIMIT 2 OFFSET 3;
