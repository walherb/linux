MySQL + nginx + nodejs  -- for server side javascript using Node js
https://samnang.club/ebooktool/
https://www.mockaroo.com/   -- {Mockaroo - Random Data Generator and API Mocking Tool}

\i basics.sql

https://drive.google.com/file/d/1OlbpXYL1VPJ_hgEEZOQciTSvrvuJXuAQ/view?usp=sharing

--! ---------------------- Learn these quick tricks in PostgreSQL (*****) ----------------------------------
--! ---------------------- https://www.freecodecamp.org/news/postgresql-tricks/ --------------------
-- Peter Gleeson: { https://www.freecodecamp.org/news/author/peter/ }
-- Copy data from a file
-- https://gist.github.com/pg0408/43664635ee89558ba4961a84b833342b
CREATE TABLE revenue (
  store VARCHAR,
  year INT,
  revenue INT,
  PRIMARY KEY (product, year)
);

COPY revenue FROM '~/Projects/datasets/revenue.csv' WITH HEADER CSV;

-- Summarise data using the crosstab function
CREATE EXTENSION tablefunc;
SELECT * FROM CROSSTAB(
  'SELECT
  		*
	FROM revenue
	ORDER BY 1,2'
  )
AS summary(
	store VARCHAR,
    "2016" INT,
    "2017" INT,
    "2018" INT
    );

-- Work with arrays and JSON
CREATE TABLE articles (
  title VARCHAR PRIMARY KEY,
  tags TEXT[]
);

INSERT INTO articles (title, tags)
  VALUES
  ('Lorem ipsum', '{"random"}'),
  ('Placeholder here', '{"motivation","random"}'),
  ('Postgresql tricks', '{"data","self-reference"}');
-- https://www.postgresql.org/docs/12/functions-array.html
-- "contains" operator @>
SELECT
  *
FROM articles
WHERE tags @> '{"random"}';
-- You can also concatenate (join together) arrays using the || operator, or check for overlapping elements with the && operator.
SELECT
	tags[1]
FROM articles

CREATE TABLE sessions (
	session_id SERIAL PRIMARY KEY,
    session_info JSON
);

INSERT INTO sessions (session_info)
VALUES
('{"app_version": 1.0, "device_type": "Android"}'),
('{"app_version": 1.2, "device_type": "iOS"}'),
('{"app_version": 1.4, "device_type": "iOS", "mode":"default"}');
-- https://www.postgresql.org/docs/12/datatype-json.html
-- You can use the -> and ->> operators to "unpackage" the JSON objects to use in queries

-- For example, this query finds the values of the device_type key:
SELECT
  session_info -> 'device_type' AS devices
FROM sessions;

-- And this query counts how many sessions were on app version 1.0 or earlier:
SELECT
  COUNT(*)
FROM sessions
WHERE CAST(session_info ->> 'app_version' AS decimal) <= 1.0;

-- Run statistical analyses
CREATE TABLE stats (
  sample_id SERIAL PRIMARY KEY,
  x INT,
  y INT
);

INSERT INTO stats (x,y)
  VALUES
  (1,2), (3,4), (6,5), (7,8), (9,10);

-- You can find the mean, variance and standard deviation using the functions below:
SELECT
	AVG(x),
    VARIANCE(x),
    STDDEV(x)
FROM stats;

-- You can also find the median (or any other percentile value) using the percentile_cont function:
-- median
SELECT
  PERCENTILE_CONT(0.5)
WITHIN GROUP (ORDER BY x)
FROM stats;

-- 90th percentile
SELECT
  PERCENTILE_CONT(0.9)
WITHIN GROUP (ORDER BY x)
FROM stats;

-- Another trick lets you calculate the correlation coefficients between different columns. Simply use the corr function.
SELECT
	CORR(x,y)
FROM stats;

-- PostgreSQL lets you run linear regression (sometimes called the most basic form of machine learning) via a set of
-- inbuilt functions.
-- https://en.wikipedia.org/wiki/Linear_regression
SELECT
	REGR_INTERCEPT(x,y),
    REGR_SLOP(x,y),
    REGR_R2(x,y)
FROM stats;

-- You can even run Monte Carlo simulations with single queries. The query below uses the generate_series and random
-- number functions to estimate the value of π by randomly sampling one million points inside a unit circle.
SELECT
	CAST(
		COUNT(*) * 4 AS FLOAT
		) / 1000000 AS pi
FROM GENERATE_SERIES(1,1000000)
WHERE CIRCLE(POINT(0.5,0.5),0.5) @> POINT(RANDOM(), RANDOM());

-- Work with shape data
-- Another unusual data type available in PostgreSQL is geometric data.
-- https://www.postgresql.org/docs/12/datatype-geometric.html
-- That's right, you can work with points, lines, polygons and circles within SQL.
-- Points are the basic building block for all geometric data types in PostgreSQL.
-- They are represented as (x, y) coordinates.
SELECT
	POINT(0,0) AS "origin",
    POINT(1,1) AS "point";


-- You can also define lines. These can either be infinite lines (specified by giving any two points on the line).
-- Or, they can be line segments (specified by giving the 'start' and 'end' points of the line).
SELECT
	LINE '((0,0),(1,1))' AS "line",
    LSEG '((2,2),(3,3))' AS "line_segment";

-- Polygons are defined by a longer series of points.
SELECT
	POLYGON '((0,0),(1,1),(0,2))' AS "triangle",
	POLYGON '((0,0),(0,1),(1,1),(1,0))' AS "square",
    POLYGON '((0,0),(0,1),(2,1),(2,0))' AS "rectangle";

-- Circles are defined by a central point and a radius.
SELECT
	CIRCLE '((0,0),1)' as "small_circle",
    CIRCLE '(0,0),5)' as "big_circle";

-- There are many functions and operators that can be applied to geometric data in PostgreSQL.
-- https://www.postgresql.org/docs/12/functions-geometry.html
-- You can:
-- Check if two lines are parallel with the ?|| operator:
SELECT
	LINE '((0,0),(1,1))' ?|| LINE '((2,3),(3,4))';

-- Find the distance between two objects with the <-> operator:
SELECT
	POINT(0,0) <-> POINT(1,1)

-- Check if two shapes overlap at any point with the && operator:
SELECT
	CIRCLE '((0,0),1)' &&  CIRCLE '((1,1),1)';

-- Translate (shift position) a shape using the + operator:
SELECT
	POLYGON '((0,0),(1,2),(1,1))' + POINT(0,3);
-- https://www.postgresql.org/docs/12/functions-geometry.html


-- Use recursive queries
-- There are three parts required to do this:
-- First, you define a starting expression.
-- Then, define a recursive expression that will be evaluated repeatedly
-- Finally, define a "termination criteria" - a condition which tells the function to stop calling itself, and return an output.
-- The query below returns the first hundred numbers in the Fibonacci sequence:
WITH RECURSIVE fibonacci(n,x,y) AS (
	SELECT
    	1 AS n ,
  		0 :: NUMERIC AS x,
    	1 :: NUMERIC AS y
  	UNION ALL
  	SELECT
    	n + 1 AS n,
  		y AS x,
    	x + y AS y
  	FROM fibonacci
  	WHERE n < 100
	)
SELECT
	x
FROM fibonacci;
-- https://www.postgresql.org/docs/12/queries-with.html#QUERIES-WITH-SELECT



--! ----------------------------------- Postgres Tips And Tricks ---------------------------------
--! ----------------------------------- https://pgdash.io/blog/postgres-tips-and-tricks.html -----

-- Insert Multiple Rows In One Statement
INSERT INTO planets (name, gravity)
     VALUES ('earth',    9.8),
            ('mars',     3.7),
            ('jupiter', 23.1);
-- https://pgdash.io/blog/postgres-insert.html

-- Insert a Row and Return Automatically-assigned Values
-- Values auto-generated with DEFAULT/serial/IDENTITY constructs can be returned by the INSERT statement using
-- the RETURNING clause.
-- From the application code perspective, such an INSERT is executed like a SELECT that returns a recordset.
-- table with 2 column values auto-generated on INSERT
CREATE TABLE items (
    slno       serial      PRIMARY KEY,
    name       text        NOT NULL,
    created_at timestamptz DEFAULT now()
);

INSERT INTO items (name)
     VALUES ('wooden axe'),
            ('loom'),
            ('eye of ender')
  RETURNING name, slno, created_at;

-- returns:
--      name     | slno |          created_at
-- --------------+------+-------------------------------
--  wooden axe   |    1 | 2020-08-17 05:35:45.962725+00
--  loom         |    2 | 2020-08-17 05:35:45.962725+00
--  eye of ender |    3 | 2020-08-17 05:35:45.962725+00

-- Autogenerated UUID Primary Keys
-- UUIDs are sometimes used instead of primary keys for various reasons. Here is how you can use an
-- UUID instead of a serial or IDENTITY:
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE items (
    id    uuid DEFAULT uuid_generate_v4(),
    name  text NOT NULL
);

INSERT INTO items (name)
     VALUES ('wooden axe'),
            ('loom'),
            ('eye of ender')
  RETURNING id, name;

-- returns:
--                   id                  |     name
-- --------------------------------------+--------------
--  1cfaae8c-61ff-4e82-a656-99263b7dd0ae | wooden axe
--  be043a89-a51b-4d8b-8378-699847113d46 | loom
--  927d52eb-c175-4a97-a0b2-7b7e81d9bc8e | eye of ender


-- Insert If Not Existing, Update Otherwise
-- In Postgres 9.5 and later, you can upsert directly using the ON CONFLICT construct:
CREATE TABLE parameters (
    key   TEXT PRIMARY KEY,
    value TEXT
);

-- when "key" causes a constraint violation, update the "value"
INSERT INTO parameters (key, value)
     VALUES ('port', '5432')
ON CONFLICT (key) DO
            UPDATE SET value=EXCLUDED.value;


-- Copy Rows From One Table Into Another
-- The INSERT statement has a form where the values can be supplied by a SELECT statement.
-- Use this to copy rows from one table into another:
-- copy between tables with similar columns
  INSERT INTO pending_quests
SELECT * FROM quests
        WHERE progress < 100;

-- supply some values from another table, some directly
  INSERT INTO archived_quests
       SELECT now() AS archival_date, *
         FROM quests
        WHERE completed;
-- If you’re looking to bulk-load tables, also check out the COPY command, which can be used to insert rows
-- from a text or CSV file.
-- https://www.postgresql.org/docs/current/sql-copy.html


-- Delete and Return Deleted Information
-- You can use the RETURNING clause to return values from the rows that were deleted using a bulk-delete statement:
-- return the list of customers whose licenses were deleted after expiry
DELETE FROM licenses
      WHERE now() > expiry_date
  RETURNING customer_name;


-- Move Rows From One Table Into Another
-- You can move rows from one table to another in a single statement, by using CTEs with DELETE .. RETURNING:
-- move yet-to-start todo items from 2020 to 2021
WITH ah_well AS (
    DELETE FROM todos_2020
          WHERE NOT started
      RETURNING *
)
INSERT INTO todos_2021
            SELECT * FROM ah_well;


-- Update Rows and Return Updated Values
-- The RETURNING clause can be used in UPDATEs too. Note that only the new values of the updated columns can
-- be returned this way.
-- grant random amounts of coins to eligible players
   UPDATE players
      SET coins = coins + (100 * random())::integer
    WHERE eligible
RETURNING id, coins;
-- If you need the original value of the updated columns: it is possible through a self-join, but there is no
-- guarantee of atomicity. Try using a SELECT .. FOR UPDATE instead.


-- Update a Few Random Rows and Return The Updated Ones
-- Here’s how you can choose a few random rows from a table, update them and return the updated ones, all in one go:
WITH lucky_few AS (
    SELECT id
      FROM players
  ORDER BY random()
     LIMIT 5
)
   UPDATE players
      SET bonus = bonus + 100
    WHERE id IN (SELECT id FROM lucky_few)
RETURNING id;


-- Create a Table Just Like Another Table
-- Use the CREATE TABLE .. LIKE construct to create a table with the same columns as another:
CREATE TABLE to_be_audited (LIKE purchases);
-- By default this does not create similar indexes, constraints, defaults etc. To do that, ask Postgres explicitly:
CREATE TABLE to_be_audited (LIKE purchases INCLUDING ALL);
-- See the full syntax here. (https://www.postgresql.org/docs/current/sql-createtable.html)

CREATE DATABASE testDB;
CREATE DATABASE "testDB";

GRANT TEMP ON DATABASE databaseName TO userName;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO userName;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public TO userName;
GRANT USAGE ON ALL SEQUENCES IN SCHEMA public TO userName;

select * from pg_catalog.pg_tables;

create shcema dbtutorialshcema;
create table dbtutorialschema.table1(ID integer, password CHAR(11), username CHAR(25));

pip install pgcli  -- PostgreSQL psql Alternative

Fenix International -- Hiring for Data Science

https://cloud.google.com/community/tutorials/setting-up-postgres-hot-standby

# https://www.youtube.com/watch?v=3dMq_3UUPxg
createdb db_name
createlang plpythonu db_name
SELECT * FROM pg_language

C:\Users\walas\AppData\Roaming\ConeEmu.xml

cmd.exe /c chcp 1252

sc config postgresql-x64-9.3 start= demand
Services -> Properties
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\postgresql-x64-9.3
Look at the ImagePath property name; youll see that it reads:
"C:\Program Files\PostgreSQL\9.3\bin\pg_ctl.exe" runservice -N "postgresql-x64-9.3" -D "C:/Program Files/PostgreSQL/9.3/data" -w

# Manually Starting and Stopping PostgreSQL Without a Service
"C:\Program Files\PostgreSQL\9.3\bin\pg_ctl.exe" start -D "D:\example\postgres\data" -w
"C:\Program Files\PostgreSQL\9.3\bin\pg_ctl.exe" stop -D "D:\example\postgres\data" -w

# Creating a New Data Directory
"C:\Program Files\PostgreSQL\9.3\bin\initdb.exe" -A md5 -U postgres -W -D "D:\example\postgres\data"

SHOW server_version;
export PGHOST=192.168.102.1

show data_directory;
show config_file;
show hba_file;
show port;
show listen_address;
SELECT rolname FROM pg_roles;
SELECT datname FROM pg_database;

ALTER USER djangouser CREATEDB;

The number of parts:  7
(1, '3M Corp')
(2, 'AKM Semiconductor Inc.')
(3, 'Asahi Glass Co Ltd.')
(4, 'Daikin Industries Ltd.')
(5, 'Dynacast International Inc.')
(6, 'Foster Electric Co. Ltd.')
(7, 'Murata Manufacturing Co. Ltd.')

The number of parts:  6
(4, 'Antenna')
(5, 'HOME/Build Button')
(6, 'LTE Modem')
(1, 'SIM Tray')
(2, 'Speaker')
(3, 'Vibrator')

('Antenna', 'Foster Electric Co. Ltd.')
('Antenna', 'Murata Manufacturing Co. Ltd.')
('HOME/Build Button', 'Dynacast International Inc.')
('HOME/Build Button', '3M Corp')
('LTE Modem', 'Dynacast International Inc.')
('LTE Modem', '3M Corp')
('SIM Tray', 'AKM Semiconductor Inc.')
('SIM Tray', '3M Corp')
('Speaker', 'Daikin Industries Ltd.')
('Speaker', 'Asahi Glass Co Ltd.')
('Vibrator', 'Dynacast International Inc.')
('Vibrator', 'Foster Electric Co. Ltd.')


suppliers=# SELECT * FROM parts;
 part_id |  part_name
---------+-------------
       1 | SIM Tray
       2 | Speaker
       3 | Vibrator
       4 | Antenna
       5 | HOME/Build Button
       6 | LTE Modem

su - postgres
/usr/bin/pg_ctl reload
SELECT pg_reload_conf();
select * from pg_settings where name='config_file';

SELECT name, setting FROM pg_settings WHERE category = 'File Locations';

pg_ctl reload -D /datafile-location;

psql postgres postgres -c "select pg_reload_conf();"

show data_directory;
ps aux | grep postgres | grep -- -D

select oid, datname from pg_database;  -- located in PGDATA/base
select oid, datname from pg_database WHERE datname = 'foo';


------------ How to change PostgreSQL root user password -------
$ /usr/local/pgsql/bin/psql postgres postgres

# ALTER USER postgres WITH PASSWORD 'tmppassword';

# select version();

------------- How to create a PostgreSQL user ----------------
# CREATE USER ramesh WITH password 'tmppassword';

$ /usr/local/pgsql/bin/createuser sathiya

---------------   How to create a PostgreSQL Database -----------------------
# CREATE DATABASE mydb WITH OWNER ramesh;

$ /usr/local/pgsql/bin/createdb mydb -O ramesh


------------ First Create Database then run this command ------------
pg_restore -U postgres -d dvdrental C:\temp\dvdrental.tar
pg_restore -U postgres -d dvdrental dvdrental.tar

SELECT * FROM actor LIMIT 10 OFFSET 3; -- Starting at 3 with groups of 10

\l  -- list databases

test=# CREATE TABLE person (
test(# id BIGSERIAL NOT NULL PRIMARY KEY,
test(# name VARCHAR(100) NOT NULL,
test(# country VARCHAR(50) NOT NULL );

INSERT INTO person (name, country) VALUES ('Amigoscode', 'UK');
INSERT INTO person (name, country) VALUES ('Sarah', 'Albania');
INSERT INTO person (name, country) VALUES ('Julio', 'Argentina');

SELECT COUNT(id) FROM person;
UPDATE person SET name = 'Antonio' WHERE id = 3;
DELETE FROM person WHERE id = 2;

\x -- Expanded Display

SELECT datname FROM pg_database;   -- Listing Databases using SELECT statement
SELECT * FROM pg_catalog.pg_tables WHERE schemaname != 'pg_catalog' AND schemaname != 'information_schema';   -- Listing Tables
SELECT COLUMN_NAME FROM information_schema.COLUMNS WHERE TABLE_NAME = 'bookings';  -- Describing a Table in PostgreSQL


# DROP DATABASE mydb;

---------- Getting help on postgreSQL commands -----------
# \?
# \h CREATE
# \h CREATE INDEX

---------------- How to turn on timing, and checking how much time a query takes to execute -----
# \timing

# SELECT * from pg_catalog.pg_attribute ;

----------------- How To Backup and Restore PostgreSQL Database and Table? -------------
http://www.thegeekstuff.com/2009/01/how-to-backup-and-restore-postgres-database-using-pg_dump-and-psql/

------------------- How to see the list of available functions in PostgreSQL  ------------
# \df

# \df+
\dn   -- List all schemas
\df   -- List all stored procedures and fucntions
\dv   -- List all views
\dt   -- List all tables in a current database
\dt+  -- Get more infomation on tables in a current database
\d+  tbl_name -- Get detailed information on a table
\df+  -- Show stored procedure or function code
\x    -- Shiow query output in pretty format
\du   -- List all users

----------------- How to find the largest table in the postgreSQL database ---------------
SELECT relname, relpages FROM pg_class ORDER BY relpages DESC;
SELECT relname, relpages FROM pg_class ORDER BY relpages DESC limit 1;

------------------- How to calculate postgreSQL database size in disk ---------------
# SELECT pg_database_size('postgres');
# SELECT pg_size_pretty(pg_database_size('postgres'));

------------------- How to calculate postgreSQL table size in disk ----------------
# SELECT pg_size_pretty(pg_total_relation_size('big_table'));

How to find size of the postgreSQL table ( not including index ) ?
Use pg_relation_size instead of pg_total_relation_size as shown below.

# SELECT pg_size_pretty(pg_relation_size('big_table'));

-------------- How to view the indexes of an existing postgreSQL table --------------
# \d pg_attribute

----------------- How to specify postgreSQL index type while creating a new index on a table  -----
Syntax: CREATE INDEX name ON table USING index_type (column);
# CREATE INDEX test_index ON numbers using hash (num);

-------------- How to work with postgreSQL transactions -----------
# BEGIN -- start the transaction.
# ROLLBACK -- rollbacks the transaction.
# COMMIT -- commits the transaction.

------------ How to view execution plan used by the postgreSQL for a SQL quer -------
# EXPLAIN query;

-------------- How to display the plan by executing the query on the server side ---------
# EXPLAIN ANALYZE query;

----------------- How to generate a series of numbers and insert it into a table  -------
# INSERT INTO numbers (num) VALUES ( generate_series(1,1000));

------------ How to count total number of rows in a postgreSQL table ----------
This shows the total number of rows in the table.
# select count(*) from table;

Following example gives the total number of rows with a specific column value is not null.
# select count(col_name) from table;

Following example displays the distinct number of rows for the specified column value.
# select count(distinct col_name) from table;

----------------- How can I get the second maximum value of a column in the table  ---------------
# select max(col_name) from table;

Second maximum value of a column
# SELECT MAX(num) from number_table where num  < ( select MAX(num) from number_table

-----------------------  How can I get the second minimum value of a column in the table -------
First minimum value of a column
# select min(col_name) from table;

Second minimum value of a column
# SELECT MIN(num) from number_table where num > ( select MIN(num) from number_table );

---------------- How to view the basic available datatypes in postgreSQL ----------
# SELECT typname,typlen from pg_type where typtype='b';

-------------- How to redirect the output of postgreSQL query to a file ----------
# \o output_file
# SELECT * FROM pg_class;
# \o -- to redirect output to stdout again

----------------- Storing the password after encryption -----------
# SELECT crypt ( 'sathiya', gen_salt('md5') );

http://www.thegeekstuff.com/2009/05/15-advanced-postgresql-commands-with-examples/

###################  How to Execute PostgreSQL Commands Inside Unix Shell Scripts  ################
http://www.thegeekstuff.com/2010/03/how-to-execute-postgresql-commands-inside-unix-shell-scripts/

psql DBNAME USERNAME << EOF
	statement 1;
	statement 2;
	.
	.
	statement n;
EOF

http://www.thegeekstuff.com/2010/07/8-postgresql-date-and-time-function-examples/

############ PostgreSQL Trigger Tutorial with EMP Table Examples ###########
http://www.thegeekstuff.com/2010/10/postgresql-trigger-tutorial-with-emp-table-examples/

--------------- PostgreSQL Create Demo Tables -------------
CREATE TABLE emp_table ( empid int, empname name, salary int );
CREATE TABLE backup_tbl ( empid int, empname name, salary int, operation varchar(25) );

--------- PostgreSQL Create language -------
Create language plpgsql which is required for trigger.
CREATE LANGUAGE plpgsql;

------------ Create PostgreSQL Trigger Function ----
This function will be invoked before the insert, delete or update operation. It does the following:

Before delete operation, it inserts the old data into backup_tbl.
Before update operation, it inserts the old data into backup_tbl.
Before insert operation, it inserts the new data into backup_tbl.
CREATE FUNCTION ins_function() RETURNS trigger AS '
BEGIN
  IF tg_op = 'DELETE'' THEN
     INSERT INTO backup_tbl(empid, empname, salary, operation)
     VALUES (old.empid, old.empname, old.salary, tg_op);
     RETURN old;
  END IF;
  IF tg_op = 'INSERT' THEN
     INSERT INTO backup_tbl(empid, empname, salary, operation)
     VALUES (new.empid, new.empname, new.salary, tg_op);
     RETURN new;
  END IF;
  IF tg_op = ''UPDATE'' THEN
     INSERT INTO backup_tbl(empid, empname, salary, operation)
     VALUES (old.empid, old.empname, old.salary, tg_op);
     RETURN new;
  END IF;
END
LANGUAGE plpgsql;

-------------    Create PostgreSQL Trigger ----
CREATE TRIGGER audit_ins AFTER INSERT OR DELETE OR UPDATE
        ON emp_table FOR each ROW
        EXECUTE PROCEDURE ins_function();

--------------- Test the PostgreSQL Trigger ---
# INSERT INTO emp_table (empid, empname, salary) values (101, 'sathiya', '3000');
# SELECT * from backup_tbl;

# UPDATE emp_table SET salary = '2500' where empid = '101';

# DELETE FROM emp_table WHERE empid = '101';

 ###########8 PostgreSQL Examples to Install, Create DB & Table, Insert & Select Records#####
http://www.thegeekstuff.com/2017/02/postgresql-basics/


# -------------- SQL BootCamp ------------
# ------------------ Order BY --------------------
SELECT first_name, last_name FROM customer
ORDER BY first_name ASC,
last_name DESC;

SELECT first_name,last_name FROM customer
WHERE first_name ILIKE 'BaR%';  -- case insensitive

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT staff_id, COUNT(payment_id) FROM payment
GROUP BY staff_id;

SELECT rating, COUNT(rating) FROM film
GROUP BY rating;

SELECT rental_duration,COUNT(rental_duration) FROM film
GROUP BY rental_duration;

SELECT rating,AVG(rental_rate) FROM film
GROUP BY rating;

SELECT staff_id, COUNT(*), SUM(amount) FROM payment
GROUP BY staff_id;

SELECT rating, ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating;

SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id ORDER BY SUM(amount) DESC LIMIT 5;

SELECT customer_id,COUNT(amount) FROM payment
GROUP BY customer_id HAVING COUNT(amount) > 40;

SELECT rating,AVG(rental_duration) FROM film
GROUP BY rating
HAVING AVG(rental_duration) > 5;


SELECT customer_id,SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 110;

SELECT COUNT(*) FROM film WHERE title LIKE 'J%';

SELECT first_name,last_name FROM customer WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC LIMIT 1;


# --------------- Assessment 2 -----------------
1.SELECT * FROM cd.facilities;
2.SELECT name,membercost FROM cd.facilities;
3.SELECT * FROM cd.facilities WHERE membercost > 0;
4.SELECT facid,name,membercost,monthlymaintenance FROM cd.facilities WHERE membercost > 0 AND membercost < (0.02 * monthlymaintenance);
5.SELECT * FROM cd.facilities WHERE name LIKE '%Tennis%';
6.SELECT * FROM cd.facilities WHERE facid IN (1,5);
7.SELECT memid,surname,firstname,joindate FROM cd.members WHERE joindate >= '2012-09-01';
8.SELECT DISTINCT(surname) FROM cd.members ORDER BY surname LIMIT 10;
9.SELECT MAX(joindate) as latest FROM cd.members;
10.SELECT count(*) FROM cd.facilities WHERE guestcost >=10;
12.SELECT facid,SUM(slots) FROM cd.bookings WHERE starttime >= '2012-09-01' AND starttime < '2012-10-01'  GROUP BY facid ORDER BY SUM(slots);
13.SELECT facid,SUM(slots) FROM cd.bookings GROUP BY facid HAVING SUM(slots) > 1000 ORDER BY facid;
14.SELECT starttime,name FROM cd.bookings INNER JOIN cd.facilities ON cd.bookings.facid = cd.facilities.facid WHERE name LIKE 'Tennis%' AND starttime >= '2012-09-21' AND starttime < '2012-09-22' ORDER BY starttime;
15.SELECT starttime FROM cd.members INNER JOIN cd.bookings ON cd.members.memid = cd.bookings.memid WHERE firstname = 'David' and surname = 'Farrell';


###################### PostgreSQL Tutorial #################################
http://www.postgresqltutorial.com/postgresql-describe-table/
psql -d db_name -U postgres -W
psql -U user -h host "dbname=db sslmode=require"
CREATE DATABASE [IF NOT EXISTS] db_name;
DROP DATABASE [IF EXISTS] db_name;
DROP TABLE [IF EXISTS] table_name CASCADE;
EXPLAIN query;
EXPLAIN ANALYZE query;
ANALYZE table_name;


help
\h
\c dbname username
\d, \d+ tbl_name  		--> Describe Table
SELECT COLUMN_NAME FROM information_schema.COLUMNS WHERE TABLE_NAME = 'city';
\l       				--> Show Databases
SELECT datname FROM pg_database;
\dt     				--> Show Tables
\dt+     				--> Show Tables -- {More Information}

SELECT * FROM pg_catalog.pg_tables WHERE schemaname != 'pg_catalog'
AND schemaname != 'information_schema';
\du, \du+				--> List Users
\dn 					--> List Schemas
\df 					--> List Functions
\df+ func_name 			--> Show Stored Procedure or Function Code
\dv						--> List Views
\g 						--> Execute Previous Command
\s 						--> Display Command History
\s filename 			--> Save Command History
\i filename				--> Execute psql commands from a file
\? 						--> psql commands help
\h ALTER TABLE 			--> Help on Postgres Statement
\timing 				--> Turn on/off Execution time
\e 						--> Edit Command in ur Editor, Save & Exit
\ef [func_name] 		--> Edit a Function in the Editor
\a 						--> Switch from aligned to non-aligned column output
\H 						--> Formats output to HTML format
\x auto|on|off			--> Show Query output in pretty format

>pg_restore -U postgres -d dvdrental C:\temp\dvdrental.tar


# Reset Forgotten Password for Postgres User
local	all    all    trust # on 1st line of pg_hba.conf --> HBA -- {Host-BAsed Authentication}
ALTER USER postgres with password 'very_secure_password';

# Copy Database
CREATE DATABASE targetdb WITH TEMPLATE sourcedb;
pg_dump -U postgres -0 sourcedb sourcedb.sql
psql -U postgres -d targetdb -f sourcedb.sql
pg_dump -C -h local -U localuser sourcedb | psql -h remote -U remoteuser targetdb
SELECT pg_size_pretty (pg_relation_size('actor'))
SELECT pg_size_pretty (pg_total_relation_size('actor'))

# For example, the following query returns top 5 biggest tables in the dvdrental database:
SELECT
    relname AS "relation",
    pg_size_pretty (
        pg_total_relation_size (C .oid)
    ) AS "total_size"
FROM
    pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C .relnamespace)
WHERE
    nspname NOT IN (
        'pg_catalog',
        'information_schema'
    )
AND C .relkind <> 'i'
AND nspname !~ '^pg_toast'
ORDER BY
    pg_total_relation_size (C .oid) DESC
LIMIT 5;

# Get Size of the Database
SELECT pg_size_pretty (pg_database_size ('dvdrental'));

# To get the size of each database in the current database server
SELECT
    pg_database.datname,
    pg_size_pretty(pg_database_size(pg_database.datname)) AS size
    FROM pg_database;

SELECT
    pg_size_pretty (pg_indexes_size('actor'));

SELECT
    pg_size_pretty (
        pg_tablespace_size ('pg_default')
    );

# PostgreSQL value size
select pg_column_size(5::smallint);
select pg_column_size(5::int);
select pg_column_size(5::bigint);


# Next, check the all active connections to the db database
SELECT * FROM pg_stat_activity WHERE datname = 'db';

# Then, terminate all the connections to the db database:
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'db';

ALTER DATABASE db RENAME TO newdb;
SELECT rolname FROM pg_roles;
pg_dump -U postgres -W -F t dvdrental > c:\pgbackup\dvdrental.tar

-F : specifies the output file format that can be one of the following:
c: custom-format archive file format
d: directory-format archive
t:tar
p: plain text SQL script file).

# https://www.openscg.com/bigsql/package-manager/
Postgres Package Manager by BigSQL
-> Install BigSQL PGC  --> Run Commands in Folder in which you wish to install bigsql/pgc
python -c "$(curl -fsSL https://s3.amazonaws.com/pgcentral/install.py)"
@cmd Administrator Mode -> @powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://s3.amazonaws.com/pgcentral/install.ps1'))"

cd bigsql
pgc install pg10
pgc start pg10

>pgc help
./pgc info
./pgc info pg95
./pgc list
./pgc status
./pgc install pgstudio2
./pgc list --extensions pg95
./pgc install orafce3-pg95

# 7.) Configure PostgreSQL as a background service
pgc config pg95 --autostart=on

[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\Git\usr\bin", "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\R\R-3.4.1\bin", "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\R\R-3.4.2\bin", "Machine")
C:\R\R-3.4.1

CREATE EXTENSION plr;
SELECT * FROM plr_environ();
SELECT plr_version();
https://github.com/postgres-plr/plr/releases

plpython3u for PostgreSQL 10: Depends on Python34
plpython3u for PostgreSQL 9.6: Depends on Python33
SELECT * FROM pg_language;

# --------------- Tip ---------------------
If a language is installed into template1, all subsequently created databases will have the language installed automaticall

Changing Windows Active Code Page: Permanently
Running Multiple Versions of PostgreSQL on Windows 10
Transfering  --  Console code page (437)
UTF-8: 65001  -- chcp 65001
Proposed change of HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor\Autorun to @chcp 65001>nul served just well for my purpose
[HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor\Autorun] Change the value to chcp 65001 Add new String Value named: Autorun  -- Originaly Not Existing  -- (******) and PowerShell(Not  Working)

postgresql-x64-10  -- psql --cluster 10/main --version
postgresql-x64-9.6 -- psql --cluster 9.6/main --version
pg_wrapper

How it works: as installed by the Ubuntu packages, /usr/bin/pg_dump is actually a soft-link to /usr/share/postgresql-common/pg_wrapper, whose purpose is precisely to select the correct instance and run the corresponding binary. --cluster does not exist in the stock PostgreSQL commands, its a Debian/Ubuntu addition that is meant to address this multiple versions/multiple paths problem.


Data Directory: C:\Program Files\PostgreSQL\10\data
Operating System Account: NT AUTHORITY\NetworkService
Database Service: postgresql-x64-10
Command Line Tools Installation Directory: C:\Program Files\PostgreSQL\10
pgAdmin4 Installation Directory: C:\Program Files\PostgreSQL\10\pgAdmin 4

--------Procedural Languages for PostgreSQL-------------
PL/Python: Inbuilt
PL/Py: External
PL/R: External
PL/sh: Unix Shell

Console code page (437) differs from Windows code page (1252)
cmd.exe /c chcp 1252
\set PROMPT1 �%n@%m %~%R%# �
\pset border 2


------------------- Learn PostgreSQL Tutorial - Full Course For Beginners (AmigosCode/freecodecamp YT) ------------------
CREATE DATABASE test;
DROP DATABASE test;
psql --help
psql -h localhost -p 5432 -U amigoscode test
\c test

CREATE TABLE table_name (
	Column name + data type + constraints if any
)

-------- Creating a Table -------
CREATE TABLE person (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	gender VARCHAR(6),
	date_of_birth DATE
);

https://www.postgresql.org/docs/11/datatype.html

\d              -- tables & sequences
\d person       -- view particular table
\dt				-- just tables

CREATE TABLE person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(7) NOT NULL,
	date_of_birth DATE NOT NULL,
	email VARCHAR(150)
);

DROP TABLE person;
ALTER TABLE person ADD COLUMN email VARCHAR(150);

INSERT INTO person (
	col_name
)
VALUES ('value');

INSERT INTO person (
	first_name,
	last_name,
	gender,
	date_of_birth) VALUES ('Anne', 'Smith', 'FEMALE', '1988-01-09'
);

ALTER TABLE person DROP id;
-- ALTER TABLE person ADD id BIGSERIAL NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (id);
-- Doesn't apply in PostgreSQL since postgres can't order columns like in MySQL

INSERT INTO person (
	first_name,
	last_name,
	gender,
	date_of_birth,
	email) VALUES ('Jake', 'Jones', 'MALE', '1990-01-10', 'jake@gmail.com'
);

https://mockaroo.com/ -- Content Generator for SQL --
ALTER TABLE person ADD COLUMN country_of_birth VARCHAR(50);

\i 'C:/Users/walas/Downloads/person.sql'
\i 'D:/STUDY/PostgreSQL/person.sql'

ALTER TABLE person ALTER COLUMN gender TYPE VARCHAR(50);
ALTER TABLE person ALTER COLUMN email TYPE VARCHAR(100);


UPDATE "Todos" SET title = 'ITO-TES' WHERE title IS NULL;
ALTER TABLE "Todos" ALTER COLUMN title SET NOT NULL;
ALTER TABLE "Todos" ALTER COLUMN title DROP NOT NULL;
ALTER TABLE
  clients
ALTER COLUMN
  phone
    NVARCHAR(20) NOT NULL;

ALTER TABLE products DROP CONSTRAINT some_name;
ALTER TABLE products ALTER COLUMN product_no DROP NOT NULL;
ALTER TABLE products ALTER COLUMN price SET DEFAULT 7.77;
ALTER TABLE products ALTER COLUMN price DROP DEFAULT;
ALTER TABLE products RENAME COLUMN product_no TO product_number;
ALTER TABLE products RENAME TO items;


-- Selecting the last element in the table or the last given items in the table
SELECT * FROM person ORDER BY id DESC LIMIT 10;

SELECT DISTINCT country_of_birth FROM person ORDER BY country_of_birth;

SELECT 1 <= 2;
SELECT 5 >= 2;
SELECT 5 <> 2; -- Not Equal

SELECT * FROM person WHERE gender = 'Male' AND country_of_birth = 'China';
SELECT * FROM person  OFFSET 5 LIMIT 5;
SELECT * FROM person OFFSET 5 FETCH FIRST 5 ROW ONLY;
SELECT * FROM person WHERE country_of_birth IN ('China', 'France', 'Brazil');
SELECT * FROM person WHERE date_of_birth BETWEEN '2000-01-01' AND '2015-01-01';
SELECT * FROM person WHERE email LIKE '%.com';
SELECT * FROM person WHERE email LIKE '________@%';

SELECT * FROM person WHERE country_of_birth ILIKE 'p%';		-- Ignore Case
SELECT country_of_birth AS cob, COUNT(*) FROM person GROUP BY cob ORDER BY cob;
SELECT country_of_birth AS cob, COUNT(*) FROM person GROUP BY cob HAVING COUNT(*) > 40 ORDER BY cob;
SELECT country_of_birth AS cob, COUNT(*) FROM person GROUP BY cob HAVING COUNT(*) > 40 ORDER BY COUNT DESC;

SELECT MAX(price) FROM car;

SELECT ROUND(AVG(price)) FROM car;
SELECT make, model, MIN(price) FROM car GROUP BY make, model;

SELECT SUM(price) FROM car;
SELECT make, SUM(price) FROM car GROUP BY make;

SELECT 10^2;
SELECT 5!;

SELECT id, make, model, price, ROUND(price * .10, 2) FROM car;
SELECT id, make, model, price, ROUND(price * .10, 2) AS discount, ROUND(price - (price * .10), 2) FROM car;

SELECT COALESCE(null, null, 1, 10) AS number;
SELECT COALESCE(email, 'Email Not Provided') FROM person;
NULLIF
SELECT NULLIF(10, 10);
SELECT 10 / NULLIF(0, 0);

SELECT NOW()::DATE;
SELECT NOW()::TIME;

SELECT NOW() - INTERVAL '1 YEAR';
SELECT NOW() - INTERVAL '10 YEARS';
SELECT NOW() - INTERVAL '10 MONTHS';
SELECT NOW() - INTERVAL '5 DAYS';
SELECT NOW() + INTERVAL '10 DAYS';
SELECT NOW()::DATE + INTERVAL '5 DAYS';
SELECT (NOW() + INTERVAL '10 MONTHS')::DATE;
SELECT EXTRACT(YEAR FROM NOW());
SELECT EXTRACT(MONTH FROM NOW());
SELECT EXTRACT(DAY FROM NOW());
SELECT EXTRACT(DOW FROM NOW());
SELECT EXTRACT(CENTURY FROM NOW());

SELECT first_name, last_name, gender, country_of_birth, date_of_birth, AGE(NOW(), date_of_birth) AS age FROM person;

ALTER TABLE person DROP CONSTRAINT person_pkey;
ALTER TABLE person ADD PRIMARY KEY (id);
DELETE FROM person WHERE id = 1;

SELECT email, COUNT(*) FROM person GROUP BY email;
SELECT email, COUNT(*) FROM person GROUP BY email HAVING COUNT(*) > 1;

ALTER TABLE person ADD CONSTRAINT unique_email_address UNIQUE (email);
ALTER TABLE person DROP CONSTRAINT unique_email_address;
ALTER TABLE person ADD UNIQUE (email);

SELECT DISTINCT gender FROM person;
ALTER TABLE person ADD CONSTRAINT gender_constraint CHECK (gender = 'Female' OR gender = 'Male');

DELETE FROM person WHERE id = 1011;
DELETE FROM person WHERE gender = 'Female' AND country_of_birth = 'Nigeria';

UPDATE person SET email = 'ommar@gmail.com' WHERE id = 2011;
UPDATE person SET first_name = 'Omar', last_name = 'Montana', email = 'omar.montana@hotmail.com' WHERE id = 2011;

INSERT INTO ... ON CONFLICT (id) DO NOTHING;
INSERT INTO ... ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email;
INSERT INTO person (first_name, last_name, gender, email, date_of_birth, country_of_birth) VALUES ('Russ', 'Ruddoch', 'Male', 'rruddoch7@hhs.gov.uk', '1952-09-25', 'Norway') ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email;

-- person :
car_id BIGINT REFERENCES car (id),
UNIQUE(car_id);

-- ALTER TABLE ADD COLUMN car_id BIGINT REFERENCES car(id)
-- UNIQUE(car_id)
ALTER TABLE person ADD COLUMN car_id BIGINT REFERENCES car (id);
ALTER TABLE person ADD UNIQUE (car_id);
UPDATE person SET car_id = 2 WHERE id = 1;
UPDATE person SET car_id = 1 WHERE id = 2;

SELECT * FROM person p JOIN car c ON p.car_id = c.id;
\x -- ON/OFF
SELECT p.first_name, c.make, c.model, c.price FROM person p JOIN car c ON p.car_id = c.id;

SELECT * FROM person LEFT JOIN car ON car.id = person.car_id;
SELECT * FROM person LEFT JOIN car ON car.id = person.car_id WHERE car.* IS NULL;

UPDATE person SET car_id = 13 WHERE id = 4;
DELETE FROM car WHERE id = 13;  -- Doesn't work
DELETE FROM person WHERE id = 4;  -- Works (Delete this first)


SELECT * FROM person LEFT JOIN car ON car.id = person.car_id;
\?
\copy (SELECT * FROM person LEFT JOIN car ON car.id = person.car_id) TO 'D:/STUDY/PostgreSQL/results.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM person_id_seq;
SELECT nextval('person_id_seq'::regclass);
ALTER SEQUENCE person_id_seq RESTART WITH 10;

SELECT * FROM pg_available_extensions;
plv8 -- PL/JavaScript (v8) trusted procedural language

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
\df
SELECT uuid_generate_v4();

-- UUID as Primary Keys
UPDATE person SET car_uid = 'c4642f2a-53dd-40de-9b7c-5609692e1be1' WHERE person_uid = 'e757daaa-7dff-4b33-bb02-b8ea5ba0a2ee';
UPDATE person SET car_uid = '5a059a9c-c7ca-45aa-902a-c8901dfd8419' WHERE person_uid = '5843a183-af6d-46f1-9cd2-317bc4b74f9c';

SELECT * FROM person p JOIN car c ON p.car_uid = c.car_uid;
SELECT * FROM person p JOIN car USING(car_uid);  -- bcoz both the primary key & the foreign key are the same name USING
SELECT * FROM person p LEFT JOIN car c USING(car_uid);
SELECT * FROM person p LEFT JOIN car c USING(car_uid) WHERE c.* IS NULL;