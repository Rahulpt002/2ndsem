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

mysql> use rahul;
Database changed
mysql> select * from student;
+------+--------+------+
| id   | name   | dob  |
+------+--------+------+
|    1 | rahul  | NULL |
|    2 | nibha  | NULL |
|    3 | sana   | NULL |
|    4 | mittu  | NULL |
|    5 | ashwin | NULL |
|    6 | hadiya | NULL |
|    7 | vishnu | NULL |
|    8 | amal   | NULL |
|    9 | nazeem | NULL |
|   10 | wafa   | NULL |
+------+--------+------+
10 rows in set (0.00 sec)

mysql> update student where name='rahul' dob=16/09/1998;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where name='rahul' dob=16/09/1998' at line 1
mysql> alter table student add department varchar(30);
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------+--------+------+------------+
| id   | name   | dob  | department |
+------+--------+------+------------+
|    1 | rahul  | NULL | NULL       |
|    2 | nibha  | NULL | NULL       |
|    3 | sana   | NULL | NULL       |
|    4 | mittu  | NULL | NULL       |
|    5 | ashwin | NULL | NULL       |
|    6 | hadiya | NULL | NULL       |
|    7 | vishnu | NULL | NULL       |
|    8 | amal   | NULL | NULL       |
|    9 | nazeem | NULL | NULL       |
|   10 | wafa   | NULL | NULL       |
+------+--------+------+------------+
10 rows in set (0.00 sec)

mysql> update student set dob=12/16/2024 , department='mca' where id=1;
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+------+--------+------------+------------+
| id   | name   | dob        | department |
+------+--------+------------+------------+
|    1 | rahul  | 0000-00-00 | mca        |
|    2 | nibha  | NULL       | NULL       |
|    3 | sana   | NULL       | NULL       |
|    4 | mittu  | NULL       | NULL       |
|    5 | ashwin | NULL       | NULL       |
|    6 | hadiya | NULL       | NULL       |
|    7 | vishnu | NULL       | NULL       |
|    8 | amal   | NULL       | NULL       |
|    9 | nazeem | NULL       | NULL       |
|   10 | wafa   | NULL       | NULL       |
+------+--------+------------+------------+
10 rows in set (0.00 sec)

mysql> drop colum dob;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'colum dob' at line 1
mysql> drop column dob;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'column dob' at line 1
mysql> drop from student column dob;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from student column dob' at line 1
mysql> drop from student column dob;\
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from student column dob' at line 1
mysql>
mysql> alter table student
    -> drop column dob;
