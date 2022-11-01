-- Create a new database called 'movies'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'movies'
)
CREATE DATABASE movies
GO

-- Drop a table called 'country' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[country]', 'U') IS NOT NULL
DROP TABLE [dbo].[country]
GO

-- Create a new table called '[country]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[country]', 'U') IS NOT NULL
DROP TABLE [dbo].[country]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[country]
(
    [country_id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [country_iso_code] NVARCHAR(10) default NULL,
    [country_name] NVARCHAR(200) default NULL
);
GO

INSERT INTO movies.dbo.country (country_id, country_iso_code, country_name) VALUES
(128,'AE','United Arab Emirates'),
(129,'AF','Afghanistan'),
(130,'AO','Angola'),
(131,'AR','Argentina'),
(132,'AT','Austria'),
(133,'AU','Australia'),
(134,'AW','Aruba'),
(135,'BA','Bosnia and Herzegovina'),
(136,'BE','Belgium'),
(137,'BG','Bulgaria'),
(138,'BO','Bolivia'),
(139,'BR','Brazil'),
(140,'BS','Bahamas'),
(141,'BT','Bhutan'),
(142,'CA','Canada'),
(143,'CH','Switzerland'),
(144,'CL','Chile'),
(145,'CM','Cameroon'),
(146,'CN','China'),
(147,'CO','Colombia'),
(148,'CS','Serbia and Montenegro'),
(149,'CY','Cyprus'),
(150,'CZ','Czech Republic'),
(151,'DE','Germany'),
(152,'DK','Denmark'),
(153,'DM','Dominica'),
(154,'DO','Dominican Republic'),
(155,'DZ','Algeria'),
(156,'EC','Ecuador'),
(157,'EG','Egypt'),
(158,'ES','Spain'),
(159,'FI','Finland'),
(160,'FJ','Fiji'),
(161,'FR','France'),
(162,'GB','United Kingdom'),
(163,'GP','Guadaloupe'),
(164,'GR','Greece'),
(165,'GY','Guyana'),
(166,'HK','Hong Kong'),
(167,'HU','Hungary'),
(168,'ID','Indonesia'),
(169,'IE','Ireland'),
(170,'IL','Israel'),
(171,'IN','India'),
(172,'IR','Iran'),
(173,'IS','Iceland'),
(174,'IT','Italy'),
(175,'JM','Jamaica'),
(176,'JO','Jordan'),
(177,'JP','Japan'),
(178,'KE','Kenya'),
(179,'KG','Kyrgyz Republic'),
(180,'KH','Cambodia'),
(181,'KR','South Korea'),
(182,'KZ','Kazakhstan'),
(183,'LB','Lebanon'),
(184,'LT','Lithuania'),
(185,'LU','Luxembourg'),
(186,'LY','Libyan Arab Jamahiriya'),
(187,'MA','Morocco'),
(188,'MC','Monaco'),
(189,'MT','Malta'),
(190,'MX','Mexico'),
(191,'MY','Malaysia'),
(192,'NG','Nigeria'),
(193,'NL','Netherlands'),
(194,'NO','Norway'),
(195,'NZ','New Zealand'),
(196,'PA','Panama'),
(197,'PE','Peru'),
(198,'PH','Philippines'),
(199,'PK','Pakistan'),
(200,'PL','Poland'),
(201,'PT','Portugal'),
(202,'RO','Romania'),
(203,'RS','Serbia'),
(204,'RU','Russia'),
(205,'SE','Sweden'),
(206,'SG','Singapore'),
(207,'SI','Slovenia'),
(208,'SK','Slovakia'),
(209,'TH','Thailand'),
(210,'TN','Tunisia'),
(211,'TR','Turkey'),
(212,'TW','Taiwan'),
(213,'UA','Ukraine'),
(214,'US','United States of America'),
(215,'ZA','South Africa');

DROP TABLE IF EXISTS movies.dbo.gender;

CREATE TABLE movies.dbo.gender (
  gender_id INT NOT NULL PRIMARY KEY,
  gender VARCHAR(20) NOT NULL,
);

INSERT INTO movies.dbo.gender (gender_id, gender) VALUES
(0,'Unspecified'),
(1,'Female'),
(2,'Male');

DROP TABLE IF EXISTS movies.dbo.genre;

CREATE TABLE movies.dbo.genre (
  genre_id INT NOT NULL PRIMARY KEY,
  genre_name varchar(100) DEFAULT NULL
);

INSERT INTO movies.dbo.genre (genre_id, genre_name) VALUES
(12,'Adventure'),
(14,'Fantasy'),
(16,'Animation'),
(18,'Drama'),
(27,'Horror'),
(28,'Action'),
(35,'Comedy'),
(36,'History'),
(37,'Western'),
(53,'Thriller'),
(80,'Crime'),
(99,'Documentary'),
(878,'Science Fiction'),
(9648,'Mystery'),
(10402,'Music'),
(10749,'Romance'),
(10751,'Family'),
(10752,'War'),
(10769,'Foreign'),
(10770,'TV Movie');

DROP TABLE IF EXISTS movies.dbo.language;

CREATE TABLE movies.dbo.language (
  language_id INT NOT NULL PRIMARY KEY,
  language_code NCHAR(2) DEFAULT NULL,
  language_name NVARCHAR(500) DEFAULT NULL
);

INSERT INTO movies.dbo.language (language_id, language_code, language_name) VALUES
(24574,'en','English'),
(24575,'sv','Swedish'),
(24576,'de','German'),
(24577,'xx','No Language'),
(24578,'ja','Japanese'),
(24579,'fr','French'),
(24580,'es','Spanish'),
(24581,'ar','Arabic'),
(24582,'la','Latin'),
(24583,'km',''),
(24584,'vi','Vietnamese'),
(24585,'tr','Turkish'),
(24586,'el','Greek'),
(24587,'zh','Chinese'),
(24588,'ru','Russian'),
(24589,'ga','Irish'),
(24590,'cn','Cantonese'),
(24591,'hu','Hungarian'),
(24592,'he','Hebrew'),
(24593,'ne',''),
(24594,'si',''),
(24595,'it','Italian'),
(24596,'nl','Dutch'),
(24597,'fi','Finnish'),
(24598,'pt','Portuguese'),
(24599,'gd',''),
(24600,'fa','Persian'),
(24601,'ur','Urdu'),
(24602,'da','Danish'),
(24603,'th','Thai'),
(24604,'no','Norwegian'),
(24605,'sq','Albanian'),
(24606,'pl','Polish'),
(24607,'is','Icelandic'),
(24608,'tl',''),
(24609,'pa','Punjabi'),
(24610,'hi','Hindi'),
(24611,'kk','Kazakh'),
(24612,'bg','Bulgarian'),
(24613,'sw','Swahili'),
(24614,'ro','Romanian'),
(24615,'ko','Korean'),
(24616,'cs','Czech'),
(24617,'sk','Slovak'),
(24618,'mi',''),
(24619,'eo','Esperanto'),
(24620,'so','Somali'),
(24621,'af','African'),
(24622,'xh',''),
(24623,'zu','Zulu'),
(24624,'yi',''),
(24625,'ca','Catalan'),
(24626,'sr','Serbian'),
(24627,'sa',''),
(24628,'uk','Ukrainian'),
(24629,'hr','Croatian'),
(24630,'gl','Galician'),
(24631,'sh',''),
(24632,'co',''),
(24633,'kw',''),
(24634,'bo',''),
(24635,'bs','Bosnian'),
(24636,'ps','Pashto'),
(24637,'iu',''),
(24638,'hy',''),
(24639,'am',''),
(24640,'ce',''),
(24641,'et','Estonian'),
(24642,'ku',''),
(24643,'nv',''),
(24644,'mn',''),
(24645,'to',''),
(24646,'bn','Bengali'),
(24647,'ny',''),
(24648,'st',''),
(24649,'dz',''),
(24650,'cy','Welsh'),
(24651,'wo','Wolof'),
(24652,'ka','Georgian'),
(24653,'br',''),
(24654,'ta','Tamil'),
(24655,'id','Indonesian'),
(24656,'ml',''),
(24657,'te','Telugu'),
(24658,'ky',''),
(24659,'bm','Bambara'),
(24660,'sl','Slovene'),
(24701,'nb','');
GO

UPDATE dbo.language 
set language_name = NULL
WHERE language_name = ''


DROP TABLE IF EXISTS movies.dbo.language_role;

CREATE TABLE movies.dbo.language_role (
  role_id INT NOT NULL PRIMARY KEY,
  language_role nvarchar(20) DEFAULT NULL
);

INSERT INTO movies.dbo.language_role (role_id, language_role) VALUES
(1,'Original'),
(2,'Spoken');


DROP TABLE IF EXISTS movies.dbo.department;

CREATE TABLE movies.dbo.department (
  department_id INT NOT NULL PRIMARY KEY,
  department_name nvarchar(200) DEFAULT NULL
);

INSERT INTO movies.dbo.department (department_id, department_name) VALUES
(1,'Camera'),
(2,'Directing'),
(3,'Production'),
(4,'Writing'),
(5,'Editing'),
(6,'Sound'),
(7,'Art'),
(8,'Costume & Make-Up'),
(9,'Crew'),
(10,'Visual Effects'),
(11,'Lighting'),
(12,'Actors');
