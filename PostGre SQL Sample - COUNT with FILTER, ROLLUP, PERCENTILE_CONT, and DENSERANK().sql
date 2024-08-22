-- In this sample, a table is created and values inserted using PostGre SQL.
-- The SELECT statements from line 76 onwards should demonstrate use of COUNT with FILTER, ROLLUP, PERCENTILE_CONT, and DENSERANK(). 

DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
	Product_ID VARCHAR(10), 
	Category VARCHAR(25), 
	Product_Name VARCHAR(100), 
	Price DECIMAL(8,2), 
	Dimension INT
);

INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE180','Solar panels','K-Eco 180','315','1');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE200','Solar panels','K-Eco 200','350','2');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE225','Solar panels','K-Eco 225','385','3');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE250','Solar panels','K-Eco 250','437.5','4');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE250X','Solar panels','K-Eco 250x','650','5');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE275','Solar panels','K-Eco 275','481.25','6');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE300','Solar panels','K-Eco 300','525','7');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE325','Solar panels','K-Eco 325','568.75','8');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE325X','Solar panels','K-Eco 325x','890.5','9');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE450','Solar panels','K-Eco 450','787.5','10');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE5','Solar panels','K-Eco Mini','39.95','11');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE001','Solar panels','K-Eco phone charger','13.85','12');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE575','Solar panels','K-Eco 575','1006.25','13');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KI2K','Grid Tie Inverters','K-Invert 2K','3060','14');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KI4K','Grid Tie Inverters','K-Invert 4K','6120','15');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KI7K','Grid Tie Inverters','K-Invert 7K','10710','16');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KI9K','Grid Tie Inverters','K-Invert 9K','19800','17');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KI13K','Grid Tie Inverters','K-Invert 13K','28600','18');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KI20K','Grid Tie Inverters','K-Invert 20K','44000','19');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KEAA06','Batteries','K-Eco AA NiMH rechargeable batteries (6-pack)','7.35','20');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KEAA12','Batteries','K-Eco AA NiMH rechargeable batteries (12-pack)','12.5','21');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KEAAA06','Batteries','K-Eco AAA NiMH rechargeable batteries (6-pack)','6.5','22');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KEAAA12','Batteries','K-Eco AAA NiMH rechargeable batteries (12-pack)','9.8','23');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE12Li','Batteries','K-Eco 12-volt Lithium-ion solar backup battery','4500','24');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE18Li','Batteries','K-Eco 18-volt Lithium-ion solar backup battery','5200','25');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE36Li','Batteries','K-Eco 36-volt Lithium-ion solar backup battery','7500','26');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KE48Li','Batteries','K-Eco 48-volt Lithium-ion solar backup battery','13233','27');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KEBR5','Wind harvester','K-Eco Breeze Mini','55','28');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KEBL100','Wind harvester','K-Eco Blast 100','280','29');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KEBL200','Wind harvester','K-Eco Blast 200','550','30');
INSERT INTO Products (Product_ID, Category, Product_Name, Price, Dimension)
VALUES ('KEBL400','Wind harvester','K-Eco Blast 400','880','31');

SELECT product_name,
	category,
	price, 
	MIN(price) OVER (PARTITION BY category) AS cat_min_price,
	MAX(price) OVER (PARTITION BY category) AS cat_max_price,
	ROUND(AVG(price) OVER (PARTITION BY category),4) AS cat_avg_price,
	COUNT(*) OVER (PARTITION BY category) AS cat_count
FROM Products
-- WINDOW W AS (PARTITION BY category)
/* un check line 84 and replace 'PARTITION BY category' in lines 79 - 81 to use this as an alias */
ORDER BY category, price;

-- Create a view with some database statistics, grouping by what might be defined as a small product or large one. 
-- In this scenario, 'small' is defined as anything equal to or less than 16. 
SELECT product_id, 
	COUNT(*) AS "Count All", 
	AVG(price) AS "Average Price", 
	-- Small Products
	COUNT(*) FILTER (WHERE Dimension <= 16) AS "Count Small", 
	AVG(price) FILTER (WHERE Dimension <= 16) AS "Average Price Small", 
	-- Large Products
	COUNT(*) FILTER (WHERE Dimension > 16) AS "Count Large", 
	AVG(price) FILTER (WHERE Dimension > 16) AS "Average Price Large"
FROM Products
GROUP BY ROLLUP (product_id)
ORDER BY product_id
*/

-- In this scenario, create a view for some database statistics, counting how many rows qualify for what percentile rank as defined by price. 
SELECT 
	category,
	MIN(price) AS min_price,
	PERCENTILE_CONT(.25) WITHIN GROUP (ORDER BY price) AS first_quartile, 
	PERCENTILE_CONT(.50) WITHIN GROUP (ORDER BY price) AS second_quartile, 
	PERCENTILE_CONT(.75) WITHIN GROUP (ORDER BY price) AS third_quartile,  
	MAX(price) AS max_price, 
	MAX(price) - MIN(price) AS price_range
FROM products
GROUP BY category;

-- In this scenario, create a statistical database overview ranking rows by price. 
SELECT product_name,
	category,
	Dimension,
	price, 
	DENSE_RANK() OVER (ORDER BY price DESC) AS overall_rank, 
	DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS category_rank, 
	DENSE_RANK() OVER (PARTITION BY Dimension ORDER BY price DESC) AS size_rank
FROM products
ORDER BY category, price DESC;