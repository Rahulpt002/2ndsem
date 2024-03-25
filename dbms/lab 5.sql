mysql: [Warning] C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe: ignoring option '--no-beep' due to invalid value ''.
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
mysql>
mysql>
mysql>
mysql>
mysql> use rahul
Database changed
mysql> select * from orders;
+---------+-------------+---------------+------------+
| orderid | coustomerid | coustomername | orderdate  |
+---------+-------------+---------------+------------+
|     123 |         321 | rahul         | 2018-05-08 |
|    1223 |         351 | amal          | 2020-05-18 |
|     673 |         451 | aswin         | 1998-09-08 |
|     934 |         876 | nibha         | 2023-09-10 |
|    9342 |        8768 | roushu        | 2022-09-10 |
|      92 |          68 | mirza         | 2022-11-12 |
|     929 |         689 | sana          | 2012-12-12 |
+---------+-------------+---------------+------------+
7 rows in set (0.00 sec)

mysql> alter table orders set primary key=orderid;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'set primary key=orderid' at line 1
mysql> alter table orders add primary key(orderid);
Query OK, 0 rows affected (2.90 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from product;
+------+--------+---------+
| pid  | pname  | orderid |
+------+--------+---------+
|  567 | soap   |     123 |
|  533 | pen    |    1223 |
|  453 | pencil |     673 |
| 9898 | book   |     934 |
|  878 | mouse  |    9342 |
+------+--------+---------+
5 rows in set (0.00 sec)

mysql> alter table product add primary key(pid);
Query OK, 0 rows affected (1.25 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Orders
    -> ;
Query OK, 0 rows affected (0.02 sec)

mysql> ALTER TABLE Orders
    -> ;
Query OK, 0 rows affected (0.02 sec)

mysql> ALTER TABLE Orders
    -> ADD FOREIGN KEY (pid) REFERENCES product(pid);
ERROR 1072 (42000): Key column 'pid' doesn't exist in table
mysql> alter table orders ADD FOREIGN KEY (pid) REFERENCES product(pid);
ERROR 1072 (42000): Key column 'pid' doesn't exist in table
mysql> alter table orders ADD FOREIGN KEY (orderid) REFERENCES orders(orderid);
ERROR 1822 (HY000): Failed to add the foreign key constraint. Missing index for constraint 'orders_ibfk_1' in the referenced table 'orders'
mysql> alter table product ADD FOREIGN KEY (orderid) REFERENCES orders(orderid);
Query OK, 5 rows affected (4.51 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc product;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| pid     | int         | NO   | PRI | NULL    |       |
| pname   | varchar(20) | YES  |     | NULL    |       |
| orderid | int         | YES  | MUL | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.11 sec)

mysql> desc orders;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| orderid       | int         | NO   | PRI | NULL    |       |
| coustomerid   | int         | YES  |     | NULL    |       |
| coustomername | varchar(20) | YES  |     | NULL    |       |
| orderdate     | date        | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

mysql> SELECT *
    -> FROM product
    -> INNER JOIN orders
    -> ON product.orderid = orders.orderid;
+------+--------+---------+---------+-------------+---------------+------------+
| pid  | pname  | orderid | orderid | coustomerid | coustomername | orderdate  |
+------+--------+---------+---------+-------------+---------------+------------+
|  567 | soap   |     123 |     123 |         321 | rahul         | 2018-05-08 |
|  453 | pencil |     673 |     673 |         451 | aswin         | 1998-09-08 |
| 9898 | book   |     934 |     934 |         876 | nibha         | 2023-09-10 |
|  533 | pen    |    1223 |    1223 |         351 | amal          | 2020-05-18 |
|  878 | mouse  |    9342 |    9342 |        8768 | roushu        | 2022-09-10 |
+------+--------+---------+---------+-------------+---------------+------------+
5 rows in set (0.02 sec)

mysql> SELECT *
    -> FROM product
    -> INNER JOIN orders
    -> ON product.orderid = orders.orderid;
+------+--------+---------+---------+-------------+---------------+------------+
| pid  | pname  | orderid | orderid | coustomerid | coustomername | orderdate  |
+------+--------+---------+---------+-------------+---------------+------------+
|  567 | soap   |     123 |     123 |         321 | rahul         | 2018-05-08 |
|  453 | pencil |     673 |     673 |         451 | aswin         | 1998-09-08 |
| 9898 | book   |     934 |     934 |         876 | nibha         | 2023-09-10 |
|  533 | pen    |    1223 |    1223 |         351 | amal          | 2020-05-18 |
|  878 | mouse  |    9342 |    9342 |        8768 | roushu        | 2022-09-10 |
+------+--------+---------+---------+-------------+---------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT *FROM product INNER JOIN orders ON product.orderid = orders.orderid;
+------+--------+---------+---------+-------------+---------------+------------+
| pid  | pname  | orderid | orderid | coustomerid | coustomername | orderdate  |
+------+--------+---------+---------+-------------+---------------+------------+
|  567 | soap   |     123 |     123 |         321 | rahul         | 2018-05-08 |
|  453 | pencil |     673 |     673 |         451 | aswin         | 1998-09-08 |
| 9898 | book   |     934 |     934 |         876 | nibha         | 2023-09-10 |
|  533 | pen    |    1223 |    1223 |         351 | amal          | 2020-05-18 |
|  878 | mouse  |    9342 |    9342 |        8768 | roushu        | 2022-09-10 |
+------+--------+---------+---------+-------------+---------------+------------+
5 rows in set (0.00 sec)

mysql> create table course(staffid int,cusno int,cusname varchar(25),primary key(staffid));
Query OK, 0 rows affected (0.46 sec)

mysql> CREATE TABLE facuality (fno INT PRIMARY KEY,fname VARCHAR(25),staffid INT,FOREIGN KEY (staffid) REFERENCES course(staffid));
Query OK, 0 rows affected (0.34 sec)
