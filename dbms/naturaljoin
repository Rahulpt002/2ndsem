mysql: [Warning] C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe: ignoring option '--no-beep' due to invalid value ''.
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.36 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use kavya;
Database changed
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

mysql> desc products;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_id   | varchar(20) | NO   | PRI | NULL    |       |
| product_name | varchar(20) | YES  |     | NULL    |       |
| order_id     | varchar(10) | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc oreders;
ERROR 1146 (42S02): Table 'kavya.oreders' doesn't exist
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

mysql> select * from orders natural join products;
+----------+------------+-------------+---------------+------------+------------+--------------+
| order_id | order_name | customer_id | customer_name | order_date | product_id | product_name |
+----------+------------+-------------+---------------+------------+------------+--------------+
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P01        | dresses      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P02        | books        |
| A03      | books      |           3 | theertha      | 2024-02-09 | P03        | books        |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P04        | watch        |
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P05        | smartphone   |
+----------+------------+-------------+---------------+------------+------------+--------------+
5 rows in set (0.00 sec)

mysql> select * from orders erqi join products;
+----------+------------+-------------+---------------+------------+------------+--------------+----------+
| order_id | order_name | customer_id | customer_name | order_date | product_id | product_name | order_id |
+----------+------------+-------------+---------------+------------+------------+--------------+----------+
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P01        | dresses      | A01      |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P01        | dresses      | A01      |
| A03      | books      |           3 | theertha      | 2024-02-09 | P01        | dresses      | A01      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P01        | dresses      | A01      |
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P01        | dresses      | A01      |
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P02        | books        | A02      |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P02        | books        | A02      |
| A03      | books      |           3 | theertha      | 2024-02-09 | P02        | books        | A02      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P02        | books        | A02      |
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P02        | books        | A02      |
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P03        | books        | A03      |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P03        | books        | A03      |
| A03      | books      |           3 | theertha      | 2024-02-09 | P03        | books        | A03      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P03        | books        | A03      |
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P03        | books        | A03      |
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P04        | watch        | A04      |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P04        | watch        | A04      |
| A03      | books      |           3 | theertha      | 2024-02-09 | P04        | watch        | A04      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P04        | watch        | A04      |
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P04        | watch        | A04      |
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P05        | smartphone   | A05      |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P05        | smartphone   | A05      |
| A03      | books      |           3 | theertha      | 2024-02-09 | P05        | smartphone   | A05      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P05        | smartphone   | A05      |
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P05        | smartphone   | A05      |
+----------+------------+-------------+---------------+------------+------------+--------------+----------+
25 rows in set (0.00 sec)

mysql> select * from orders equi join products;
+----------+------------+-------------+---------------+------------+------------+--------------+----------+
| order_id | order_name | customer_id | customer_name | order_date | product_id | product_name | order_id |
+----------+------------+-------------+---------------+------------+------------+--------------+----------+
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P01        | dresses      | A01      |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P01        | dresses      | A01      |
| A03      | books      |           3 | theertha      | 2024-02-09 | P01        | dresses      | A01      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P01        | dresses      | A01      |
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P01        | dresses      | A01      |
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P02        | books        | A02      |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P02        | books        | A02      |
| A03      | books      |           3 | theertha      | 2024-02-09 | P02        | books        | A02      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P02        | books        | A02      |
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P02        | books        | A02      |
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P03        | books        | A03      |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P03        | books        | A03      |
| A03      | books      |           3 | theertha      | 2024-02-09 | P03        | books        | A03      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P03        | books        | A03      |
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P03        | books        | A03      |
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P04        | watch        | A04      |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P04        | watch        | A04      |
| A03      | books      |           3 | theertha      | 2024-02-09 | P04        | watch        | A04      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P04        | watch        | A04      |
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P04        | watch        | A04      |
| A05      | smartphone |           5 | kiran         | 2024-03-28 | P05        | smartphone   | A05      |
| A04      | watch      |           4 | anusree       | 2023-08-16 | P05        | smartphone   | A05      |
| A03      | books      |           3 | theertha      | 2024-02-09 | P05        | smartphone   | A05      |
| A02      | books      |           2 | kavya         | 2023-02-21 | P05        | smartphone   | A05      |
| A01      | dresses    |           1 | kavya         | 2024-09-29 | P05        | smartphone   | A05      |
+----------+------------+-------------+---------------+------------+------------+--------------+----------+
25 rows in set (0.00 sec)


mysql> exit:
    -> exit;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'exit:
exit' at line 1
mysql>
