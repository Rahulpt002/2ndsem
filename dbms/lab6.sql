mysql> use rahul
Database changed
mysql> show tables;
+-----------------+
| Tables_in_rahul |
+-----------------+
| course          |
| department      |
| employee        |
| facuality       |
| orders          |
| product         |
+-----------------+
6 rows in set (2.21 sec)

mysql> select * from orders
    -> ;
+---------+-------------+---------------+------------+
| orderid | coustomerid | coustomername | orderdate  |
+---------+-------------+---------------+------------+
|      92 |          68 | mirza         | 2022-11-12 |
|     123 |         321 | rahul         | 2018-05-08 |
|     673 |         451 | aswin         | 1998-09-08 |
|     929 |         689 | sana          | 2012-12-12 |
|     934 |         876 | nibha         | 2023-09-10 |
|    1223 |         351 | amal          | 2020-05-18 |
|    9342 |        8768 | roushu        | 2022-09-10 |
+---------+-------------+---------------+------------+
7 rows in set (0.69 sec)

mysql> select * from product;
+------+--------+---------+
| pid  | pname  | orderid |
+------+--------+---------+
|  453 | pencil |     673 |
|  533 | pen    |    1223 |
|  567 | soap   |     123 |
|  878 | mouse  |    9342 |
| 9898 | book   |     934 |
+------+--------+---------+
5 rows in set (0.01 sec)

mysql> select * from product order by natural join order;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'natural join order' at line 1
mysql> select * from orders natural join product;
+---------+-------------+---------------+------------+------+--------+
| orderid | coustomerid | coustomername | orderdate  | pid  | pname  |
+---------+-------------+---------------+------------+------+--------+
|     673 |         451 | aswin         | 1998-09-08 |  453 | pencil |
|    1223 |         351 | amal          | 2020-05-18 |  533 | pen    |
|     123 |         321 | rahul         | 2018-05-08 |  567 | soap   |
|    9342 |        8768 | roushu        | 2022-09-10 |  878 | mouse  |
|     934 |         876 | nibha         | 2023-09-10 | 9898 | book   |
+---------+-------------+---------------+------------+------+--------+
5 rows in set (0.00 sec)

mysql> create view viewone as select pid,pname from product;
Query OK, 0 rows affected (0.10 sec)

mysql> select
    -> * from viewone;
+------+--------+
| pid  | pname  |
+------+--------+
|  453 | pencil |
|  533 | pen    |
|  567 | soap   |
|  878 | mouse  |
| 9898 | book   |
+------+--------+
5 rows in set (0.00 sec)

mysql>
