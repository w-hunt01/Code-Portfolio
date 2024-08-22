-- In this sample, a table is made and values inserted using PostGre SQL
-- The data is then modified following a scenario described in line 127
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
	customer VARCHAR(200), 
	order_date DATE, 
	order_id INT
);

INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Bread Express','2021-03-15','100');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-03-17 ','101');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-03-19 ','102');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-03-19 ','103');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Flavorville',' 2021-03-20 ','104');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Delish Food',' 2021-03-21 ','105');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Flavorville',' 2021-03-22 ','106');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Wild Rose',' 2021-03-23 ','107');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Wild Rose',' 2021-03-24 ','108');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-03-25 ','109');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Bread Express',' 2021-03-25 ','110');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-03-26 ','111');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-03-26 ','112');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Flavorville',' 2021-03-27 ','113');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Wild Rose',' 2021-03-28 ','114');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-03-28 ','115');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Delish Food',' 2021-03-28 ','116');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Delish Food',' 2021-03-29 ','117');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Bread Express',' 2021-03-29 ','118');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-03-30 ','119');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Bread Express',' 2021-03-31 ','120');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Bread Express',' 2021-04-01 ','121');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-04-03 ','122');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-04-05 ','123');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-04-05 ','124');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Flavorville',' 2021-04-06 ','125');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Delish Food',' 2021-04-07 ','126');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Flavorville',' 2021-04-08 ','127');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Wild Rose',' 2021-04-09 ','128');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Wild Rose',' 2021-04-10 ','129');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-04-11 ','130');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Bread Express',' 2021-04-11 ','131');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-04-12 ','132');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-04-12 ','133');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Flavorville',' 2021-04-13 ','134');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Wild Rose',' 2021-04-14 ','135');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-04-14 ','136');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Delish Food',' 2021-04-14 ','137');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Delish Food',' 2021-04-15 ','138');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Bread Express',' 2021-04-15 ','139');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-04-16 ','140');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Bread Express',' 2021-04-16 ','141');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-04-17 ','142');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-04-19 ','143');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-04-19 ','144');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Flavorville',' 2021-04-20 ','145');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Delish Food',' 2021-04-21 ','146');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Flavorville',' 2021-04-22 ','147');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Wild Rose',' 2021-04-23 ','148');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Wild Rose',' 2021-04-24 ','149');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-04-25 ','150');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Bread Express',' 2021-04-25 ','151');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Green Gardens',' 2021-04-26 ','152');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-04-26 ','153');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Flavorville',' 2021-04-27 ','154');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Wild Rose',' 2021-04-28 ','155');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Blue Vine',' 2021-04-28 ','156');
INSERT INTO Customers (customer, order_date, order_id)
VALUES ('Delish Food',' 2021-04-28 ','157');

-- Scenario: Find the number of orders placed in March and April 2021 for each customer
SELECT customer,
	COUNT(*) AS Total_Orders,
	COUNT(*) FILTER (WHERE EXTRACT(MONTH FROM order_date) = 3) AS March_Orders,
	COUNT(*) FILTER (WHERE EXTRACT(MONTH FROM order_date) = 4) AS April_Orders
FROM Customers
GROUP BY Customer;