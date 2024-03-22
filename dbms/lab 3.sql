create table employe(ssn varchar(10),name varchar(25),department varchar(25),projectname varchar(10),projectlocation varchar(20));
 
    insert into employe values('a1','varun','hr','ai','calicut');
    insert into employe values('am1','arun','manger','e health','calicut');
    insert into employe values('am2','sara','manger','fitness','kochi');
    insert into employe values('bm2','saya','marketing','ai','kollam');
    insert into employe values('cm23','kavya','marketing','social','kollam');
    insert into employe values('cm24','aryan','marketing','social','kollam');
    insert into employe values('cf22','kavya','finance','cloud','ernakullam');
    insert into employe values('cf24','alan','marketing','social','kollam');
    insert into employe values('cf32','shan','finance','cloud','delhi');
    insert into employe values('ch24','alan','hr','developing','delhi');

 select * from employe;
      +------+-------+------------+-------------+-----------------+
      | ssn  | name  | department | projectname | projectlocation |
      +------+-------+------------+-------------+-----------------+
      | a1   | varun | hr         | ai          | calicut         |
      | am1  | arun  | manger     | e health    | calicut         |
      | am2  | sara  | manger     | fitness     | kochi           |
      | bm2  | saya  | marketing  | ai          | kollam          |
      | cm23 | kavya | marketing  | social      | kollam          |
      | cm24 | aryan | marketing  | social      | kollam          |
      | cf22 | kavya | finance    | cloud       | ernakullam      |
      | cf24 | alan  | marketing  | social      | kollam          |
      | cf32 | shan  | finance    | cloud       | delhi           |
      | ch24 | alan  | hr         | developing  | delhi           |
      +------+-------+------------+-------------+-----------------+

SELECT *FROM employe WHERE department = 'finance' AND projectlocation = 'Delhi';
      +------+------+------------+-------------+-----------------+
      | ssn  | name | department | projectname | projectlocation |
      +------+------+------------+-------------+-----------------+
      | cf32 | shan | finance    | cloud       | delhi           |
      +------+------+------------+-------------+-----------------+

SELECT *FROM employe WHERE department = 'hr' AND projectname = 'developing';
      +------+------+------------+-------------+-----------------+
      | ssn  | name | department | projectname | projectlocation |
      +------+------+------------+-------------+-----------------+
      | ch24 | alan | hr         | developing  | delhi           |
      +------+------+------------+-------------+-----------------+

SELECT *FROM employe order by name asc;
      +------+-------+------------+-------------+-----------------+
      | ssn  | name  | department | projectname | projectlocation |
      +------+-------+------------+-------------+-----------------+
      | cf24 | alan  | marketing  | social      | kollam          |
      | ch24 | alan  | hr         | developing  | delhi           |
      | am1  | arun  | manger     | e health    | calicut         |
      | cm24 | aryan | marketing  | social      | kollam          |
      | cm23 | kavya | marketing  | social      | kollam          |
      | cf22 | kavya | finance    | cloud       | ernakullam      |
      | am2  | sara  | manger     | fitness     | kochi           |
      | bm2  | saya  | marketing  | ai          | kollam          |
      | cf32 | shan  | finance    | cloud       | delhi           |
      | a1   | varun | hr         | ai          | calicut         |
      +------+-------+------------+-------------+-----------------+
      

 alter table employe add sallary float;
      update employe set sallary=10000 where ssn='cf24';
      update employe set sallary=3500 where ssn='ch24';
      update employe set sallary=4500 where ssn='am1';
      update employe set sallary=30000 where ssn='bm2';
      update employe set sallary=5500 where ssn='cm23';
      update employe set sallary=34660 where ssn='am2';
      update employe set sallary=50000 where ssn='cm24'; 
      update employe set sallary=40000 where ssn='cf22'; 
      update employe set sallary=5500 where ssn='cf24'; 
      update employe set sallary=65000 where ssn='cf32'; 
      update employe set sallary=35000 where ssn='ch24';


select * from employe;
    +------+-------+------------+-------------+-----------------+---------+
    | ssn  | name  | department | projectname | projectlocation | sallary |
    +------+-------+------------+-------------+-----------------+---------+
    | a1   | varun | hr         | ai          | calicut         |    3500 |
    | am1  | arun  | manger     | e health    | calicut         |    4500 |
    | am2  | sara  | manger     | fitness     | kochi           |   34660 |
    | bm2  | saya  | marketing  | ai          | kollam          |   40000 |
    | cm23 | kavya | marketing  | social      | kollam          |    5500 |
    | cm24 | aryan | marketing  | social      | kollam          |   50000 |
    | cf22 | kavya | finance    | cloud       | ernakullam      |   40000 |
    | cf24 | alan  | marketing  | social      | kollam          |    5500 |
    | cf32 | shan  | finance    | cloud       | delhi           |   65000 |
    | ch24 | alan  | hr         | developing  | delhi           |   35000 |
    +------+-------+------------+-------------+-----------------+---------+
    

 select * from employe;
    +------+-------+------------+-------------+-----------------+---------+
    | ssn  | name  | department | projectname | projectlocation | sallary |
    +------+-------+------------+-------------+-----------------+---------+
    | a1   | varun | hr         | ai          | calicut         |    3500 |
    | am1  | arun  | manger     | e health    | calicut         |    4500 |
    | am2  | sara  | manger     | fitness     | kochi           |   34660 |
    | bm2  | saya  | marketing  | ai          | kollam          |   40000 |
    | cm23 | kavya | marketing  | social      | kollam          |    5500 |
    | cm24 | aryan | marketing  | social      | kollam          |   50000 |
    | cf22 | kavya | finance    | cloud       | ernakullam      |   40000 |
    | cf24 | alan  | marketing  | social      | kollam          |    5500 |
    | cf32 | shan  | finance    | cloud       | delhi           |   65000 |
    | ch24 | alan  | hr         | developing  | delhi           |   35000 |
    +------+-------+------------+-------------+-----------------+---------+

  select sallary from employe where sallary between 10000 and 40000;
      +---------+
      | sallary |
      +---------+
      |   34660 |
      |   40000 |
      |   40000 |
      |   35000 |
      +---------+
      

 select name from employe where department in('hr','manager','finance');
      +-------+
      | name  |
      +-------+
      | varun |
      | kavya |
      | shan  |
      | alan  |
      +-------+


 select name from employe where department not in('hr','manager','finance');
      +-------+
      | name  |
      +-------+
      | arun  |
      | sara  |
      | saya  |
      | kavya |
      | aryan |
      | alan  |
      +-------+


 select count(department) from employe  group by department order by department;
    +-------------------+
    | count(department) |
    +-------------------+
    |                 2 |
    |                 2 |
    |                 2 |
    |                 4 |
    +-------------------+
4 rows in set (0.00 sec)



alter table employe add primary key(ssn);
desc employe;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| ssn             | varchar(10) | NO   | PRI | NULL    |       |
| name            | varchar(25) | YES  |     | NULL    |       |
| department      | varchar(25) | YES  |     | NULL    |       |
| projectname     | varchar(10) | YES  |     | NULL    |       |
| projectlocation | varchar(20) | YES  |     | NULL    |       |
| sallary         | float       | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+


alter table employe drop primary key;
desc employe;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| ssn             | varchar(10) | NO   |     | NULL    |       |
| name            | varchar(25) | YES  |     | NULL    |       |
| department      | varchar(25) | YES  |     | NULL    |       |
| projectname     | varchar(10) | YES  |     | NULL    |       |
| projectlocation | varchar(20) | YES  |     | NULL    |       |
| sallary         | float       | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
