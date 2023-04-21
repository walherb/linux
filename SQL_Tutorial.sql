-- cmd.exe /c chcp 1252 --- chcp 1252
NAVF-TQ2Q-A56Q-NVX2
pg_restore -U postgres -d dvdrental dvdrental.tar
apex.oracle.com

https://gigacourse.com/?1

mysqldump -u root -p --all-databases > all_databases.sql
mysqldump -u root -p --all-databases > C:\MySQLBackup\all_databases_20200424.sql
mysql> source menagerie1_menagerie2_db_backup.sql
mysql> source C:\MySQLBackup\sakila_20200424.sql
\. menagerie1_pets_tb_backup.sql
-------------------------------------------------------------------------------
mysql -u username -p database_name < file.sql

mysql> use db_name;
mysql> source backup-file.sql;

mysql> use db_name;
mysql> SET autocommit=0 ; source the_sql_file.sql ; COMMIT ;

apt-get install pv

{
    "name":"ArjunCodes",
    "username":"arjun",
    "email":"arjungautum@gmail.com"
}
--------------------------------------MySQL RESET AUTO INCREMENT-----------------------------------------
mysql> CREATE TABLE Animals(    
id int NOT NULL AUTO_INCREMENT,     
name CHAR(30) NOT NULL,     
PRIMARY KEY (id)); 

mysql> INSERT INTO Animals (name) VALUES     
('Tiger'),('Dog'),('Penguin'),    
 ('Camel'),('Cat'),('Ostrich');  
 
DELETE FROM animals WHERE id = 6;  
ALTER TABLE Animals AUTO_INCREMENT = 6; 
INSERT INTO Animals (name) VALUES ('Rabbit'); 

TRUNCATE TABLE table_name;

SET  @num := 0;
UPDATE ur_table SET id = @num := (@num+1);
ALTER TABLE ur_table AUTO_INCREMENT = 1;

ALTER TABLE my_table MODIFY COLUMN ID INT(10) UNSIGNED;
COMMIT;
ALTER TABLE my_table MODIFY COLUMN ID INT(10) UNSIGNED AUTO_INCREMENT;
COMMIT;

ALTER TABLE news_feed DROP id
ALTER TABLE news_feed ADD  id BIGINT( 200 ) NOT NULL AUTO_INCREMENT FIRST ,ADD PRIMARY KEY (id)

ALTER TABLE `table_name` DROP `auto_colmn`;
ALTER TABLE `table_name` ADD  `auto_colmn` INT( {many you want} ) NOT NULL AUTO_INCREMENT FIRST ,ADD PRIMARY KEY (`auto_colmn`);

{*****:Working Example:.SQL:Reset Auto_Increment}
ALTER TABLE animals DROP id;
ALTER TABLE animals ADD id INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (id);

{:********************************************************************************}
ALTER TABLE animals DROP id;
ALTER TABLE animals ADD id INT NOT NULL PRIMARY KEY AUTO_INCREMENT FIRST;

ALTER TABLE user ADD id INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (id);

alter table tablename auto_increment=1, algorithm=inplace;

SET @count = 0;
UPDATE `users` SET `users`.`id` = @count:= @count + 1;
ALTER TABLE `users` AUTO_INCREMENT = 1;
--------------------------------------------------------------------------------
ALTER TABLE user AUTO_INCREMENT = 1;

TRUNCATE TABLE user;

