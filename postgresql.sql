\dt -- show tables in  a connected database
\dn -- list all Schemas
\d  -- describes table structure
\du -- list all users
\l
\c
\?
\h
\dn -- list all schemas
\df -- list all stored procedures (functions)
\dv -- list all views
\dt+ -- get more information on tables in the current database
\d+ table_name -- get detailed information on a table
\df+ function_name  -- Show a stored procedure or function code: -- {show function SQL code}
\x   -- show query output in the pretty-format
\dt *.*  -- list all tables from all schemas
\dtv p*	List tables and views that start with p.
\i somefile	Execute SQL script stored in a file.
\o somefile	Output contents to file.
\copy (SELECT * FROM sometable) TO 'C:/sometable.csv' WITH HEADER CSV FORCE QUOTE
\copy ... from program	Allows you to copy output from an external program such as ls, dir, wget, curl. New in 9.3.

https://dzone.com/refcardz/essential-postgresql

create table mydb3schema.table1 (id int, password CHAR(10));
select * from pg_catalog.pg_tables where schemaname != 'infomation_schema' and schemaname != 'public';
truncate mydb3shcema.table1;

SELECT pg_reload_conf();

SELECT TIMESTAMP '2009-07-01 23:14:20' + INTERVAL '4 months 2 days 10 hours 9 seconds'

SELECT '(2012-07-01, 2013-08-31]'::daterange;

numeric(s, p) -- Decimal p -- {s - scale, p - precision}


SELECT '[1,10)'::int4range;  -- An integer >= 1 and < 10

CREATE TRIGGER sometrigger BEFORE UPDATE ON sometable FOR EACH ROW
EXECUTE PROCEDURE sometriggerupdate();

--------------- these copy from the server's file system
COPY products FROM "/tmp/productslist.csv"   WITH CSV HEADER NULL AS 'NULL';

--this outputs to the server's file system
COPY (SELECT * FROM products WHERE product_rating =   'A') TO '/tmp/productsalist.csv' WITH CSV HEADER NULL AS 'NULL';

COPY products FROM "/tmp/productslist.txt"   WITH DELIMITER '\t' NULL AS 'NULL';

-------------- Create a compressed backup -----------------------------
pg_dump -h someserver -p 5432 -U someuser -F -c -b -v -f "/somepath/somedb.backup" somedb

--------------------- Arrays ----------------------------------
SELECT ARRAY['john','jane'];
SELECT ARRAY(SELECT emp_name FROM employees);
SELECT array_agg(e.emp_name) FROM employees;

CREATE TYPE cloth_colors AS ENUM ('red','blue','green');

psql -W -U username -H hostname < file.sql
pg_dump -W -U username -h hostname database_name > file.sql

SELECT pg_size_pretty(pg_total_relation_size('__table_name__'));: Show DB table space in use
SELECT pg_size_pretty(pg_database_size('__database_name__'));: Show DB space in use

Get all queries from all dbs waiting for data (might be hung):
SELECT * FROM pg_stat_activity WHERE waiting='t'

------------------------- Output data in html format ------------------$
psql -h someserver -p 5432 -U postgres -d dzone -H -c "SELECT * FROM pg_tips" -o tips.html

psql -U postgres –p 5432 -d dzone -c "CREATE TABLE test(some_id serial PRIMARY KEY, some_text text);"

 ------------ Execute an SQL batch script against a database and send output to file:
$ psql -h localhost -U someuser -d dzone -f /path/to/scriptfile.sql -o /path/to/outputfile.txt

\dt *.*.
SELECT * FROM pg_catalog.pg_tables

SHOW SERVER_VERSION;
SELECT version();
SHOW ALL
SELECT current_user;
SELECT rolname FROM pg_roles;
SELECT current_database();

SELECT rolname FROM pg_roles;

CREATE USER <user_name> WITH PASSWORD '<password>';

DROP USER IF EXISTS <user_name>;

ALTER ROLE <user_name> WITH PASSWORD '<password>';

CREATE DATABASE [IF NOT EXISTS] db_name;

DROP DATABASE [IF EXISTS] db_name;

ALTER USER postgres WITH PASSWORD 'tmppassword';

INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');

INSERT INTO cities VALUES ('San Francisco', '(-194.0, 53.0)');

INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');

INSERT INTO weather (date, city, temp_hi, temp_lo)
VALUES ('1994-11-29', 'Hayward', 54, 37);

SELECT * FROM weather WHERE city = 'San Francisco' AND prcp > 0.0;

SELECT * FROM weather ORDER BY city;
SELECT * FROM weather ORDER BY city, temp_lo;

SELECT DISTINCT city FROM weather;
SELECT DISTINCT city FROM weather ORDER BY city;

SELECT * FROM weather, cities WHERE city = name;   -- Joins

SELECT city, temp_lo, temp_hi, prcp, date, location FROM weather, cities WHERE city = name;