Query OK, 0 rows affected (0.84 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------+--------+------------+
| id   | name   | department |
+------+--------+------------+
|    1 | rahul  | mca        |
|    2 | nibha  | NULL       |
|    3 | sana   | NULL       |
|    4 | mittu  | NULL       |
|    5 | ashwin | NULL       |
|    6 | hadiya | NULL       |
|    7 | vishnu | NULL       |
|    8 | amal   | NULL       |
|    9 | nazeem | NULL       |
|   10 | wafa   | NULL       |
+------+--------+------------+
10 rows in set (0.00 sec)

mysql> alter table student add age int;
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------+--------+------------+------+
| id   | name   | department | age  |
+------+--------+------------+------+
|    1 | rahul  | mca        | NULL |
|    2 | nibha  | NULL       | NULL |
|    3 | sana   | NULL       | NULL |
|    4 | mittu  | NULL       | NULL |
|    5 | ashwin | NULL       | NULL |
|    6 | hadiya | NULL       | NULL |
|    7 | vishnu | NULL       | NULL |
|    8 | amal   | NULL       | NULL |
|    9 | nazeem | NULL       | NULL |
|   10 | wafa   | NULL       | NULL |
+------+--------+------------+------+
10 rows in set (0.00 sec)

mysql> update student set age=25 where id=1;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set age=26,departement='eee' where id=2;
ERROR 1054 (42S22): Unknown column 'departement' in 'field list'
mysql> update student set age=26,department='eee' where id=2;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set age=11,department='ieee' where id=3;
Query OK, 1 row affected (0.16 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set age=22,department='mca' where id=4;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set age=20,department='mca' where id=5;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set age=19,department='eee' where id=6;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set age=14,department='ieee' where id=7;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set age=50,department='eee' where id=8;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+------+--------+------------+------+
| id   | name   | department | age  |
+------+--------+------------+------+
|    1 | rahul  | mca        |   25 |
|    2 | nibha  | eee        |   26 |
|    3 | sana   | ieee       |   11 |
|    4 | mittu  | mca        |   22 |
|    5 | ashwin | mca        |   20 |
|    6 | hadiya | eee        |   19 |
|    7 | vishnu | ieee       |   14 |
|    8 | amal   | eee        |   50 |
|    9 | nazeem | NULL       | NULL |
|   10 | wafa   | NULL       | NULL |
+------+--------+------------+------+
10 rows in set (0.00 sec)

mysql> select *from student where id=10;
+------+------+------------+------+
| id   | name | department | age  |
+------+------+------------+------+
|   10 | wafa | NULL       | NULL |
+------+------+------------+------+
1 row in set (0.02 sec)

mysql> update student set age=20,department='mca' where id=9;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set age=21department='mca' where id=10
    -> ;
ERROR 1054 (42S22): Unknown column '21department' in 'field list'
mysql> update student set age=21,department='mca' where id=10;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from student where id=10;
+------+------+------------+------+
| id   | name | department | age  |
+------+------+------------+------+
|   10 | wafa | mca        |   21 |
+------+------+------------+------+
1 row in set (0.00 sec)

mysql> select *from student where id=10,1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',1' at line 1
mysql> select *from student where id=<5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=<5' at line 1
mysql> select *from student where id<5;
+------+-------+------------+------+
| id   | name  | department | age  |
+------+-------+------------+------+
|    1 | rahul | mca        |   25 |
|    2 | nibha | eee        |   26 |
|    3 | sana  | ieee       |   11 |
|    4 | mittu | mca        |   22 |
+------+-------+------------+------+
4 rows in set (0.01 sec)

mysql> select *from student where id>5;
+------+--------+------------+------+
| id   | name   | department | age  |
+------+--------+------------+------+
|    6 | hadiya | eee        |   19 |
|    7 | vishnu | ieee       |   14 |
|    8 | amal   | eee        |   50 |
|    9 | nazeem | mca        |   20 |
|   10 | wafa   | mca        |   21 |
+------+--------+------------+------+
5 rows in set (0.00 sec)

mysql> select *from student where id>=5;
+------+--------+------------+------+
| id   | name   | department | age  |
+------+--------+------------+------+
|    5 | ashwin | mca        |   20 |
|    6 | hadiya | eee        |   19 |
|    7 | vishnu | ieee       |   14 |
|    8 | amal   | eee        |   50 |
|    9 | nazeem | mca        |   20 |
|   10 | wafa   | mca        |   21 |
+------+--------+------------+------+
6 rows in set (0.00 sec)

mysql> select *from student where id=5&6;
+------+-------+------------+------+
| id   | name  | department | age  |
+------+-------+------------+------+
|    4 | mittu | mca        |   22 |
+------+-------+------------+------+
1 row in set (0.01 sec)

mysql> select *from student where id=5 and 6;
+------+--------+------------+------+
| id   | name   | department | age  |
+------+--------+------------+------+
|    5 | ashwin | mca        |   20 |
+------+--------+------------+------+
1 row in set (0.00 sec)

mysql> select *from student where id=5 and id=6;
Empty set (0.00 sec)

mysql> select *from student where id=5 & id=6;
Empty set (0.00 sec)

mysql> select *from student where id=5 && id=6;
Empty set, 1 warning (0.00 sec)

mysql> select *from student where id between 7 and 10;
+------+--------+------------+------+
| id   | name   | department | age  |
+------+--------+------------+------+
|    7 | vishnu | ieee       |   14 |
|    8 | amal   | eee        |   50 |
|    9 | nazeem | mca        |   20 |
|   10 | wafa   | mca        |   21 |
+------+--------+------------+------+
4 rows in set (0.00 sec)

mysql> select *from student where id of 7 and 10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'of 7 and 10' at line 1
mysql> select *from student where id 7 and 10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '7 and 10' at line 1
mysql> select *from student where id=5 && id=6;
Empty set, 1 warning (0.00 sec)

mysql> select colum name form studentnt where column name like'n%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'form studentnt where column name like'n%'' at line 1
mysql> select column name form studentnt where column name like'n%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'column name form studentnt where column name like'n%'' at line 1
mysql> select name form studentnt where name like'n%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'studentnt where name like'n%'' at line 1
mysql> select name form student where name like'n%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student where name like'n%'' at line 1
mysql> select name form student where name like 'n%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student where name like 'n%'' at line 1
mysql> select name from student where name like 'n%';
+--------+
| name   |
+--------+
| nibha  |
| nazeem |
+--------+
2 rows in set (0.00 sec)

mysql> select name from student where name like '_r%';
Empty set (0.00 sec)

mysql> select name from student where name like '_a%';
+--------+
| name   |
+--------+
| rahul  |
| sana   |
| hadiya |
| nazeem |
| wafa   |
+--------+
5 rows in set (0.00 sec)

mysql> select *from student where id 7
    -> select *from student where id=7
    -> select *from student where id=9;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '7
select *from student where id=7
select *from student where id=9' at line 1
mysql> select *from student where id=9;
+------+--------+------------+------+
| id   | name   | department | age  |
+------+--------+------------+------+
|    9 | nazeem | mca        |   20 |
+------+--------+------------+------+
1 row in set (0.00 sec)

mysql> select *from student where id=9
    -> select *from student where id=10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select *from student where id=10' at line 2
mysql> select *from student where id in (10,7);
+------+--------+------------+------+
| id   | name   | department | age  |
+------+--------+------------+------+
|    7 | vishnu | ieee       |   14 |
|   10 | wafa   | mca        |   21 |
+------+--------+------------+------+
2 rows in set (0.00 sec)

mysql>