ALTER TABLE user DROP ID;
ALTER TABLE user AUTO_INCREMENT = 1;
ALTER TABLE user ADD ID int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE user MODIFY id int (11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
ALTER TABLE user MODIFY id int (11) AUTO_INCREMENT, AUTO_INCREMENT=1;

for database in $(mysql -e 'show databases' -s --skip-column-names); do
	mysqldump $database > "$database.sql";
done

mysql -u  database_username  database_name -p < database_backup_file.sql

sudo mariadb-backup --backup \
      --user=mariabackup_user \
      --password=mariabackup_passwd \
      --target-dir=/data/backup/preupgrade_backup
	  
sudo mariadb-backup --prepare \
      --target-dir=/data/backup/preupgrade_backup
	  
SET GLOBAL innodb_fast_shutdown = 1;
XA RECOVER;
sudo systemctl stop mariadb
sudo yum remove "mariadb-*"
rpm --query --all | grep -i -E "mariadb|galera"


--- https://computingforgeeks.com/how-to-install-mariadb-server-on-centos-rhel-linux/ ---
sudo dnf -y upgrade
curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
sudo bash mariadb_repo_setup --mariadb-server-version=10.6
sudo dnf install boost-program-options -y
sudo dnf module reset mariadb -y
sudo yum install MariaDB-server MariaDB-client MariaDB-backup
sudo systemctl enable --now mariadb
rpm -qi MariaDB-server
sudo systemctl enable --now mariadb
systemctl status mariadb
sudo mariadb-secure-installation

-- Coding Projects
-- Digital Clock 
-- To Do App
-- Expense Tracker

One-to-many 
Many-to-many
One-to-one

\d+ tblname   -- Describing a Table in PostgreSQL

01 - Introducing MySQL (and MariaDB)
02 - Creating and modifying tables in MySQL (and MariaDB)
03 - Data Types in MySQL (and MariaDB)
04 - Inserting Data in MySQL (and MariaDB)
05 - Querying Data in MySQL (and MariaDB)
06 - Performing Joins in MySQL (and MariaDB)
07 - Creating Views in MySQL (and MariaDB)
08 - Leveraging Functions in MySQL (and MariaDB)
09 - Creating Stored Procedures in MySQL (and MariaDB)
10 - Creating Triggers in MySQL (and MariaDB)
11 - Optimizing MySQL (and MariaDB)
12 - Performing Maintenance in MySQL (and MariaDB)

------------------------ Mosh Hamedani SQL Full Course -----------------------------
SELECT * FROM customers WHERE birth_date > '1990-01-01' AND points > 1000;
SELECT * FROM customers WHERE NOT (birth_date > '1990-01-01' AND points > 1000);
SELECT * FROM order_items WHERE order_id = 6 AND (quantity * unit_price) > 30;
SELECT * FROM customers WHERE state IN ('VA', 'FL', 'GA');
SELECT * FROM products WHERE quantity_in_stock IN (49, 38, 72);
SELECT * FROM customers WHERE points BETWEEN 1000 AND 3000;
SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';
SELECT * FROM customers WHERE last_name LIKE 'b%';
SELECT * FROM customers WHERE last_name LIKE '_____y';
SELECT * FROM customers WHERE address LIKE '%Trail%' OR address LIKE '%Avenue%';
SELECT * FROM customers WHERE phone LIKE '%9';
SELECT * FROM customers WHERE last_name REGEXP 'field';

----------------------------------------------------
------------------ Corey Schafer SQL ---------------
CREATE TABLE people (
	id INTEGER,
	name VARCHAR (255)
);

INSERT INTO people VALUES (1, 'Corey');
INSERT INTO people VALUES (2, 'Travis');
INSERT INTO people VALUES (4, 'Bronx');
INSERT INTO people (id, name) VALUES (3, 'Dave');
----------------------------------------------------

CREATE TABLE alumni ( 
ID INT(38),
Name VARCHAR(26),
GradYear INT(38),
TotalDonated DECIMAL(38, 2),
Membership VARCHAR(26),
City VARCHAR(26),
Degree VARCHAR(26),
org_ID INT(38)    


INSERT ALL 
INSERT INTO alumni (ID, Name, GradYear, TotalDonated, Membership, City, Degree, Org_id) 
VALUES (1001, 'Nicholas Tremper', 1967, 50, 'Never member', 'Oakland', 'BIOLOGY', 30),
		(1002, 'Taylor Woltz', 1959, 26400, 'Never member', 'Houston', 'SOCIOLOGY', 20),
		(1003, 'Allen Mowrey', 1991, 1744.08, 'Active', 'Kansas City', 'BUSINESS', 10),
		(1004, 'Frank Hinnenkamp', 2002, 600, 'Active', 'Kansas City', 'HISTORY', 10),
		(1005, 'Jeane Knebel', 1968, 1900, 'Never member', 'Oakland', 'HISTORY', 20),
		(1006, 'Shawn Do', 1989, 10300, 'Active', 'Atlanta', 'BIOLOGY', 10),
		(1007, 'Emma Munk', 1984, 565, 'Active', 'Kansas City', 'BIOLOGY', 30),
		(1008, 'Amberly Wolter', 1988, 147658, 'Lapsed', 'Dallas', 'BUSINESS', 20),
		(1008, 'Amberly Wolter', 1988, 147658, 'Lapsed', 'Dallas', 'BUSINESS', 20),
		(1010, 'Trevor Lawerence', 1976, 975, 'Active', 'Houston', 'BIOLOGY', 30),
		(1011, 'Alex Bey', NULL, 200, 'Never member', 'Phoenix', 'BUSINESS', 30);
		
INSERT INTO alumni (ID, Name, GradYear, TotalDonated, Membership, City, Degree, Org_id) 
VALUES (1008, 'Amberly Wolter', 1988, 147658, 'Lapsed', 'Dallas', 'BUSINESS', 20),
		(1010, 'Trevor Lawerence', 1976, 975, 'Active', 'Houston', 'BIOLOGY', 30),
		(1011, 'Alex Bey', NULL, 200, 'Never member', 'Phoenix', 'BUSINESS', 30);

SELECT 1 FROM DUAL;
DELETE FROM alumni WHERE ID IN (1008, 1010, 1011);

CREATE TABLE organizations ( 
Org_ID INT(10),
Org_Name VARCHAR(75),
Org_type VARCHAR(15)
);

CREATE TABLE orgs ( 
	Org_ID INT(4),
	Org_Name VARCHAR(100),
	Org_Type VARCHAR(25),
	CONSTRAINT orgs_pk PRIMARY KEY (Org_ID)
);

INSERT INTO organizations (org_id, org_name, org_type) 
VALUES (10, 'Alpha Phi Alpha', 'Social'),
	   (20, 'Delta Sigma Theta', 'Social'),
	   (30, 'Biology Club', 'Academic'),
	   (40, 'Chess Club', 'Social'),
	   (50, 'Football Club', 'Sport');
		
INSERT INTO organizations (org_id, org_name, org_type) 
VALUES (40, 'Chess Club', 'Social'),
	   (50, 'Football Club', 'Sport');
	   
	   
INSERT INTO orgs (org_id, org_name, org_type) 
VALUES (10, 'Alpha Phi Alpha', 'Social'),
	   (20, 'Delta Sigma Theta', 'Social'),
	   (30, 'Biology Club', 'Academic'),
	   (40, 'Chess Club', 'Social'),
	   (50, 'Football Club', 'Sport');
	   
		
UPDATE alumni SET ID = ID + 1 WHERE ID > 1008 ORDER BY ID ASC  
INSERT INTO alumni (ID, Name, GradYear, TotalDonated, Membership, City, Degree, Org_id) 
VALUES (1009, 'Lashon Beitz', 1965, 0, 'Never member', 'Phoenix', 'STATISTICS', 20),
		(1010, 'Trevor Lawerence', 1976, 975, 'Active', 'Houston', 'BIOLOGY', 30),
		(1011, 'Alex Bey', NULL, 200, 'Never member', 'Phoenix', 'BUSINESS', 30);

SELECT City, SUM(TotalDonated) FROM alumni GROUP BY City;
SELECT City, SUM(TotalDonated) FROM alumni GROUP BY City HAVING SUM(TotalDonated) > 2000;
SELECT City, SUM(TotalDonated) FROM alumni GROUP BY City HAVING SUM(TotalDonated) > 2000 ORDER BY City ASC;

SELECT *
FROM alumni a
INNER JOIN orgs o
ON a.Org_ID = o.Org_ID;

/etc/mysql/my.cnf 
[mysqld]
bind-address = xxx.xxx.xxx.xxx


SELECT 
   table_name, 
   column_name, 
   data_type 
FROM 
   information_schema.columns
WHERE 
   table_name = 'actor'

mysqldump --routines -u username -p dbname > dbexport.sql
mysql -u username -p dbname < dbexport.sql
create table orders_copy like orders;
drop table orders_copy, new_orders;

------------------------------ Mosh Hamedani ---------------------------------
sed -i 's/utf8mb4_0900_ai_ci/utf8_general_ci/g' backup.sql  
sed -i 's/CHARSET=utf8mb4/CHARSET=utf8/g' backup.sql 

UPDATE `sql_store`.`customers` SET `state` = 'MA' WHERE `customer_id` = 1
SELECT name, unit_price, unit_price * 1.1 AS 'new price' FROM products;
SELECT * FROM orders WHERE order_date >= '2019-01-01';
SELECT * FROM order_items WHERE order_id = 6 AND (quantity * unit_price) > 30;
SELECT * FROM customers WHERE state IN ('VA', 'FL', 'GA');
SELECT * FROM products WHERE quantity_in_stock IN (49,38,72);
SELECT * FROM customers WHERE points BETWEEN 1000 AND 3000;
SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';
SELECT * FROM customers WHERE address LIKE '%TRAIL%' OR address LIKE '%AVENUE%';
SELECT * FROM customers WHERE phone LIKE '%9';
SELECT * FROM customers WHERE phone NOT LIKE '%9';
SELECT * FROM customers WHERE last_name REGEXP 'field';
SELECT * FROM customers WHERE last_name REGEXP '^field';
SELECT * FROM customers WHERE last_name REGEXP 'field'$;
SELECT * FROM customers WHERE last_name REGEXP '[gim]e';
SELECT * FROM customers WHERE last_name REGEXP '[a-h]e';
SELECT * FROM customers WHERE last_name REGEXP 'field|mac';
SELECT * FROM customers WHERE last_name REGEXP 'field|mac|rose';
SELECT * FROM customers WHERE first_name REGEXP 'ELKA|AMBUR';
SELECT * FROM customers WHERE last_name REGEXP 'EY$|ON$';
SELECT * FROM customers WHERE last_name REGEXP '^MY|SE';
SELECT * FROM customers WHERE last_name REGEXP 'B[RU]';

SELECT * FROM cutomers WHERE phone IS NULL;
SELECT * FROM orders WHERE shipper_id IS NULL;
SELECT * FROM customers ORDER BY state, first_name;
SELECT *, quantity * unit_price AS total_price FROM order_items WHERE order_id = 2 ORDER BY total_price DESC;
SELECT * FROM customers LIMIT 6, 3; 
SELECT * FROM customers ORDER BY points DESC LIMIT 3;

SELECT * FROM orders o JOIN customers c ON o.customer_id = c.customer_id;
SELECT order_id, o.customer_id, first_name, last_name FROM orders o JOIN customers c ON o.customer_id = c.customer_id;
SELECT * FROM order_items oi JOIN products p ON oi.product_id = p.product_id;
SELECT order_id, oi.product_id, quantity, oi.unit_price, FROM order_items oi JOIN products p ON oi.product_id = p.product_id;

USE sql_store;
SELECT * 
FROM order_items oi 
JOIN sql_inventory.products p 
	ON oi.product_id = p.product_id;
	
-- Self Join --
USE sql_hr;
SELECT * FROM employees e 
JOIN employees m 
	ON e.reports_to = m.employee_id;
	
SELECT
	e.employee_id,
	e.first_name,
	m.first_name AS manager
FROM employees e
JOIN employees m 
	ON e.reports_to = m.employee_id;

-- Join More Than 2 Tables --
USE sql_store;
SELECT * 
FROM orders o 
JOIN customers c 
	ON o.customer_id = c.customer_id 
JOIN order_statuses os
	ON o.status = os.order_status_id;
	
SELECT 
	o.order_id,
	o.order_date,
	c.first_name,
	c.last_name,
	os.name AS status
FROM orders o 
JOIN customers c 
	ON o.customer_id = c.customer_id 
JOIN order_statuses os
	ON o.status = os.order_status_id;
	
USE sql_invoicing;
SELECT * 
FROM payments p 
JOIN clients c
	ON p.client_id = c.client_id 
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id;
	
USE sql_invoicing;
SELECT 
	p.date,
	p.invoice_id,
	p.amount,
	c.name,
	pm.name
FROM payments p 
JOIN clients c
	ON p.client_id = c.client_id 
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id; 

-- Compound Join --
SELECT * 
FROM order_item oi 
JOIN order_items_notes oin
	ON oi.order_id = oin.order_id
	AND oi.product_id = product.order_id
	
-- Implicit Join Syntax 
SELECT * 
FROM orders o, customers c 
WHERE o.customer_id = c.customer_id;

-- Left Outer Join --
SELECT 
	c.customer_id,
	c.first_name,
	o.order_id 
FROM customers c 
LEFT JOIN orders o 
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- Right Outer Join --
SELECT 
	c.customer_id,
	c.first_name,
	o.order_id 
FROM customers c 
RIGHT JOIN orders o 
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;


SELECT 
	p.product_id,
	p.name,
	oi.quantity 
FROM products p 
LEFT JOIN order_items oi 
	ON p.product_id = oi.product_id;
	
-- Outer Join on Multiple Tables -------------
SELECT 
	c.customer_id,
	c.first_name,
	o.order_id 
FROM customers c 
LEFT JOIN orders o 
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh 
	ON o.shipper_id = sh.shipper_id;
ORDER BY c.customer_id;

-- Exercise ---------
SELECT 
	o.order_id,
	o.order_date,
	c.first_name AS customer,
	sh.name AS shipper,
	os.name AS status
FROM orders o 
JOIN customers c 
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh 
	ON o.shipper_id = sh.shipper_id;
JOIN order_statuses os
	ON o.status = os.order_statuses_id;
-- ORDER BY c.customer_id; (Failed to work in Navicat complaining of unknown column os.name)

-- Self Outer Join ---
SELECT
	e.employee_id,
	e.first_name,
	m.first_name AS manager
FROM employees e
LEFT JOIN employees m 
	ON e.reports_to = m.employee_id;

-- USING Clause --- {: Not Working}
SELECT 
	o.order_id,
	c.first_name,
FROM orders o 
JOIN customers c 
	-- ON o.customer_id = c.customer_id
	USING(customer_id)
LEFT JOIN shippers sh 
	USING(shipper_id);
	
SELECT * 
FROM order_items oi 
JOIN order_items_notes oin 
	USING (order_id, product_id);
	
SELECT 
	p.date,
	c.name AS client,
	p.amount,
	pm.name AS payment_method
FROM payments p 
JOIN clients c USING (client_id)
JOIN payment_methods pm 
	ON p.payment_method = pm.payment_method_id;
-- (Here USING clause Worked)

-- NATURAL JOIN --
SELECT 
	o.order_id,
	c.first_name
FROM orders o
nATURAL JOIN customers c -- Not Recommended

-- Explict Syntax of CROSS JOIN --
SELECT 
	c.first_name AS customer,
	p.name AS product
FROM customers c 
CROSS JOIN products p
ORDER BY c.first_name;

SELECT 
	order_id,
	order_date,
	'Active' AS status 
FROM orders 
WHERE order_date >= '2019-01-01'
UNION
SELECT 
	order_id,
	order_date,
	'Archived' AS status 
FROM orders 
WHERE order_date < '2019-01-01';

SELECT first_name 
FROM customers 
UNION 
SELECT name 
FROM shippers


-- Exercise --
SELECT 
	customer_id, 
	first_name,
	points,
	'Bronze' AS type
FROM customers
WHERE points < 2000
UNION 
SELECT 
	customer_id, 
	first_name,
	points, 
	'Silver' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION 
SELECT 
	customer_id, 
	first_name,
	points, 
	'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name;

---------------------- Inserting Data ---------------
INSERT INTO shippers (name) VALUES ('Shipper1'),
								   ('Shipper2'),
								   ('Shipper3')
								   
-- Inserting Hierarchical Rows ----------
INSERT INTO orders (customer_id, order_dat, status) VALUES (1, '2019-01-02')

SELECT LAST_INSERT_ID()

INSERT INTO order_items 
VALUES 
	(LAST_INSERT_ID(), 1, 1, 2.95),
	(LAST_INSERT_ID(), 2, 1, 3.95)
	
-- Creating a Copy of a Table ----------
CREATE TABLE orders_archived AS 
SELECT * FROM orders

INSERT INTO orders_archived 
SELECT *
FROM orders
WHERE order_date < '2019-01-01';

CREATE TABLE invoices_archived AS 
SELECT 
	i.invoice_id,
	i.number,
	c.name AS client,
	i.invoice_total,
	i.payment_total,
	i.invoice_date,
	i.payment_date,
	i.due_date
FROM invoices i 
JOIN clients c 
	USING (client_id)
WHERE payment_date IS NOT NULL

.1826 -- .1889 {winver}

UPDATE invoices 
SET payment_total = 10, payment_date = '2019-03-01'
WHERE invoice_id = 1;

UPDATE invoices 
	SET payment_total = invoice_total * 0.5, 
	payment_date = due_date
WHERE client_id = 3;

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01';


----------- Sub Queries -------------------------
UPDATE invoices 
	SET payment_total = invoice_total * 0.5, 
	payment_date = due_date
WHERE client_id = 
			(SELECT client_id
			FROM clients
			WHERE name = 'Myworks')
			
-- Exercise: 36
UPDATE orders
SET comments = 'Gold Cusomer'
WHERE customer_id IN 
			(SELECT customer_id
			 FROM customers 
			 WHERE points > 3000);
			 
SELECT 
	MAX(invoice_total) AS Highest,
	MIN(invoice_total) AS Lowest,
	AVG(invoice_total) AS Average
FROM invoices 

SELECT 
	SUM(invoice_total) AS total_sales
FROM invoices 
GROUP BY client_id
ORDER BY total_sales DESC;

SELECT 
	state,
	city,
	SUM(invouce_total) AS total_sales 
FROM invoices i 
JOIN clients USING (client_id)
GROUP BY state, city;

-- Exercise 40
SELECT 
	date,
	pm.name AS payment_method,
	SUM(amount) AS total_payments
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP BY date, payment_method 
ORDER BY date


-- HAVING clause --
SELECT 
	client_id,
	SUM(invoice_total) AS total_sales 
FROM invoices 
GROUP BY client_id 
HAVING total_sales > 500

-- Exercise 41 --
SELECT 
	c.customer_id,
	c.first_name,
	c.last_name,
	SUM(oi.quantity * oi.unit_price) AS total_sales
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE state = 'VA'
GROUP BY 
	c.customer_id,
	c.first_name,
	c.last_name
HAVING total_sales > 100


-- The ROLLUP Operator --
SELECT 
	client_id,
	SUM(invoice_total) AS total_sales
FROM invoices 
GROUP BY client_id WITH ROLLUP 


SELECT 
	state,
	city,
	SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients c USING (client_id)
GROUP BY client_id WITH ROLLUP

-- Exercise 42 --
SELECT 
	pm.name AS payment_method,
	SUM(amount) AS total
FROM payments p 
JOIN payment_methods pm 
	ON p.payment_method = pm.payment_method_id
GROUP BY pm.name WITH ROLLUP

-- Subqueries --
SELECT * 
FROM products 
WHERE unit_price > (
	SELECT unit_price 
	FROM products 
	WHERE product_id = 3
)

-- Exercise 44 --
SELECT *
FROM employees
WHERE salary > (	
	SELECT AVG(salary)
	FROM employees
)

-- The IN Operator --
SELECT * 
FROM products
WHERE product_id NOT IN (
	SELECT DISTINCT product_id 
	FROM order_items
)

-- Exercise -- FInd clients without invoices 
SELECT * 
FROM clients 
WHERE client_id NOT IN (
	SELECT DISTINCT client_id 
	FROM invoices 
)

-- Subqueries vs Joins --
SELECT * 
FROM clients 
LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NULL

-- Exercise 46
-- Find customers who have ordered lettuce (id = 3)
--		Select customer_id, first_name, last_name 
SELECT customer_id, first_name, last_name
FROM customers 
WHERE customer_id IN (
	SELECT o.customer_id 
	FROM order_items oi 
	JOIN orders o USING (order_id)
	WHERE product_id = 3
)

SELECT DISTINCT customer_id, first_name, last_name
FROM customers c 
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3

-- The ALL Keyword --
-- Select invoices larger than all invoices of 
-- client 3
SELECT * 
FROM invoices
WHERE invoice_total > (
	SELECT MAX(invoice_total)
	FROM invoices 
	WHERE client_id = 3
)

SELECT * 
FROM invoices
WHERE invoice_total > ALL (
	SELECT invoice_total
	FROM invoices 
	WHERE client_id = 3
)
-- The ANY Keyword --
-- Select clients with at least two invoices
-- (IN) === (= ANY)
SELECT * 
FROM clients 
WHERE client_id IN (
	SELECT client_id
	FROM invoices 
	GROUP BY client_id 
	HAVING COUNT(*) >= 2
)

SELECT * 
FROM clients 
WHERE client_id = ANY (
	SELECT client_id
	FROM invoices 
	GROUP BY client_id 
	HAVING COUNT(*) >= 2
)

-- Correlated Subqueries --
-- Select employees whose salary is 
-- above the average in their office 
SELECT * 
FROM employees e 
WHERE salary > (
	SELECT AVG(salary)
	FROM employees 
	WHERE office_id = e.office_id
) 


-- Exercise 49 --
-- Get invoices that are larger than the 
-- client's average invoice amount 
SELECT * 
FROM invoices i 
WHERE invoice_total > (
	SELECT AVG(invoice_total)
	FROM invoices 
	WHERE client_id = i.client_id
)

-- The EXISTS Operator --
-- Select clients that have an inoice --
SELECT * 
FROM clients 
WHERE client_id IN (
	SELECT DISTINCT client_id 
	FROM invoices
)

SELECT * 
FROM clients c
WHERE EXISTS (
	SELECT client_id 
	FROM invoices
	WHERE client_id = c.client_id
)

-- Exercise 50 --
-- Find the products that have never been ordered
SELECT * 
FROM products 
WHERE product_id NOT IN (
	SELECT product_id 
	FROM order_items
)

SELECT * 
FROM products p
WHERE NOT EXISTS (
	SELECT product_id 
	FROM order_items
	WHERE product_id = p.product_id
)



-- Stopped on/at Video: 50
--------------------------------------------------------------------------------------



create table customer (
    cust_id int primary key,
    age int,
    location varchar(20),
    gender varchar(20)
    );
	 
create table orders (
    order_id int primary key,
    date date,
    amount decimal(5,2),
    cust_id int,
    foreign key (cust_id) references customer(cust_id)
    on delete cascade
    );
	
alter table orders add is_sale varchar(20);
alter table orders drop is_sale;

insert into customer values (
    1000, 42, 'Austin', 'female'
    );
	
insert into customer values 
    (1001, 34, 'Austin', 'male'),
    (1002, 37, 'Houston', 'male'),
    (1003, 25, 'Austin', 'female'),
    (1004, 28, 'Houston', 'female'),
    (1005, 22, 'Dallas', 'male');
	
delete from orders 
    -> where order_id = 17;
	
update orders
    -> set amount = 27.40
    -> where order_id = 1;
	
create table new_orders
    -> select * from orders;

select date, avg(amount)
    -> from orders
    -> group by date
    -> order by avg(amount) desc;
	
select date, avg(amount)
    -> from orders
    -> group by date
    -> having avg(amount) > 30
    -> order by avg(amount) desc;
	
select date, max(amount)
    -> from orders
    -> group by date;
	
select cust_id, max(amount) - min(amount) as dif
    -> from orders
    -> group by cust_id
    -> order by dif desc
    -> limit 3;
	
select location, gender, count(cust_id)
    -> from customer
    -> group by location, gender;
	
select customer.location, avg(orders.amount) as avg
    -> from customer
    -> join orders
    -> on customer.cust_id = orders.cust_id
    -> group by customer.location;
	
select avg(c.age) as avg_age
    -> from customer c
    -> join orders o
    -> on c.cust_id = o.cust_id
    -> where o.date = '2020-10-03';
	
 select c.location, o.amount
    -> from customer c
    -> join orders o
    -> on c.cust_id = o.cust_id
    -> where o.amount = (select max(amount) from orders)
    -> ;

SELECT Name, District, max(Population) FROM city GROUP BY District ORDER BY Population DESC LIMIT 10;

SELECT ID, Name, CountryCode, District, Population FROM city WHERE Population = (SELECT MAX(Population) FROM city); 
SELECT s1.ID, s1.Name, s1.CountryCode, s1.District, s1.Population FROM city s1 LEFT JOIN city s2 ON s1.Population < s2.Population WHERE s2.Name IS NULL;

SELECT @@system_time_zone;

SELECT now();

SELECT MAX(ID) FROM city;

SELECT LAST_INSERT_ID();

GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT ON *.* TO 'username'@'localhost';
mysql -u username -p < example.sql
SELECT user FROM mysql.user GROUP BY user;
DELETE FROM mysql.user WHERE user = 'username';

SELECT * FROM customers WHERE age >= 30 ORDER BY age ASC;

ALTER TABLE users
ADD email_address varchar(255);

ALTER TABLE users
ADD CONSTRAINT user PRIMARY KEY (ID, SURNAME);

ALTER TABLE deals
ADD approved boolean;

ALTER TABLE deals
DROP COLUMN approved;

ALTER TABLE users
ALTER COLUMN incept_date datetime;

SELECT first_name, surname, tasks_no
FROM users
WHERE tasks_no > ALL (SELECT tasks FROM user WHERE
department_id = 2);

SELECT * FROM events
WHERE host_country='United Kingdom' AND host_
city='London';

SELECT name
FROM products
WHERE productId = ANY (SELECT productId FROM orders WHERE
quantity > 5);

SELECT north_east_user_subscriptions AS ne_subs
FROM users
WHERE ne_subs > 5;

SELECT * FROM stock
WHERE quantity BETWEEN 100 AND 150;

SELECT * FROM stock
WHERE quantity NOT BETWEEN 100 AND 150;

SELECT first_name, surname, subscriptions
CASE WHEN subscriptions > 10 THEN 'Very active'
WHEN Quantity BETWEEN 3 AND 10 THEN 'Active'
ELSE 'Inactive'
END AS activity_levels
FROM users;

CREATE TABLE users (
first_name varchar(255),
age int,
CHECK (age>=18)
);

ALTER TABLE users
ADD CHECK (age>=18);


CREATE TABLE users (
id int,
first_name varchar(255),
surname varchar(255),
address varchar(255),
contact_number int
);

CREATE TABLE products (
id int,
name varchar(255) DEFAULT 'Placeholder Name',
available_from date DEFAULT GETDATE()
);

ALTER TABLE products
ALTER name SET DEFAULT 'Placeholder Name',
ALTER available_from SET DEFAULT GETDATE();

DELETE FROM users WHERE user_id = 674;

ALTER TABLE users
DROP COLUMN first_name;

DROP DATABASE websitesetup;

ALTER TABLE products
ALTER COLUMN name DROP DEFAULT;

DROP TABLE users;

SELECT dealership_name
FROM dealerships
WHERE EXISTS (SELECT deal_name FROM deals WHERE
dealership_id = deals.dealership_id AND finance_
percentage < 10);

SELECT area_manager
FROM area_managers
WHERE EXISTS (SELECT ProductName FROM Products WHERE
area_manager_id = deals.area_manager_id AND Price < 20);

SELECT * FROM users
WHERE country = 'USA' OR country = 'United Kingdom' OR
country = 'Russia' OR country = 'Australia';

SELECT * FROM users
WHERE country IN ('USA', 'United Kingdom', 'Russia',
'Australia');

INSERT INTO cars (make, model, mileage, year)
VALUES ('Audi', 'A3', 30000, 2016);

SELECT * FROM users
WHERE contact_number IS NULL;

SELECT * FROM users
WHERE first_name LIKE '%son';

SELECT * FROM users
WHERE first_name NOT LIKE '%son';

SELECT * FROM users
WHERE city = 'Sheffield' OR 'Manchester';

SELECT * FROM countries
ORDER BY name;

SELECT * FROM countries
WHERE ROWNUM <= 10;

SELECT * INTO usersBackup2020
FROM users;

SELECT DISTINCT country from users;

SELECT TOP 3 * FROM cars;

UPDATE orders
SET value = 19.49, quantity = 2
WHERE id = 642;

TRUNCATE TABLE sessions;

SELECT city FROM events
UNION
SELECT city from subscribers;

CREATE TABLE users (
id int NOT NULL,
name varchar(255) NOT NULL,
UNIQUE (id)
);

ALTER TABLE users
ADD UNIQUE (id);

UPDATE cars
SET mileage = 23500, serviceDue = 0
WHERE id = 45;

INSERT INTO cars (name, model, year)
VALUES ('Ford', 'Fiesta', 2010);

SELECT * FROM orders
WHERE quantity > 1;

CREATE TABLE tshirts (color ENUM(‘red’, ‘green’,
‘blue’, ‘yellow’, ‘purple’));

SELECT COUNT(user_id), active_orders
FROM users
GROUP BY active_orders
HAVING COUNT(user_id) > 3;

SELECT * FROM users
WHERE city LIKE '___chester';

SELECT * FROM users
WHERE first_name LIKE '[jhm]%';

SELECT * FROM users
WHERE first_name LIKE '[a-l]%';

SELECT * FROM users
WHERE first_name LIKE '%[!n-s]';

CREATE TABLE users (
id int NOT NULL AUTO_INCREMENT,
first_name varchar(255),
last_name varchar(255) NOT NULL,
address varchar(255),
email varchar(255),
PRIMARY KEY (id)
);

ALTER TABLE users
ADD PRIMARY KEY (first_name);

CREATE TABLE orders (
id int NOT NULL,
user_id int,
product_id int,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (product_id) REFERENCES products(id)
);

ALTER TABLE orders
ADD FOREIGN KEY (user_id) REFERENCES users(id);

CREATE INDEX idx_test
ON users (first_name, surname);

CREATE UNIQUE INDEX idx_test
ON users (first_name, surname);

ALTER TABLE users
DROP INDEX idx_test;

SELECT orders.id, users.first_name, users.surname, products.name as ‘product name’
FROM orders
INNER JOIN users on orders.user_id = users.id
INNER JOIN products on orders.product_id = products.id;

CREATE VIEW priority_users AS
SELECT * FROM users
WHERE country = ‘United Kingdom’;

SELECT * FROM [priority_users];

CREATE OR REPLACE VIEW [priority_users] AS
SELECT * FROM users
WHERE country = ‘United Kingdom’ OR country=’USA’;

DROP VIEW priority_users;

----------------------------- MSSQL Server ------------------------------------------------
-------------------------------------- JOIN --------------------------------
SELECT TOP 1000 * FROM FactInternetSales s 
Inner JOIN DimProduct p ON s.ProductKey = p.ProductKey

SELECT distinct EnglishProductName FROM FactInternetSales s 
LEFT JOIN DimProduct p ON s.ProductKey = p.ProductKey
ORDER BY 1

SELECT * FROM FactInternetSales s 
INNER JOIN DimProduct p 
	ON s.ProductKey = p.ProductKey
	and p.StartDate > '2013-01-01'
	
------------------------------------ Filter Results -----------------------------------
SELECT * FROM FactInternetSales s 
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
WHERE p.EnglishProductName = 'Road-650 Black, 62'

SELECT * FROM FactInternetSales s 
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
WHERE s.OrderDate >= '2013-01-01'
AND s.OrderDate <= '2013-12-31'

SELECT * FROM FactInternetSales s 
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
WHERE s.OrderDate BETWEEN '2013-01-01' AND '2013-12-31'

SELECT * FROM FactInternetSales s 
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
WHERE p.EnglishProductName IN (
			'Mountain-400-W Silver, 38',
			'Mountain-400-W Silver, 40',
			'Mountain-400-W Silver, 42',
			'Mountain-400-W Silver, 46')
			
			
SELECT * FROM FactInternetSales s 
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
WHERE p.EnglishProductName LIKE 'Mountain%'

---------------------------------- AGGREGATE FUNCTIONS ---------------------------------------------------
use AdventureWorksDW2014;

SELECT OrderDate, sum(SalesAmount) FROM FactInternetSales
GROUP BY OrderDate
ORDER BY OrderDate

-- simple aggregations
-- Use additional aggregations to understand more about product sales such as distribution of sales etc..
SELECT 
		cat.EnglishProductCategoryName 'Category'
    ,	sub.EnglishProductSubcategoryName 'SubCategory'
	,	count(1) 'Count' -- How many sales where there?
	,	sum(s.SalesAmount) 'Sales' -- How much sales did we have?
    ,	avg(s.SalesAmount) 'Avg_SalesAmount' -- What was the Avg sale amount?
    ,	min(s.SalesAmount) 'Min_SaleAmount' -- What was the Min sale amount?
    ,	max(s.SalesAmount) 'Max_SaleAmount' -- What was the Max sale amount
FROM FactInternetSales s
LEFT JOIN DimProduct p ON s.ProductKey = p.ProductKey
LEFT JOIN DimProductSubcategory sub ON p.ProductSubcategoryKey = sub.ProductSubcategoryKey
LEFT JOIN DimProductCategory cat ON sub.ProductCategoryKey = cat.ProductCategoryKey
-- must use group by in order for aggregation to work properly
GROUP BY
		cat.EnglishProductCategoryName -- column aliases aren't allowed
    ,	sub.EnglishProductSubcategoryName
ORDER BY
		cat.EnglishProductCategoryName
	,	sub.EnglishProductSubcategoryName

-- filter to 2013 with WHERE
SELECT 
		YEAR(s.OrderDate) 'Year'
	,	cat.EnglishProductCategoryName 'Category'
    ,	sub.EnglishProductSubcategoryName 'SubCategory'	
	,	count(1) 'Count' -- use 1 instead of a field for faster performance
	,	sum(s.SalesAmount) 'Sales'
    ,	avg(s.SalesAmount) 'Avg_Quantity'
    ,	min(s.SalesAmount) 'Min_SaleAmount'
    ,	max(s.SalesAmount) 'Max_SaleAmount'

FROM FactInternetSales s
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
INNER JOIN DimProductSubcategory sub ON p.ProductSubcategoryKey = sub.ProductSubcategoryKey
INNER JOIN DimProductCategory cat ON sub.ProductCategoryKey = cat.ProductCategoryKey
-- filter
WHERE YEAR(s.OrderDate) = 2013 --use date function to parse year
-- must use group by in order for aggregation to work properly
GROUP BY
		YEAR(s.OrderDate)
	,	cat.EnglishProductCategoryName -- column aliases aren't allowed
    ,	sub.EnglishProductSubcategoryName
ORDER BY
		cat.EnglishProductCategoryName
	,	sub.EnglishProductSubcategoryName

-- Only show products in 2013 that sold more than $1M USD
SELECT 
		cat.EnglishProductCategoryName 'Category'
    ,	sub.EnglishProductSubcategoryName 'SubCategory'	
	,	count(1) 'Count' -- use 1 instead of a field for faster performance
	,	sum(s.SalesAmount) 'Sales'
    ,	avg(s.SalesAmount) 'Avg_Quantity'
    ,	min(s.SalesAmount) 'Min_SaleAmount'
    ,	max(s.SalesAmount) 'Max_SaleAmount'
FROM FactInternetSales s
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
INNER JOIN DimProductSubcategory sub ON p.ProductSubcategoryKey = sub.ProductSubcategoryKey
INNER JOIN DimProductCategory cat ON sub.ProductCategoryKey = cat.ProductCategoryKey
-- filter
WHERE YEAR(s.OrderDate) = 2013 --use date function to parse year
-- must use group by in order for aggregation to work properly
GROUP BY
		cat.EnglishProductCategoryName -- column aliases aren't allowed
    ,	sub.EnglishProductSubcategoryName	
-- use HAVING to filter after the aggregate is computed
HAVING
		sum(s.SalesAmount) > 1000000
ORDER BY
		cat.EnglishProductCategoryName
	,	sub.EnglishProductSubcategoryName
	
------------------------------------ Windows Functions -----------------------------------------------------------
USE AdventureWorksDW2014;
GO

-- Show each sales average for Group, Country, and Region all in one query
SELECT DISTINCT		
		t.SalesTerritoryGroup
	,	t.SalesTerritoryCountry
	,	t.SalesTerritoryRegion
	,	AVG(s.SalesAmount) OVER(PARTITION BY t.SalesTerritoryGroup ) as 'GroupAvgSales'		
	,	AVG(s.SalesAmount) OVER(PARTITION BY t.SalesTerritoryCountry ) as 'CountryAvgSales'
	,	AVG(s.SalesAmount) OVER(PARTITION BY t.SalesTerritoryRegion ) as 'RegionAvgSales'	
	
FROM FactInternetSales s
JOIN DimSalesTerritory t ON
	s.SalesTerritoryKey = t.SalesTerritoryKey	
WHERE
		YEAR(s.OrderDate) = 2013
ORDER BY
		1,2,3
		
---------------------------------- Sub Queries ------------------------------------------------
use AdventureWorksDW2014;

-- Sub Queries

-- Use a sub-query to aggregate an underlying Table
select *
from (
	select sum(SalesAmount) as 'Sales', YEAR(OrderDate) as 'Yr'
	from FactInternetSales
	group by YEAR(OrderDate)
) YrSales

-- Create new aggregates on to of derived
select avg(Sales) as 'AvgSales'
from (
	select sum(SalesAmount) as 'Sales', YEAR(OrderDate) as 'Yr'
	from FactInternetSales
	group by YEAR(OrderDate)
) YrSales

-- Use a subquery to test if values are IN another table
SELECT EnglishProductName 'Product'
FROM DimProduct p
WHERE p.ProductSubcategoryKey IN
    (SELECT sc.ProductSubcategoryKey
     FROM DimProductSubcategory sc
     WHERE sc.EnglishProductSubcategoryName = 'Wheels')

-- Re-write this as a Join instead
SELECT	p.EnglishProductName
FROM	DimProduct p
JOIN	DimProductSubcategory sc ON p.ProductSubcategoryKey = sc.ProductSubcategoryKey
WHERE	sc.EnglishProductSubcategoryName = 'Wheels'

-- Use EXISTS to test if the outer queries value is present in the sub-query
-- Somtimes this is the only way to express this join type
SELECT EnglishProductName 'Product'
FROM DimProduct p
WHERE EXISTS
    (SELECT * -- no data is returned, only a boolean true/false 
     FROM DimProductSubcategory sc
     WHERE	p.ProductSubcategoryKey = sc.ProductSubcategoryKey
	 AND	sc.EnglishProductSubcategoryName = 'Wheels')

-------------------------------- Rolling Back ---------------------------------------
use AdventureWorksDW2014;

-- Show a 6 week rolling average of Weekly Sales for 2013

-- first create weekly sales totals
SELECT	SUM(s.SalesAmount) 'WeeklySales' 
	,	DATEPART(ww, s.OrderDate) as 'WeekNum'
FROM	FactInternetSales s
WHERE	YEAR(s.OrderDate) = 2013
GROUP BY
		DATEPART(ww, s.OrderDate)
ORDER BY
		DATEPART(ww, s.OrderDate) ASC

-- use that subquery as our source and calculate the moving average
SELECT
		AVG(WeeklySales) OVER (ORDER BY WeekNum ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as AvgSales
	,	WeeklySales as 'TotalSales'
	,	WeekNum
FROM (
	SELECT	SUM(s.SalesAmount) 'WeeklySales' 
		,	DATEPART(ww, s.OrderDate) as 'WeekNum'
	FROM	FactInternetSales s
	WHERE	YEAR(s.OrderDate) = 2013
	GROUP BY
			DATEPART(ww, s.OrderDate)
	) AS s
GROUP BY
		WeekNum, WeeklySales
ORDER BY
		WeekNum ASC


-- Running Total
SELECT
		SUM(MonthlySales) OVER (PARTITION BY SalesYear ORDER BY SalesMonth ROWS UNBOUNDED PRECEDING) as YTDSales
	,	MonthlySales as 'MonthlySales'
	,	SalesYear
	,	SalesMonth
FROM (
	SELECT	SUM(s.SalesAmount) 'MonthlySales' 
		,	MONTH(s.OrderDate) as 'SalesMonth'
		,	year(s.OrderDate) as 'SalesYear'
	FROM	FactInternetSales s
	GROUP BY
			MONTH(s.OrderDate)
		,	year(s.OrderDate)
	) AS s
GROUP BY
		SalesMonth, SalesYear, MonthlySales
ORDER BY
		SalesYear, SalesMonth ASC
		
----------------------------------------- Employee Data ---------------------------------------
use AdventureWorksDW2014;

-- Employee Table
select *
from DimEmployee

-- Analyzing Employee Data
-- How many active employees did we have on Nov 13th, 2013?
SELECT COUNT(1)
FROM DimEmployee emp
WHERE StartDate <= '2013-01-01'
AND	(
		EndDate > '2013-01-01'
	OR
		EndDate IS NULL
	)

-- start with dates table
select top 100 *
from DimDate

-- Show me a trend of active employees by Month
-- Start by getting the Daily count
SELECT
		dt.FullDateAlternateKey as 'Date'
	,	count(1) as ActiveCount	
FROM DimDate dt
LEFT JOIN	(SELECT 'Active' as 'EmpStatus', * FROM DimEmployee) emp
	-- regular active employees
	ON (dt.FullDateAlternateKey between emp.StartDate and ISNULL(emp.EndDate,'9999-12-31'))
GROUP BY
		dt.FullDateAlternateKey
ORDER BY
		1

-- Show EOM Function
select DISTINCT top 20 EOMONTH(FullDateAlternateKey)
from DimDate d
order by 1


-- These counts are cumulative, so for monthly totals take the last day of the month
SELECT
		dt.FullDateAlternateKey as 'Date'
	,	count(1) as ActiveCount	
FROM DimDate dt
LEFT JOIN	(SELECT 'Active' as 'EmpStatus', * FROM DimEmployee) emp
	-- regular active employees
	ON (dt.FullDateAlternateKey between emp.StartDate and ISNULL(emp.EndDate,'9999-12-31'))
WHERE
	dt.FullDateAlternateKey = EOMONTH(dt.FullDateAlternateKey)
GROUP BY
		dt.FullDateAlternateKey
ORDER BY
		1
--------------------------------------------- Date and Time Functions ---------------------------------------
-- Date & Time Functions

-- Get total sales for the month and show the last day of the month
SELECT 
		EOMONTH(OrderDate) as 'Month'
	,	SUM(SalesAmount) as 'Sales'
FROM FactInternetSales
GROUP BY
		EOMONTH(OrderDate)
ORDER BY 1

-- Calculate the customer acquisition funnel
SELECT
		c.FirstName
	,	c.LastName
	,	c.DateFirstPurchase
	,	DATEDIFF(d,c.DateFirstPurchase,getdate()) as 'DaysSinceFirstPurchase' -- How long have they been a customer?
FROM DimCustomer c
ORDER BY 3 DESC


-- Calculate a Monthly average of customer tenure
SELECT
		EOMONTH(c.DateFirstPurchase) as 'MonthOfFirstPurchase' -- What month did they become a customer?
	,	DATEDIFF(d,EOMONTH(c.DateFirstPurchase),getdate()) as 'DaysSinceFirstPurchase' -- How long have they been a customer?
	,	COUNT(1) as 'CustomerCount' -- How manY customers are there for this month?
FROM DimCustomer c
GROUP BY EOMONTH(c.DateFirstPurchase)
ORDER BY 2 DESC


-- The data might not always be updated, so lets find the latest monthly sales amount

-- Get the most recent month
SELECT
		d.CalendarYear
	,	d.MonthNumberOfYear
	,	mdt.IsMaxDate
	,	sum(s.SalesAmount) as 'TotalSales'

FROM DimDate d
JOIN FactInternetSales s ON d.DateKey = s.OrderDateKey
LEFT JOIN (
		SELECT
			1 as 'IsMaxDate',
			MAX(OrderDate) as 'MaxDate'
		FROM
			FactInternetSales
	) mdt
	ON
		d.CalendarYear = YEAR(mdt.MaxDate)
	AND
		d.MonthNumberOfYear = MONTH(mdt.MaxDate)

GROUP BY
		d.CalendarYear,
		d.MonthNumberOfYear,
		mdt.IsMaxDate

ORDER BY
		1 DESC,2 DESC
		
		
-------------------------------------- Common Table Expressions (CTEs) --------------------------------------------
USE AdventureWorksDW2014
GO


-- use a CTE to get an aggregate of an aggregate
-- Show number of profitable weeks
WITH Sales_CTE (Yr, WeekNum, WeeklySales)  
AS  
(  
    SELECT YEAR(OrderDate) as Yr, DATEPART(wk,OrderDate) as WeekNum, sum(SalesAmount) as WeeklySales
    FROM FactInternetSales  
    GROUP BY YEAR(OrderDate), DATEPART(wk,OrderDate) 
)  
SELECT *, CASE WHEN WeeklySales > 140000 THEN 1 ELSE 0 END as 'Profitable'
FROM Sales_CTE
ORDER BY 1,2 
GO  

-- Summarize by Year
WITH Sales_CTE (Yr, WeekNum, WeeklySales)  
AS  
(  
    SELECT YEAR(OrderDate) as Yr, DATEPART(wk,OrderDate) as WeekNum, sum(SalesAmount) as WeeklySales
    FROM FactInternetSales  
    GROUP BY YEAR(OrderDate), DATEPART(wk,OrderDate) 
)  
SELECT Yr, SUM(CASE WHEN WeeklySales > 140000 THEN 1 ELSE 0 END) as 'Profitable'
FROM Sales_CTE
GROUP BY Yr
ORDER BY 1 
GO



-------------------------------------------------------------------------
-- Use CTE to navigate employee hierarchy
WITH DirectReports (ManagerID, EmployeeID, Title, DeptID, Level)
AS
(
-- Anchor member definition
    SELECT e.ParentEmployeeKey, e.EmployeeKey, e.Title, e.DepartmentName, 
        0 AS Level
    FROM DimEmployee AS e
    WHERE e.ParentEmployeeKey IS NULL
    UNION ALL
-- Recursive member definition
    SELECT e.ParentEmployeeKey, e.EmployeeKey, e.Title, e.DepartmentName,
        Level + 1
    FROM DimEmployee AS e
    INNER JOIN DirectReports AS d
        ON e.ParentEmployeeKey = d.EmployeeID
)
-- Statement that executes the CTE
SELECT ManagerID, EmployeeID, Title, DeptID, Level
FROM DirectReports
WHERE DeptID = 'Information Services' OR Level = 0

----------------------------------------------- Ranking ------------------------------------------
use AdventureWorksDW2014;

-- Find the top products of 2013
-- using ROW_NUMBER() as a Rank function
-- fragile solution
SELECT 
		ROW_NUMBER() OVER (ORDER BY sum(s.SalesAmount) DESC)  AS 'Rank'
	,	count(DISTINCT s.SalesOrderNumber) 'OrderCount' -- use 1 instead of a field for faster performance
	,	sum(s.SalesAmount) 'Sales' 
	,	cat.EnglishProductCategoryName 'Category'
    ,	sub.EnglishProductSubcategoryName 'SubCategory'	
FROM FactInternetSales s
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
INNER JOIN DimProductSubcategory sub ON p.ProductSubcategoryKey = sub.ProductSubcategoryKey
INNER JOIN DimProductCategory cat ON sub.ProductCategoryKey = cat.ProductCategoryKey
-- filter
WHERE YEAR(s.OrderDate) = 2013 --use date function to parse year
-- must use group by in order for aggregation to work properly
GROUP BY
		cat.EnglishProductCategoryName -- column aliases aren't allowed
    ,	sub.EnglishProductSubcategoryName	

ORDER BY 3 DESC;


-- use RANK() function instead
-- when RANK() and ROW_NUBER() have the same order by the restults are the same
SELECT 
		ROW_NUMBER() OVER (ORDER BY sum(s.SalesAmount) DESC)  AS 'Rank'
	,	count(DISTINCT s.SalesOrderNumber) 'OrderCount' -- use 1 instead of a field for faster performance
	,	RANK() OVER (ORDER BY sum(s.SalesAmount) DESC) 'SalesRank' 
	,	sum(s.SalesAmount) 'TotalSales'
	,	cat.EnglishProductCategoryName 'Category'
    ,	sub.EnglishProductSubcategoryName 'SubCategory'	
FROM FactInternetSales s
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
INNER JOIN DimProductSubcategory sub ON p.ProductSubcategoryKey = sub.ProductSubcategoryKey
INNER JOIN DimProductCategory cat ON sub.ProductCategoryKey = cat.ProductCategoryKey
-- filter
WHERE YEAR(s.OrderDate) = 2013 --use date function to parse year
-- must use group by in order for aggregation to work properly
GROUP BY
		cat.EnglishProductCategoryName -- column aliases aren't allowed
    ,	sub.EnglishProductSubcategoryName	

ORDER BY cat.EnglishProductCategoryName, sub.EnglishProductSubcategoryName;


-- Show the top product Sub Categories for each year
SELECT 		
		count(DISTINCT s.SalesOrderNumber) 'OrderCount' -- use 1 instead of a field for faster performance
	,	RANK() OVER (PARTITION BY YEAR(s.OrderDate) ORDER BY sum(s.SalesAmount) DESC) 'SalesRank' 
	,	sum(s.SalesAmount) 'TotalSales'
	,	cat.EnglishProductCategoryName 'Category'
    ,	sub.EnglishProductSubcategoryName 'SubCategory'	
	,	YEAR(s.OrderDate) 'Year'
FROM FactInternetSales s
INNER JOIN DimProduct p ON s.ProductKey = p.ProductKey
INNER JOIN DimProductSubcategory sub ON p.ProductSubcategoryKey = sub.ProductSubcategoryKey
INNER JOIN DimProductCategory cat ON sub.ProductCategoryKey = cat.ProductCategoryKey
-- must use group by in order for aggregation to work properly
GROUP BY
		cat.EnglishProductCategoryName -- column aliases aren't allowed
    ,	sub.EnglishProductSubcategoryName	
	,	YEAR(s.OrderDate)

ORDER BY YEAR(s.OrderDate), SUM(s.SalesAmount) DESC;


------------------------ Learning MySQL and MariaDB Book by Rusell J.T Dyer ----------------------------
CREATE TABLE test.books (book_id INT, title TEXT, status INT);
SHOW TABLES FROM test;
DESCRIBE books;

INSERT INTO books VALUES(100, 'Heart of Darkness', 0);
INSERT INTO books VALUES(101, 'The Catcher of the Rye', 1);
INSERT INTO books VALUES(102, 'My Antonia', 0);

SELECT * FROM books WHERE status = 1;
SELECT * FROM books WHERE status = 0 \G
UPDATE books SET status = 1 WHERE book_id = 102;
SELECT * FROM books WHERE status = 1;
UPDATE books SET status = 0 WHERE book_id = 101;
SELECT * FROM books WHERE status = 0;

UPDATE books
SET title = 'The Catcher in the Rye', status = 1
WHERE book_id = 101;

CREATE TABLE status_names (status_id INT, status_name CHAR(8));
INSERT INTO status_names VALUES(0, 'Inactive'), (1,'Active');

SELECT * FROM status_names;
SELECT book_id, title, status_name
FROM books JOIN status_names
WHERE status = status_id;

CREATE DATABASE rookery
CHARACTER SET latin1
COLLATE latin1_bin;

CREATE TABLE birds (
bird_id INT AUTO_INCREMENT PRIMARY KEY,
scientific_name VARCHAR(255) UNIQUE,
common_name VARCHAR(50),
family_id INT,
description TEXT)

INSERT INTO birds (scientific_name, common_name)
VALUES ('Charadrius vociferus', 'Killdeer'),
('Gavia immer', 'Great Northern Loon'),
('Aix sponsa', 'Wood Duck'),
('Chordeiles minor', 'Common Nighthawk'),
('Sitta carolinensis', ' White-breasted Nuthatch'),
('Apteryx mantelli', 'North Island Brown Kiwi');

CREATE DATABASE birdwatchers;
CREATE TABLE birdwatchers.humans
(human_id INT AUTO_INCREMENT PRIMARY KEY,
formal_title VARCHAR(25),
name_first VARCHAR(25),
name_last VARCHAR(25),
email_address VARCHAR(255));

INSERT INTO birdwatchers.humans
(formal_title, name_first, name_last, email_address)
VALUES
('Mr.', 'Russell', 'Dyer', 'russell@mysqlresources.com'),
('Mr.', 'Richard', 'Stringer', 'richard@mysqlresources.com'),
('Ms.', 'Rusty', 'Osborne', 'rusty@mysqlresources.com'),
('Ms.', 'Lexi', 'Hollar', 'alexandra@mysqlresources.com');

SHOW CREATE TABLE birds \G

CREATE TABLE bird_families (
family_id INT AUTO_INCREMENT PRIMARY KEY,
scientific_name VARCHAR(255) UNIQUE,
brief_description VARCHAR(255) );

CREATE TABLE bird_orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
scientific_name VARCHAR(255) UNIQUE,
brief_description VARCHAR(255),
order_image BLOB
) DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

ALTER TABLE bird_families
ADD COLUMN order_id INT;

CREATE TABLE test.birds_new LIKE birds;

INSERT INTO birds_new
SELECT * FROM rookery.birds;

CREATE TABLE birds_new_alternative
SELECT * FROM rookery.birds;

DROP TABLE birds_new_alternative;

ALTER TABLE birds_new
ADD COLUMN wing_id CHAR(2);

ALTER TABLE birds_new
DROP COLUMN wing_id;

ALTER TABLE birds_new
ADD COLUMN wing_id CHAR(2) AFTER family_id;

ALTER TABLE birds_new
ADD COLUMN body_id CHAR(2) AFTER wing_id,
ADD COLUMN bill_id CHAR(2) AFTER body_id,
ADD COLUMN endangered BIT DEFAULT b'1' AFTER bill_id,
CHANGE COLUMN common_name common_name VARCHAR(255);

UPDATE birds_new SET endangered = 0
WHERE bird_id IN(1,2,4,5);

SELECT bird_id, scientific_name, common_name
FROM birds_new
WHERE endangered \G

SELECT * FROM birds_new
WHERE NOT endangered \G

ALTER TABLE birds_new
MODIFY COLUMN endangered
ENUM('Extinct', 
'Extinct in Wild',
'Threatened - Critically Endangered',
'Threatened - Endangered',
'Threatened - Vulnerable',
'Lower Risk - Conservation Dependent',
'Lower Risk - Near Threatened',
'Lower Risk - Least Concern')
AFTER family_id;

SHOW COLUMNS FROM birds_new LIKE 'endangered' \G

UPDATE birds_new
SET endangered = 7;

USE birdwatchers;

CREATE TABLE surveys
(survey_id INT AUTO_INCREMENT KEY,
survey_name VARCHAR(255));

CREATE TABLE survey_questions
(question_id INT AUTO_INCREMENT KEY,
survey_id INT,
question VARCHAR(255),
choices BLOB);

CREATE TABLE survey_answers
(answer_id INT AUTO_INCREMENT KEY,
human_id INT,
question_id INT,
date_answered DATETIME,
answer VARCHAR(255));


INSERT INTO surveys (survey_name)
VALUES("Favorite Birding Location");

INSERT INTO survey_questions
(survey_id, question, choices)
VALUES(LAST_INSERT_ID(),
"What's your favorite setting for bird-watching?",
COLUMN_CREATE('1', 'forest', '2', 'shore', '3', 'backyard') );

INSERT INTO surveys (survey_name)
VALUES("Preferred Birds");

INSERT INTO survey_questions
(survey_id, question, choices)
VALUES(LAST_INSERT_ID(),
"Which type of birds do you like best?",
COLUMN_CREATE('1', 'perching', '2', 'shore', '3', 'fowl', '4', 'rapture') );

SELECT COLUMN_GET(choices, 3 AS CHAR)
AS 'Location'
FROM survey_questions
WHERE survey_id = 1;

INSERT INTO survey_answers
(human_id, question_id, date_answered, answer)
VALUES
(29, 1, NOW(), 2),
(29, 2, NOW(), 2),
(35, 1, NOW(), 1),
(35, 2, NOW(), 1),
(26, 1, NOW(), 2),
(26, 2, NOW(), 1),
(27, 1, NOW(), 2),
(27, 2, NOW(), 4),
(16, 1, NOW(), 3),
(3, 1, NOW(), 1),
(3, 2, NOW(), 1);

SELECT IFNULL(COLUMN_GET(choices, answer AS CHAR), 'total')
AS 'Birding Site', COUNT(*) AS 'Votes'
FROM survey_answers
JOIN survey_questions USING(question_id)
WHERE survey_id = 1
AND question_id = 1
GROUP BY answer WITH ROLLUP;

CREATE TABLE rookery.conservation_status
(status_id INT AUTO_INCREMENT PRIMARY KEY,
conservation_category CHAR(10),
conservation_state CHAR(25) );

INSERT INTO rookery.conservation_status
(conservation_category, conservation_state)
VALUES('Extinct','Extinct'),
('Extinct','Extinct in Wild'),
('Threatened','Critically Endangered'),
('Threatened','Endangered'),
('Threatened','Vulnerable'),
('Lower Risk','Conservation Dependent'),
('Lower Risk','Near Threatened'),
('Lower Risk','Least Concern');

SELECT * FROM rookery.conservation_status;

ALTER TABLE birds_new
CHANGE COLUMN endangered conservation_status_id INT DEFAULT 8;

ALTER TABLE birds_new
ALTER conservation_status_id SET DEFAULT 7;

SHOW COLUMNS FROM birds_new LIKE 'conservation_status_id' \G

ALTER TABLE birds_new
ALTER conservation_status_id DROP DEFAULT;

SELECT auto_increment
FROM information_schema.tables
WHERE table_name = 'birds';

ALTER TABLE birds
AUTO_INCREMENT = 10;

CREATE TABLE birds_new LIKE birds;

SHOW CREATE TABLE birds \G

...
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_bin

ALTER TABLE birds_new
AUTO_INCREMENT = 6;

CREATE TABLE birds_details
SELECT bird_id, description
FROM birds;

ALTER TABLE birds
DROP COLUMN description;

RENAME TABLE rookery.birds TO rookery.birds_old,
test.birds_new TO rookery.birds;

SHOW TABLES IN rookery LIKE 'birds%';

ALTER TABLE country_codes
ORDER BY country_code;

SELECT * FROM country_codes
ORDER BY country_name
LIMIT 5;

SHOW INDEX FROM birdwatchers.humans \G

EXPLAIN SELECT * FROM birdwatchers.humans
WHERE name_last = 'Hollar' \G

ALTER TABLE birdwatchers.humans
ADD INDEX human_names (name_last, name_first);

SHOW CREATE TABLE birdwatchers.humans \G

SHOW INDEX FROM birdwatchers.humans
WHERE Key_name = 'human_names' \G

ALTER TABLE conservation_status
DROP PRIMARY KEY,
CHANGE status_id conservation_status_id INT PRIMARY KEY AUTO_INCREMENT;

SOURCE sakila-schema.sql;
SOURCE sakila-data.sql;

------------- SQL Coookbook: Query Solutions and Techniques for All SQL Users -> Second Edition ---------------
select ename, job from emp order by rand() limit 5;

1 select ename,job
2 from emp
3 order by random() limit 5

select ename,job
from emp
order by substr(job,length(job)-1)

insert into dept (deptno,dname,loc)
values (50,'PROGRAMMING','BALTIMORE')

/* multi row insert */
insert into dept (deptno,dname,loc)
values (1,'A','B'),
(2,'B','C')

create table D (id integer default 0)
insert into D values (default)
insert into D (id) values (default)

-- Copying a Table Definition
1 create table dept_2
2 as
3 select *
4 from dept
5 where 1 = 0