SELECT weather.city, weather.temp_lo, weather.temp_hi,
		weather.prcp, weather.date, cities.location
	FROM weather, cities
	WHERE cities.name = weather.city;

SELECT * FROM weather INNER JOIN cities ON (weather.city = cities.name);

SELECT * FROM weather LEFT OUTER JOIN cities ON (weather.city = cities.name);

SELECT W1.city, W1.temp_lo AS low, W1.temp_hi AS high,
W2.city, W2.temp_lo AS low, W2.temp_hi AS high
FROM weather W1, weather W2
WHERE W1.temp_lo < W2.temp_lo
AND W1.temp_hi > W2.temp_hi;

SELECT * FROM weather w, cities c WHERE w.city = c.name;

CREATE DATABASE <database_name> WITH OWNER <username>;

GRANT ALL PRIVILEGES ON DATABASE <db_name> TO <user_name>;

GRANT CONNECT ON DATABASE <db_name> TO <user_name>;

GRANT USAGE ON SCHEMA public TO <user_name>;

GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public TO <user_name>;

GRANT SELECT, UPDATE, INSERT ON <table_name> TO <user_name>;

GRANT SELECT ON ALL TABLES IN SCHEMA public TO <user_name>;

CREATE SCHEMA IF NOT EXISTS <schema_name>;

DROP SCHEMA IF EXISTS <schema_name> CASCADE;

DROP TABLE IF EXISTS <table_name> CASCADE;

-------------------#################	PostgreSQL Cheat Sheet	#########################----------------------
http://www.petefreitag.com/cheatsheets/postgresql/

CREATE DATABASE testDB;

# ---------- CREATE TABLE (with auto numbering integer id)
CREATE TABLE "testTable" (
	id SERIAL PRIMARY KEY,
	name varchar(50) UNIQUE NOT NULL,
	"dateCreated" timestamp DEFAULT current_timestamp
);

# ------------- Add a primary key --------------------
ALTER TABLE tableName ADD PRIMARY KEY (id);

-------------- CREATE an INDEX ---------------
CREATE UNIQUE INDEX indexName ON TableName (columnName);

------------------ Backup a database (command line) -----------
pg_dump dbName > dbName.sql

------------------- Run a script ------------------
psql -f script.sql databaseName

------------------ search using a regular expression ---------------------
SELECT column FROM table WHERE column ~ 'foo.*';

-------------- The First N Records --------------
SELECT columns FROM table LIMIT 10;

----------------- Pagination ------------------
SELECT cols FROM table LIMIT 10 OFFSET 30;

------------------------ Prepared Statements -----------------------------
PREPARE preparedInsert (int, varchar) AS
	INSERT INTO tableName (intColumn, charColumn) VALUES ($1, $2);
EXECUTE preparedInsert (1, 'a');
EXECUTE preparedInsert (2, 'b');
DEALLOCATE preparedInsert (2, 'b');

---------------- Create a Function ---------------
CREATE OR REPLACE FUNCTION month (timestamp) RETURNS integer
	AS 'SELECT date_part("month", $1)::integer;'
LANGUAGE 'sql';

------------------ TABLE Maintenance --------------------
VACUUM ANALYZE table;

---------------- Reindex a database, table or index ----------------
REINDEX DATABASE dbName;

---------------- Show query plan -----------------------------
EXPLAIN SELECT * FROM table;

----------- Import from a file -------------
COPY destTable FROM '/tmp/someFile';

------------------- Show all runtime parameters -----------------
SHOW ALL;

------------------ Grant ALL permissions to user
GRANT ALL PRIVILIGES ON table TO userName;

--------------------- Perform a transaction -------------------
BEGIN TRANSACTION
	UPDATE accounts SET balance += 50 WHERE id = 1;
COMMIT;
)
---------------------------------  BAsic SQL ---------------------------
SELECT * FROM table;

INSERT INTO table (column1, comun2) VALUES (1, 'one');

UPDATE table SET foo = 'bar' WHERE id = 1;

DELETE FROM table WHERE id = 1;

postgres=# GRANT ALL PRIVILEGES ON DATABASE demodb1 TO demorole1;

http://www.postgresqltutorial.com/postgresql-cheat-sheet/
--------------- Create a new table or a temporary table --------------
CREATE [TEMP] TABLE [IF NOT EXISTS] table_name(
   pk SERIAL PRIMARY KEY,
   c1 type(size) NOT NULL,
   c2 type(size) NULL,
   ...
);

-------------- Add a new column into a table:-------------------
ALTER TABLE table_name ADD COLUMN new_column_name TYPE;

ALTER TABLE table_name DROP COLUMN column_name;

ALTER TABLE table_name RENAME column_name TO new_column_name;

ALTER TABLE table_name ALTER COLUMN [SET DEFAULT value | DROP DEFAULT]

