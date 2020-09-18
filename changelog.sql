--liquibase formatted sql
--changeset ashwani:01
create table test3 ( 
id int primary key,
name varchar(255)
);
--rollback drop table test3;
--changeset ashwani:2  
create  table  test1  (  
    id  int  primary  key,  
    name  varchar(255)  
);  
--rollback drop table test1;  

--changeset nvoxland:3  
insert  into  test1  (id,  name)  values  (1,  'Harika');  
insert  into  test1  (id,  name)  values  (2,  'Yashaswini');
--rollback DELETE FROM test1 WHERE id IN (1,2);
--changeset nvoxland:4  
insert  into  test1  (id,  name)  values  (3,  'Los Angeles');  
insert  into  test1  (id,  name)  values  (4,  'Cincinnati');
--rollback DELETE FROM test1 WHERE id IN (3,4);
--changeset harika:5  
insert  into  test3  (id,  name)  values  (1,  'India');  
insert  into  test3  (id,  name)  values  (2,  'Hyderabad');
--rollback DELETE FROM test3 WHERE id IN (1,2);
--changeset harika:6  
insert  into  test3  (id,  name)  values  (4,  'India');  
insert  into  test3  (id,  name)  values  (5,  'Bangalore');
--rollback DELETE FROM test3 WHERE id IN (4,5);
--changeset harika:7 
insert  into  test1  (id,  name)  values  (6,  'DevOps');  
insert  into  test1  (id,  name)  values  (7,  'Shubham');
--rollback DELETE FROM test1 WHERE id IN (6,7);
--changeset harika:8
ALTER TABLE table_name
  RENAME COLUMN name TO first_name;
