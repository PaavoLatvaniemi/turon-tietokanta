
/* Mysql dokumentaatio SELECT -komennon syntaksista.
 * 
 * https://dev.mysql.com/doc/refman/5.7/en/select.html
 * 
 * - Mysql tietokanta sisältää useita eri tietotyyppejä. Kannattaa
 *   aina lukea tarkemmin dokumentaatiosta mitä ne ovat, koska
 *   pieniä eroja voi olla eri versioiden välillä.
 * -- https://dev.mysql.com/doc/refman/5.7/en/data-types.html
 * -- https://www.tutorialspoint.com/mysql/mysql-data-types.htm
 * 
 * - Numerot, merkkijonot, ajankohdat
 * 
 *  Sakila esimerkkitietokannan kuvaus: https://dev.mysql.com/doc/sakila/en/
*/ 

-- show databases;

-- use sakila;

-- show tables;

-- desc film;

-- desc payment;

-- desc customer;


-- show create table film;

-- show keys from film;



/* 
 CREATE TABLE `film` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `rental_rate` decimal(4,2) NOT NULL DEFAULT '4.99',
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) NOT NULL DEFAULT '19.99',
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT 'G',
  `special_features` set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`film_id`),
  KEY `idx_title` (`title`),
  KEY `idx_fk_language_id` (`language_id`),
  KEY `idx_fk_original_language_id` (`original_language_id`),
  CONSTRAINT `fk_film_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_film_language_original` FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4
*/