ALTER TABLE table_name ADD PRIMARY KEY (column,...);

ALTER TABLE table_name
DROP CONSTRAINT primary_key_constraint_name;

ALTER TABLE table_name RENAME TO new_table_name;

DROP TABLE [IF EXISTS] table_name CASCADE;

CREATE OR REPLACE view_name AS
query;

CREATE RECURSIVE VIEW view_name(columns) AS
SELECT columns;

SELECT DISTINCT (column)
FROM table

SELECT * FROM table_name
WHERE column LIKE '%value%'

SELECT * FROM table_name
WHERE column BETWEEN low AND high;

SELECT * FROM table_name
WHERE column IN (value1, value2,...);

SELECT * FROM table_name
LIMIT limit OFFSET offset
ORDER BY column_name;

SELECT *
FROM table1
INNER JOIN table2 ON conditions

SELECT *
FROM table1
LEFT JOIN table2 ON conditions

SELECT *
FROM table1
FULL OUTER JOIN table2 ON conditions

SELECT *
FROM table1
CROSS JOIN table2;

SELECT *
FROM table1
NATURAL JOIN table2;

SELECT COUNT (*)
FROM table_name;

SELECT column, column2, ...
FROM table
ORDER BY column ASC [DESC], column2 ASC [DESC],...;

SELECT *
FROM table
GROUP BY column_1, column_2, ...;

SELECT *
FROM table
GROUP BY column_1
HAVING condition;

SELECT * FROM table1
UNION
SELECT * FROM table2;

SELECT * FROM table1
EXCEPT
SELECT * FROM table2;

SELECT * FROM table1
INTERSECT
SELECT * FROM table2;

----------------------- Insert a new row into a table: ------------------------
INSERT INTO table(column1,column2,...)
VALUES(value_1,value_2,...);

---------------------------- Insert multiple rows into a table: -----------------------
INSERT INTO table_name(column1,column2,...)
VALUES(value_1,value_2,...),
      (value_1,value_2,...),
      (value_1,value_2,...)...

UPDATE table_name
SET column_1 = value_1,
    ...;

UPDATE table
SET column_1 = value_1,
    ...
WHERE condition;

DELETE FROM table_name;

DELETE FROM table_name
WHERE condition;

----------------------- Performance ------------------
Show the query plan for a query:
EXPLAIN query;

Show and execute the query plan for a query:
EXPLAIN ANALYZE query;

Collect statistics:
ANALYZE table_name;

ALTER TABLE <table_name> IF EXISTS
ADD <column_name> <data_type> [<constraints>];

ALTER TABLE <table_name> IF EXISTS
ALTER <column_name> TYPE <data_type> [<constraints>];

ALTER TABLE <table_name> IF EXISTS
DROP <column_name>;

ALTER TABLE <table_name>
ADD COLUMN <column_name> SERIAL PRIMARY KEY;

INSERT INTO <table_name>
VALUES (DEFAULT, <value1>);

INSERT INTO <table_name> (<column1_name>,<column2_name>)
VALUES ( <value1>,<value2> );


pg_restore -d <database_name> -a <file_pathway>
pg_restore --dbname=<database_name> --data-only <file_pathway>

pg_restore -d <database_name> -s <file_pathway>
pg_restore --dbname=<database_name> --schema-only <file_pathway>

------------------- export table into CSV file -----------------------------
http://www.postgresql.org/docs/current/static/sql-copy.html

\copy <table_name> TO '<file_path>' CSV
\copy <table_name>(<column_1>,<column_1>,<column_1>) TO '<file_path>' CSV
\copy (SELECT * FROM person LEFT JOIN car ON car.id = person.car_id) TO 'D:/STUDY/PostgreSQL/results.csv' DELIMITER ',' CSV HEADER;


----------------------- import CSV file into table -----------------
http://www.postgresql.org/docs/current/static/sql-copy.html

\copy <table_name> FROM '<file_path>' CSV
\copy <table_name>(<column_1>,<column_1>,<column_1>) FROM '<file_path>' CSV

-- this example selects the store and product
-- where the given store has the lowest price
-- for the product. This uses PostgreSQL
-- DISTINCT ON and an order by to resort
-- results by product_name.
SELECT r.product_id, r.product_name,   r.product_price
FROM (SELECT DISTINCT   ON(p.product_id) p.product_id, p.product_name, s.store_name, i.product_price
FROM products AS p INNER JOIN inventory AS i
ON p.product_id = i.product_id
INNER JOIN store AS s ON i.store_id = s.store_id
ORDER BY p.product_id,   i.product_price) AS r;

plpythonu, plpython2u, plpython3u (untrusted) lang
CREATE FUNCTION fnfileexists(IN fname text) RETURNS   boolean AS
$
import os
return os.path.exists(fname)
$
LANGUAGE 'plpythonu' STRICT;

CREATE EXTENSION extension_name; -- {pgcrypto}


