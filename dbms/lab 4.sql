mysql: [Warning] C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe: ignoring option '--no-beep' due to invalid value ''.
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> cd rahul
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'cd rahul' at line 1
mysql> cd rahul;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'cd rahul' at line 1
mysql> use rahul
Database changed
mysql> show tables
    -> ;
+-----------------+
| Tables_in_rahul |
+-----------------+
| department      |
| employee        |
+-----------------+
2 rows in set (0.13 sec)

mysql> select * from department
    -> ;
+-----+-----------+-----------+
| DID | dname     | dlocation |
+-----+-----------+-----------+
| d1  | marketing | tvm       |
| d2  | finance   | clt       |
| d3  | hr        | kochi     |
| d4  | manager   | kannur    |
| d5  | sales     | kollam    |
+-----+-----------+-----------+
5 rows in set (0.07 sec)

mysql> select * from employee
    -> ;
+------+---------+---------------+-------------------+------------------+---------+
| ssn  | name    | department    | project_name      | project_location | salaray |
+------+---------+---------------+-------------------+------------------+---------+
| 1ps3 | rahul   | mca           | object dictection | kozhikod         |   10000 |
| 3ag5 | nibha   | mca           | ai                | kannur           |  800000 |
| 4rs8 | hadiya  | msc           | object dictection | kozhikod         |   35000 |
| 4wa1 | waffa   | physics       | ai                | kochi            |  200000 |
| a48m | amal    | finance       | computer vision   | malapuram        |   25000 |
| b00m | nazeem  | bsc chemistry | bomb              | kannur           |  200000 |
| l88m | lami    | hr            | gold              | vadakara         |   45000 |
| n00r | noori   | hr            | gold              | ponnani          |   30000 |
| n22u | nishath | bsc chemistry | bomb              | kannur           |   20000 |
| v88n | vishnu  | finance       | computer vision   | malapuram        |   80000 |
+------+---------+---------------+-------------------+------------------+---------+
10 rows in set (0.03 sec)

mysql> create table order (orderid int,coustomerid int,coustomername varchar(20),orderdate date);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order (orderid int,coustomerid int,coustomername varchar(20),orderdate date)' at line 1
mysql> create table orders (orderid int,coustomerid int,coustomername varchar(20),orderdate date);
Query OK, 0 rows affected (0.61 sec)

mysql> intert into orders value(123,321,'rahul',16/09/1998);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'intert into orders value(123,321,'rahul',16/09/1998)' at line 1
mysql> insert into orders value(123,321,'rahul',16/09/1998);
Query OK, 1 row affected (0.06 sec)

mysql> insert into orders value(1223,351,'amal',14/08/1999);
Query OK, 1 row affected (0.07 sec)

mysql> select*from orders;
+---------+-------------+---------------+------------+
| orderid | coustomerid | coustomername | orderdate  |
+---------+-------------+---------------+------------+
|     123 |         321 | rahul         | 0000-00-00 |
|    1223 |         351 | amal          | 0000-00-00 |
+---------+-------------+---------------+------------+
2 rows in set (0.00 sec)

mysql> insert into orders value(1223,351,'amal',16-12-1999);
ERROR 1292 (22007): Incorrect date value: '-1995' for column 'orderdate' at row 1
mysql> insert into orders value(673,451,'aswin',12-09-1999);
ERROR 1292 (22007): Incorrect date value: '-1996' for column 'orderdate' at row 1
mysql> insert into orders value(673,451,'aswin',1998-09-08);
ERROR 1292 (22007): Incorrect date value: '1981' for column 'orderdate' at row 1
mysql> insert into orders value(673,451,'aswin','1998-09-08');
Query OK, 1 row affected (0.08 sec)

mysql> select*from orders;
+---------+-------------+---------------+------------+
| orderid | coustomerid | coustomername | orderdate  |
+---------+-------------+---------------+------------+
|     123 |         321 | rahul         | 0000-00-00 |
|    1223 |         351 | amal          | 0000-00-00 |
|     673 |         451 | aswin         | 1998-09-08 |
+---------+-------------+---------------+------------+
3 rows in set (0.00 sec)

mysql> insert into orders value(934,876,'nibha','2023-09-10');
Query OK, 1 row affected (0.07 sec)

mysql> insert into orders value(9342,8768,'roushu','2022-09-10');
Query OK, 1 row affected (0.04 sec)

mysql> insert into orders value(92,68,'mirza','2022-11-12');
Query OK, 1 row affected (0.07 sec)

mysql> insert into orders value(929,689,'sana','2012-12-12');
Query OK, 1 row affected (0.04 sec)

mysql> select*from orders;
+---------+-------------+---------------+------------+
| orderid | coustomerid | coustomername | orderdate  |
+---------+-------------+---------------+------------+
|     123 |         321 | rahul         | 0000-00-00 |
|    1223 |         351 | amal          | 0000-00-00 |
|     673 |         451 | aswin         | 1998-09-08 |
|     934 |         876 | nibha         | 2023-09-10 |
|    9342 |        8768 | roushu        | 2022-09-10 |
|      92 |          68 | mirza         | 2022-11-12 |
|     929 |         689 | sana          | 2012-12-12 |
+---------+-------------+---------------+------------+
7 rows in set (0.00 sec)

mysql> update table orders set orderdate='2018-05-08' where orderid=123;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table orders set orderdate='2018-05-08' where orderid=123' at line 1
mysql> update orders set orderdate='2018-05-08' where orderid=123;
Query OK, 1 row affected (0.19 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update orders set orderdate='2020-05-18' where orderid=1223;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from orders;
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

mysql> create table product(pid int,pname varchar(20),orderid int);
Query OK, 0 rows affected (0.26 sec)

mysql> insert into product valued(567,'soap',123);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'valued(567,'soap',123)' at line 1
mysql> insert into product values(567,'soap',123);
Query OK, 1 row affected (0.05 sec)

mysql> insert into product values(533,'pen',1223);
Query OK, 1 row affected (0.10 sec)

mysql> insert into product values(453,'pencil',673);
Query OK, 1 row affected (0.08 sec)

mysql> insert into product values(9898,'book',934);
Query OK, 1 row affected (0.06 sec)

mysql> insert into product values(878,'mouse',9342);
Query OK, 1 row affected (0.12 sec)

mysql> select*from product
    -> ;
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

mysql> select product.pname,orders.orderid from product join orders on product.common_column = orders.common_column;
ERROR 1054 (42S22): Unknown column 'product.common_column' in 'on clause'
mysql> select product.pname,orders.orderid from product join orders on product.orderid = orders.orderid;
+--------+---------+
| pname  | orderid |
+--------+---------+
| soap   |     123 |
| pen    |    1223 |
| pencil |     673 |
| book   |     934 |
| mouse  |    9342 |
+--------+---------+
5 rows in set (0.01 sec)

mysql> select product.pname,orders.orderid from product left join orders on product.orderid = orders.orderid;
+--------+---------+
| pname  | orderid |
+--------+---------+
| soap   |     123 |
| pen    |    1223 |
| pencil |     673 |
| book   |     934 |
| mouse  |    9342 |
+--------+---------+
5 rows in set (0.01 sec)

mysql> select product.pname,orders.orderid from product right join orders on product.orderid = orders.orderid;
+--------+---------+
| pname  | orderid |
+--------+---------+
| soap   |     123 |
| pen    |    1223 |
| pencil |     673 |
| book   |     934 |
| mouse  |    9342 |
| NULL   |      92 |
| NULL   |     929 |
+--------+---------+
7 rows in set (0.00 sec)

mysql>
