## This file is an example of using a stored procedure in MySQL
## The scenario involves using longitude-latitude coordinates to find the nearest major city from a set of six.
## Two of the six cites are considered major metropolitan areas: Atlanta and Charlotte.  

USE sys; 
DROP TABLE IF EXISTS Coordinates1;
CREATE TABLE Coordinates1
(
	City VARCHAR(200), 
    State VARCHAR(200),
    ID SERIAL PRIMARY KEY, 
    Latitude DECIMAL(10,4), 
    Longitude DECIMAL (11,4), 
    Population INT
)
; 

INSERT INTO Coordinates1 (City, State, ID, Latitude, Longitude, Population)
VALUES ('Greenville','SC','6','34.8444','-82.3856','70720');
INSERT INTO Coordinates1 (City, State, ID, Latitude, Longitude, Population)
VALUES  ('Charleston','SC','5','32.7833','-79.9319','150277');
INSERT INTO Coordinates1 (City, State, ID, Latitude, Longitude, Population)
VALUES  ('Asheville','NC','3','35.5956','-82.5519','94589');
INSERT INTO Coordinates1 (City, State, ID, Latitude, Longitude, Population)
VALUES ('Knoxville','TN','4','35.9617','-83.9233','190740');
INSERT INTO Coordinates1 (City, State, ID, Latitude, Longitude, Population)
VALUES ('Atlanta','GA','1','33.7569','-84.3903','498715');
INSERT INTO Coordinates1 (City, State, ID, Latitude, Longitude, Population)
VALUES ('Charlotte','NC','2','35.3369','-81.0442','879709')
;

DROP TABLE IF EXISTS ATL;
CREATE TABLE ATL
(
	City VARCHAR(200), 
    State VARCHAR(200),
    ID SERIAL PRIMARY KEY, 
    Latitude DECIMAL(10,4), 
    Longitude DECIMAL (11,4), 
    Population INT
)
; 

## Once a temporary table for all six cities is created, 
## 	two more tables are needed for dedicated calculations about relative distance to either major city. 
## This is a table dedicated to calculating distance from Atlanta
## Of special interest are lines 63 - 74. 
INSERT INTO ATL (City, State, ID, Latitude, Longitude, Population)
VALUES ('Atlanta','GA','1','33.7569','-84.3903','498715');
;

DROP TABLE IF EXISTS DISATL;
CREATE TABLE DISATL
SELECT 
B.City, 
B.State,
B.ID, 
B.Latitude, 
B.Longitude, 
B.Population, 
## This is an example of an alternative method of calcuating distance. 
/* 
69 * DEGREES(ACOS(LEAST(1.0,COS(RADIANS(B.Latitude))
	* COS(RADIANS(A.Latitude))
    * COS(RADIANS(B.Longitude - A.Longitude))
    + SIN(RADIANS(B.Latitude))
    * SIN(RADIANS(A.Latitude))))) AS DISTATLalt, 
*/
ACOS(COS(RADIANS(90 - B.Latitude))
	* COS(RADIANS(90 - A.Latitude))
    + SIN(RADIANS(90 - B.Latitude))
    * SIN(RADIANS(90 - A.Latitude))
    * COS(RADIANS(B.Longitude - A.Longitude)))
    * 3959 AS DISATL
FROM Coordinates1 B LEFT JOIN ATL A ON B.ID <> A.ID
;

# Like Atlanta, this is a dedicated table for distance from Charlotte. 
DROP TABLE IF EXISTS CLT;
CREATE TABLE CLT
(
	City VARCHAR(200), 
    State VARCHAR(200),
    ID SERIAL PRIMARY KEY, 
    Latitude DECIMAL(10,4), 
    Longitude DECIMAL (11,4), 
    Population INT
)
; 

INSERT INTO CLT (City, State, ID, Latitude, Longitude, Population)
VALUES ('Charlotte','NC','2','35.3369','-81.0442','879709')
; 

DROP TABLE IF EXISTS DISCLT;
CREATE TABLE DISCLT
SELECT 
B.City, 
B.State,
B.ID, 
B.Latitude, 
B.Longitude, 
B.Population, 
/*
69 * DEGREES(ACOS(LEAST(1.0,COS(RADIANS(B.Latitude))
	* COS(RADIANS(A.Latitude))
    * COS(RADIANS(B.Longitude - A.Longitude))
    + SIN(RADIANS(B.Latitude))
    * SIN(RADIANS(A.Latitude))))) AS DISTATLalt, 
*/
ACOS(COS(RADIANS(90 - B.Latitude))
	* COS(RADIANS(90 - A.Latitude))
    + SIN(RADIANS(90 - B.Latitude))
    * SIN(RADIANS(90 - A.Latitude))
    * COS(RADIANS(B.Longitude - A.Longitude)))
    * 3959 AS DISCTL
FROM Coordinates1 B LEFT JOIN CLT A ON B.ID <> A.ID
;

# All three tables may now be combined into one source table. 
# Columns are dedicated to the distance from either Charlotte or Atlanta. 

DROP TABLE IF EXISTS COMBINE;
CREATE TABLE COMBINE 
SELECT 
A.City, 
A.State,
A.ID, 
A.Latitude, 
A.Longitude, 
A.Population, 
ROUND(IFNULL(B.DISATL,0),1) AS Distance_From_ATL,
ROUND(IFNULL(C.DISCTL,0),1) AS Distance_From_CLT
FROM Coordinates1 A 
LEFT JOIN DISATL B ON A.ID = B.ID
LEFT JOIN DISCLT C ON A.ID = C.ID
; 

## Now that the distance from either city can be plainly seen, a
##     minimal distance may be established. 

DROP TABLE IF EXISTS FindNearestMajorCity;
CREATE TABLE FindNearestMajorCity
SELECT 
A.City, 
A.State,
A.ID, 
A.Latitude, 
A.Longitude, 
A.Population, 
LEAST(A.Distance_From_ATL, A.Distance_From_CLT) AS Minimum_Distance, 
CASE 
	WHEN A.Distance_From_ATL > A.Distance_From_CLT THEN 'Charlotte'
    WHEN A.Distance_From_CLT > A.Distance_From_ATL THEN 'Atlanta'
    ELSE A.City
END AS Nearest_City
FROM COMBINE A
GROUP BY 
A.City, 
A.State,
A.ID, 
A.Latitude, 
A.Longitude, 
A.Population, 
A.Distance_From_ATL, 
A.Distance_From_CLT
;

## A stored procedure can be created from this data, so that users
##     might be able to find a quick answer for a given city. 

USE sys
delimiter//
CREATE PROCEDURE NearestMajorCity( IN City1 VARCHAR(200), OUT NearestMajorCity VARCHAR(200))

BEGIN
	SELECT A.Nearest_City INTO NearestMajorCity FROM FindNearestMajorCity A
    WHERE A.City = City1
END//
delimiter 

CALL NearestMajorCity ('Greenville', NearestMajorCity);

SELECT NearestMajorCity 