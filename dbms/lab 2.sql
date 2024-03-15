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

mysql> use rahul
ERROR 1049 (42000): Unknown database 'rahul'
mysql> use rahul;
ERROR 1049 (42000): Unknown database 'rahul'
mysql> ls
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ls' at line 1
mysql> ls;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ls' at line 1
mysql> use rahul
ERROR 1049 (42000): Unknown database 'rahul'
mysql> show database
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| exam               |
| information_schema |
| mysql              |
| nazeem             |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.14 sec)

mysql> create database rahul;
Query OK, 1 row affected (0.13 sec)

mysql> use rahul
Database changed
mysql> create table employee (ssn varchar(10),name varchar(30),department varchar(30),project_name varchar(30),project_location varchar(30));
Query OK, 0 rows affected (0.49 sec)

mysql> select*from employee;
Empty set (0.02 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> insert into employee values('1ps3','rahul','mca','object dictection','kozhikod');
Query OK, 1 row affected (0.05 sec)

mysql> select * from employee;
+------+-------+------------+-------------------+------------------+
| ssn  | name  | department | project_name      | project_location |
+------+-------+------------+-------------------+------------------+
| 1ps3 | rahul | mca        | object dictection | kozhikod         |
+------+-------+------------+-------------------+------------------+
1 row in set (0.00 sec)

mysql> insert into employee values('3ag5','nibha','mca','ai','kannur');
Query OK, 1 row affected (0.07 sec)

mysql> insert into employee values('4wa1','waffa','physics','ai','kochi');
Query OK, 1 row affected (0.06 sec)

mysql> select * from employee;
+------+-------+------------+-------------------+------------------+
| ssn  | name  | department | project_name      | project_location |
+------+-------+------------+-------------------+------------------+
| 1ps3 | rahul | mca        | object dictection | kozhikod         |
| 3ag5 | nibha | mca        | ai                | kannur           |
| 4wa1 | waffa | physics    | ai                | kochi            |
+------+-------+------------+-------------------+------------------+
3 rows in set (0.00 sec)

mysql> insert into employee values('4rs8','hadiya','msc','object dictection','kozhikod');
Query OK, 1 row affected (0.10 sec)

mysql> select * from employee;
+------+--------+------------+-------------------+------------------+
| ssn  | name   | department | project_name      | project_location |
+------+--------+------------+-------------------+------------------+
| 1ps3 | rahul  | mca        | object dictection | kozhikod         |
| 3ag5 | nibha  | mca        | ai                | kannur           |
| 4wa1 | waffa  | physics    | ai                | kochi            |
| 4rs8 | hadiya | msc        | object dictection | kozhikod         |
+------+--------+------------+-------------------+------------------+
4 rows in set (0.00 sec)

mysql> insert into employee values('b00m','nazeem','bsc chemistry','bomb','kannur');
Query OK, 1 row affected (0.07 sec)

mysql> insert into employee values('n22u','nishath','bsc chemistry','bomb','kannur');
Query OK, 1 row affected (0.10 sec)

mysql> insert into employee values('n00r','noori','hr','gold','ponnani');
Query OK, 1 row affected (0.05 sec)

mysql> insert into employee values('l88m','lami','hr','gold','vadakara');
Query OK, 1 row affected (0.08 sec)

mysql> select * from employee;
+------+---------+---------------+-------------------+------------------+
| ssn  | name    | department    | project_name      | project_location |
+------+---------+---------------+-------------------+------------------+
| 1ps3 | rahul   | mca           | object dictection | kozhikod         |
| 3ag5 | nibha   | mca           | ai                | kannur           |
| 4wa1 | waffa   | physics       | ai                | kochi            |
| 4rs8 | hadiya  | msc           | object dictection | kozhikod         |
| b00m | nazeem  | bsc chemistry | bomb              | kannur           |
| n22u | nishath | bsc chemistry | bomb              | kannur           |
| n00r | noori   | hr            | gold              | ponnani          |
| l88m | lami    | hr            | gold              | vadakara         |
+------+---------+---------------+-------------------+------------------+
8 rows in set (0.00 sec)

mysql> insert into employee values('v88n','vishnu','finance','computer vision','malapuram');
Query OK, 1 row affected (0.05 sec)

mysql> insert into employee values('a48m','amal','finance','computer vision','malapuram');
Query OK, 1 row affected (0.05 sec)

mysql> select * from employee;
+------+---------+---------------+-------------------+------------------+
| ssn  | name    | department    | project_name      | project_location |
+------+---------+---------------+-------------------+------------------+
| 1ps3 | rahul   | mca           | object dictection | kozhikod         |
| 3ag5 | nibha   | mca           | ai                | kannur           |
| 4wa1 | waffa   | physics       | ai                | kochi            |
| 4rs8 | hadiya  | msc           | object dictection | kozhikod         |
| b00m | nazeem  | bsc chemistry | bomb              | kannur           |
| n22u | nishath | bsc chemistry | bomb              | kannur           |
| n00r | noori   | hr            | gold              | ponnani          |
| l88m | lami    | hr            | gold              | vadakara         |
| v88n | vishnu  | finance       | computer vision   | malapuram        |
| a48m | amal    | finance       | computer vision   | malapuram        |
+------+---------+---------------+-------------------+------------------+
10 rows in set (0.00 sec)

mysql> select from employee department='finance';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from employee department='finance'' at line 1
mysql> select from employee department('finance');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from employee department('finance')' at line 1
mysql> select from employee department=finance;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from employee department=finance' at line 1
mysql> select * from employee department=finance;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '=finance' at line 1
mysql> select * from employee department='finance';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='finance'' at line 1
mysql> select * from employee department ='finance';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='finance'' at line 1
mysql> select * from employee department = 'finance';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '= 'finance'' at line 1
mysql> select * from employee where department = 'finance';
+------+--------+------------+-----------------+------------------+
| ssn  | name   | department | project_name    | project_location |
+------+--------+------------+-----------------+------------------+
| v88n | vishnu | finance    | computer vision | malapuram        |
| a48m | amal   | finance    | computer vision | malapuram        |
+------+--------+------------+-----------------+------------------+
2 rows in set (0.00 sec)

mysql> select * from employee where department = 'finance' and location='malapuram';
ERROR 1054 (42S22): Unknown column 'location' in 'where clause'
mysql> select * from employee where department = 'finance' and project_location='malapuram';
+------+--------+------------+-----------------+------------------+
| ssn  | name   | department | project_name    | project_location |
+------+--------+------------+-----------------+------------------+
| v88n | vishnu | finance    | computer vision | malapuram        |
| a48m | amal   | finance    | computer vision | malapuram        |
+------+--------+------------+-----------------+------------------+
2 rows in set (0.00 sec)

mysql> select * from employee where department = 'hr' and project_location='gold';
Empty set (0.00 sec)

mysql> select * from employee where department = 'hr' and project_name='gold';
+------+-------+------------+--------------+------------------+
| ssn  | name  | department | project_name | project_location |
+------+-------+------------+--------------+------------------+
| n00r | noori | hr         | gold         | ponnani          |
| l88m | lami  | hr         | gold         | vadakara         |
+------+-------+------------+--------------+------------------+
2 rows in set (0.00 sec)

mysql> select * from employee order by asending;
ERROR 1054 (42S22): Unknown column 'asending' in 'order clause'
mysql> select * from employee order by asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'asc' at line 1
mysql> select * from employee order by name asc;
+------+---------+---------------+-------------------+------------------+
| ssn  | name    | department    | project_name      | project_location |
+------+---------+---------------+-------------------+------------------+
| a48m | amal    | finance       | computer vision   | malapuram        |
| 4rs8 | hadiya  | msc           | object dictection | kozhikod         |
| l88m | lami    | hr            | gold              | vadakara         |
| b00m | nazeem  | bsc chemistry | bomb              | kannur           |
| 3ag5 | nibha   | mca           | ai                | kannur           |
| n22u | nishath | bsc chemistry | bomb              | kannur           |
| n00r | noori   | hr            | gold              | ponnani          |
| 1ps3 | rahul   | mca           | object dictection | kozhikod         |
| v88n | vishnu  | finance       | computer vision   | malapuram        |
| 4wa1 | waffa   | physics       | ai                | kochi            |
+------+---------+---------------+-------------------+------------------+
10 rows in set (0.01 sec)

mysql> select * from employee order by name desc;
+------+---------+---------------+-------------------+------------------+
| ssn  | name    | department    | project_name      | project_location |
+------+---------+---------------+-------------------+------------------+
| 4wa1 | waffa   | physics       | ai                | kochi            |
| v88n | vishnu  | finance       | computer vision   | malapuram        |
| 1ps3 | rahul   | mca           | object dictection | kozhikod         |
| n00r | noori   | hr            | gold              | ponnani          |
| n22u | nishath | bsc chemistry | bomb              | kannur           |
| 3ag5 | nibha   | mca           | ai                | kannur           |
| b00m | nazeem  | bsc chemistry | bomb              | kannur           |
| l88m | lami    | hr            | gold              | vadakara         |
| 4rs8 | hadiya  | msc           | object dictection | kozhikod         |
| a48m | amal    | finance       | computer vision   | malapuram        |
+------+---------+---------------+-------------------+------------------+
10 rows in set (0.00 sec)

mysql> update table employee add(salaray float);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table employee add(salaray float)' at line 1
mysql> update table employee add(salaray float(10));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table employee add(salaray float(10))' at line 1
mysql> update table employee add salaray float;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table employee add salaray float' at line 1
mysql> alter table employee add salaray float;
Query OK, 0 rows affected (0.41 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee order by name asc;
+------+---------+---------------+-------------------+------------------+---------+
| ssn  | name    | department    | project_name      | project_location | salaray |
+------+---------+---------------+-------------------+------------------+---------+
| a48m | amal    | finance       | computer vision   | malapuram        |    NULL |
| 4rs8 | hadiya  | msc           | object dictection | kozhikod         |    NULL |
| l88m | lami    | hr            | gold              | vadakara         |    NULL |
| b00m | nazeem  | bsc chemistry | bomb              | kannur           |    NULL |
| 3ag5 | nibha   | mca           | ai                | kannur           |    NULL |
| n22u | nishath | bsc chemistry | bomb              | kannur           |    NULL |
| n00r | noori   | hr            | gold              | ponnani          |    NULL |
| 1ps3 | rahul   | mca           | object dictection | kozhikod         |    NULL |
| v88n | vishnu  | finance       | computer vision   | malapuram        |    NULL |
| 4wa1 | waffa   | physics       | ai                | kochi            |    NULL |
+------+---------+---------------+-------------------+------------------+---------+
10 rows in set (0.00 sec)

mysql> update table employee set salary=25000 where ssn='a48m';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table employee set salary=25000 where ssn='a48m'' at line 1
mysql> update table employee set salaray=25000 where ssn='a48m';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table employee set salaray=25000 where ssn='a48m'' at line 1
mysql> update employee set salaray=25000 where ssn='a48m';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee set salaray=35000 where ssn='4rs8';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee set salaray=45000 where ssn='l88m';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update employee set salaray=800000 where ssn='3ag5';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0
