mysql: [Warning] C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe: ignoring option '--no-beep' due to invalid value ''.
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.36 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use sample;
Database changed
mysql> show tables;
+------------------+
| Tables_in_sample |
+------------------+
| employee         |
| orders           |
| products         |
+------------------+
3 rows in set (0.03 sec)

mysql> select * from products;
+------------+--------------+----------+
| product_id | product_name | order_id |
+------------+--------------+----------+
| P01        | dresses      | A01      |
| P02        | books        | A02      |
| P03        | books        | A03      |
| P04        | watch        | A04      |
| P05        | smartphone   | A05      |
+------------+--------------+----------+
5 rows in set (0.00 sec)

mysql> desc products;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_id   | varchar(20) | YES  |     | NULL    |       |
| product_name | varchar(20) | YES  |     | NULL    |       |
| order_id     | varchar(10) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.14 sec)

mysql> desc orders;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| order_id      | varchar(20) | YES  |     | NULL    |       |
| order_name    | varchar(20) | YES  |     | NULL    |       |
| customer_id   | int         | YES  |     | NULL    |       |
| customer_name | varchar(20) | YES  |     | NULL    |       |
| order_date    | date        | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table orders add primary key(order_id);
Query OK, 0 rows affected (1.23 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table products add primary key(order_id);
Query OK, 0 rows affected (0.67 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table products add foreign key(order_id) references orders(order_id);
Query OK, 5 rows affected (1.23 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc products;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_id   | varchar(20) | YES  |     | NULL    |       |
| product_name | varchar(20) | YES  |     | NULL    |       |
| order_id     | varchar(10) | NO   | PRI | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc orders;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| order_id      | varchar(20) | NO   | PRI | NULL    |       |
| order_name    | varchar(20) | YES  |     | NULL    |       |
| customer_id   | int         | YES  |     | NULL    |       |
| customer_name | varchar(20) | YES  |     | NULL    |       |
| order_date    | date        | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table products add primary key(product_id);
ERROR 1068 (42000): Multiple primary key defined
mysql> ALTER TABLE Persons
    ->
    ->
    ->
    -> ;
ERROR 1146 (42S02): Table 'sample.persons' doesn't exist
mysql> alter table product drop primary key;
ERROR 1146 (42S02): Table 'sample.product' doesn't exist
mysql> alter table products drop primary key;
ERROR 1553 (HY000): Cannot drop index 'PRIMARY': needed in a foreign key constraint
mysql> alter table products drop primary key;
ERROR 1553 (HY000): Cannot drop index 'PRIMARY': needed in a foreign key constraint
mysql> alter table products drop primary key;
ERROR 1553 (HY000): Cannot drop index 'PRIMARY': needed in a foreign key constraint
mysql> alter table products drop primarykey;
ERROR 1091 (42000): Can't DROP 'primarykey'; check that column/key exists
mysql> alter table products drop primary key;
ERROR 1553 (HY000): Cannot drop index 'PRIMARY': needed in a foreign key constraint
mysql> alter table products add primary key(product_id);
ERROR 1068 (42000): Multiple primary key defined
mysql> alter table products add primary key(product_id);
ERROR 1068 (42000): Multiple primary key defined
mysql> alter table product drop primary key;
ERROR 1146 (42S02): Table 'sample.product' doesn't exist
mysql> alter table products drop primary key;
ERROR 1553 (HY000): Cannot drop index 'PRIMARY': needed in a foreign key constraint
mysql> desc products;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_id   | varchar(20) | YES  |     | NULL    |       |
| product_name | varchar(20) | YES  |     | NULL    |       |
| order_id     | varchar(10) | NO   | PRI | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table products add foreign key(product_id) references orders(product_id);
ERROR 3734 (HY000): Failed to add the foreign key constraint. Missing column 'product_id' for constraint 'products_ibfk_2' in the referenced table 'orders'
mysql> alter table orders add foreign key(product_id) references products(product_id);
ERROR 1072 (42000): Key column 'product_id' doesn't exist in table
mysql> alter table products drop constraint order_id;
ERROR 3940 (HY000): Constraint 'order_id' does not exist.
mysql> alter table products drop primary key;
ERROR 1553 (HY000): Cannot drop index 'PRIMARY': needed in a foreign key constraint
mysql> alter table orders drop primary key;
ERROR 1553 (HY000): Cannot drop index 'PRIMARY': needed in a foreign key constraint
mysql> alter table products drop foreign key;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> alter table orders drop foreign key;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> drop products order id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'products order id' at line 1
mysql> drop products order_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'products order_id' at line 1
mysql> alter table orders drop foreign key(order
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(order' at line 1
mysql> alter table orders drop foreign key(order_id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(order_id)' at line 1
mysql> alter table products drop order_id;
ERROR 1828 (HY000): Cannot drop column 'order_id': needed in a foreign key constraint 'products_ibfk_1'
mysql> alter table products drop column order_id;
ERROR 1828 (HY000): Cannot drop column 'order_id': needed in a foreign key constraint 'products_ibfk_1'
mysql> alter table products drop primary key;
ERROR 1553 (HY000): Cannot drop index 'PRIMARY': needed in a foreign key constraint
mysql> alter table products add foreign key(order_id) references orders(order_id);
Query OK, 5 rows affected (1.79 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc products;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_id   | varchar(20) | YES  |     | NULL    |       |
| product_name | varchar(20) | YES  |     | NULL    |       |
| order_id     | varchar(10) | NO   | PRI | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table products add primary key(product_id);
ERROR 1068 (42000): Multiple primary key defined
mysql> alter table products add primary key(product_id);
ERROR 1068 (42000): Multiple primary key defined
mysql> create database kavya;
Query OK, 1 row affected (0.19 sec)

mysql> use kavya;
Database changed
mysql>  create table orders(order_id varchar(20),order_name varchar(20),customer_id int,customer_name varchar(20),order_date date);
Query OK, 0 rows affected (0.37 sec)

mysql> insert into orders values("A01","dresses","01","kavya","2024-09-29");
Query OK, 1 row affected (0.07 sec)

mysql> insert into orders values("A02","books","02","kavya","2023-02-21");
Query OK, 1 row affected (0.09 sec)

mysql> insert into orders values("A03","books","03","theertha","2024-02-09");
Query OK, 1 row affected (0.13 sec)

mysql> insert into orders values("A04","watch","04","anusree","2023-08-16");
Query OK, 1 row affected (0.09 sec)

mysql> insert into orders values("A05","smartphone","05","kiran","2024-03-28");
Query OK, 1 row affected (0.07 sec)

mysql> select * from orders;
+----------+------------+-------------+---------------+------------+
| order_id | order_name | customer_id | customer_name | order_date |
+----------+------------+-------------+---------------+------------+
| A01      | dresses    |           1 | kavya         | 2024-09-29 |
| A02      | books      |           2 | kavya         | 2023-02-21 |
| A03      | books      |           3 | theertha      | 2024-02-09 |
| A04      | watch      |           4 | anusree       | 2023-08-16 |
| A05      | smartphone |           5 | kiran         | 2024-03-28 |
+----------+------------+-------------+---------------+------------+
5 rows in set (0.00 sec)

mysql> create table products(product_id varchar(20),product_name varchar(20),order_id varchar(10));
Query OK, 0 rows affected (0.41 sec)

mysql> insert into products values("P01","dresses","A01");
Query OK, 1 row affected (0.09 sec)

mysql>  insert into products values("P02","books","A02");
Query OK, 1 row affected (0.08 sec)

mysql>  insert into products values("P03","books","A03");
Query OK, 1 row affected (0.08 sec)

mysql> insert into products values("P04","watch","A04");
Query OK, 1 row affected (0.08 sec)

mysql>  insert into products values("P05","smartphone","A05");
Query OK, 1 row affected (0.12 sec)

mysql> select * from products;
+------------+--------------+----------+
| product_id | product_name | order_id |
+------------+--------------+----------+
| P01        | dresses      | A01      |
| P02        | books        | A02      |
| P03        | books        | A03      |
| P04        | watch        | A04      |
| P05        | smartphone   | A05      |
+------------+--------------+----------+
5 rows in set (0.00 sec)

mysql>  select orders.order_id,orders.order_name,products.product_id from orders join products on orders.order_id=products.order_id;
+----------+------------+------------+
| order_id | order_name | product_id |
+----------+------------+------------+
| A01      | dresses    | P01        |
| A02      | books      | P02        |
| A03      | books      | P03        |
| A04      | watch      | P04        |
| A05      | smartphone | P05        |
+----------+------------+------------+
5 rows in set (0.00 sec)

mysql>  select orders.order_id,orders.order_name,products.product_id,products.product_name from orders join products on orders.order_id=products.order_id;
+----------+------------+------------+--------------+
| order_id | order_name | product_id | product_name |
+----------+------------+------------+--------------+
| A01      | dresses    | P01        | dresses      |
| A02      | books      | P02        | books        |
| A03      | books      | P03        | books        |
| A04      | watch      | P04        | watch        |
| A05      | smartphone | P05        | smartphone   |
+----------+------------+------------+--------------+
5 rows in set (0.00 sec)

mysql> alter table orders add primary key(order_id);
Query OK, 0 rows affected (1.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table products add primary key(product_id);
Query OK, 0 rows affected (1.19 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc orders;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| order_id      | varchar(20) | NO   | PRI | NULL    |       |
| order_name    | varchar(20) | YES  |     | NULL    |       |
| customer_id   | int         | YES  |     | NULL    |       |
| customer_name | varchar(20) | YES  |     | NULL    |       |
| order_date    | date        | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> desc products;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_id   | varchar(20) | NO   | PRI | NULL    |       |
| product_name | varchar(20) | YES  |     | NULL    |       |
| order_id     | varchar(10) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table products add foreign key(order_id) references orders(order_id);
Query OK, 5 rows affected (1.16 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc products;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_id   | varchar(20) | NO   | PRI | NULL    |       |
| product_name | varchar(20) | YES  |     | NULL    |       |
| order_id     | varchar(10) | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from product join orders on product.order_id=orders.order_id;
ERROR 1146 (42S02): Table 'kavya.product' doesn't exist
mysql> select * from products join orders on product.order_id=orders.order_id;
ERROR 1054 (42S22): Unknown column 'product.order_id' in 'on clause'
mysql> select * from products join orders on products.order_id=orders.order_id;
+------------+--------------+----------+----------+------------+-------------+---------------+------------+
| product_id | product_name | order_id | order_id | order_name | customer_id | customer_name | order_date |
+------------+--------------+----------+----------+------------+-------------+---------------+------------+
| P01        | dresses      | A01      | A01      | dresses    |           1 | kavya         | 2024-09-29 |
| P02        | books        | A02      | A02      | books      |           2 | kavya         | 2023-02-21 |
| P03        | books        | A03      | A03      | books      |           3 | theertha      | 2024-02-09 |
| P04        | watch        | A04      | A04      | watch      |           4 | anusree       | 2023-08-16 |
| P05        | smartphone   | A05      | A05      | smartphone |           5 | kiran         | 2024-03-28 |
+------------+--------------+----------+----------+------------+-------------+---------------+------------+
5 rows in set (0.00 sec)

mysql>
