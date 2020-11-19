create database mysql_docker;

use mysql_docker;

CREATE TABLE EMPLOYEE (
  ID int NOT NULL PRIMARY KEY,
  FIRST_NAME varchar(45) DEFAULT NULL,
  LAST_NAME varchar(45) DEFAULT NULL
);

insert into EMPLOYEE values(1, 'Michael','Jordon');
insert into EMPLOYEE values(2, 'Michael','Johnson');
insert into EMPLOYEE values(3, 'Michael','Slater');
insert into EMPLOYEE values(4, 'Michael','Phelps');
insert into EMPLOYEE values(5, 'Michael','Jackson');

commit;

select * from EMPLOYEE;