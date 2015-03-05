
create schema lab;

use lab;
drop table Building;
drop table Campus;

create table Campus(
CampusID integer(5) not null,
CampusName varchar(30) not null,
CampusAddress varchar(50),
Country varchar(20),
City varchar(20),
isOpen Bit not null,
primary key(CampusID)
);

create table Building(
BuildingId integer(5) not null primary key,
BuildingName varchar(30),
Address varchar(30)
);

alter table building 
add column CampusId integer(5);

alter table Building 
add constraint CampusIdContraints
  foreign key (CampusId)
  references Campus( CampusId)
  on delete set null
  on update cascade;

insert into Campus (CampusID ,CampusName ,CampusAddress ,Country,City ,isOpen) values (1,'UET Lahore','Lahore Pakistan','Pakistan','Lahore',1);
insert into Campus (CampusID ,CampusName ,CampusAddress ,Country,City ,isOpen) values (2,'UET KSK','Lahore Pakistan','Pakistan','KSK',1);
insert into Campus (CampusID ,CampusName ,CampusAddress ,Country,City ,isOpen) values (3,'UET Fsl','Lahore Pakistan','Pakistan','FSL',0);
insert into Campus (CampusID ,CampusName ,CampusAddress ,Country,City ,isOpen) values (4,'UET Sindh','Lahore Pakistan','Pakistan','Sindh',1);
insert into Campus (CampusID ,CampusName ,CampusAddress ,Country,City ,isOpen) values (5,'UET Balochistan','Lahore Pakistan','Pakistan','Bal',0);

select * from campus;

insert into building (BuildingId,BuildingName,Address,CampusId) values (1,'Electrical','Lahore Pakistan',1);
insert into building (BuildingId,BuildingName,Address,CampusId) values (2,'Mechanical','Lahore Pakistan',1);
insert into building (BuildingId,BuildingName,Address,CampusId) values (3,'Chemical','Lahore Pakistan',1);
insert into building (BuildingId,BuildingName,Address,CampusId) values (4,'Electrical','Lahore Pakistan',2);
insert into building (BuildingId,BuildingName,Address,CampusId) values (5,'Mech','Lahore Pakistan',3);
insert into building (BuildingId,BuildingName,Address,CampusId) values (6,'Chemical','Lahore Pakistan',4);
insert into building (BuildingId,BuildingName,Address,CampusId) values (7,'Polymer','Lahore Pakistan',5);
select * from building where CampusID = 1;

select * from building,campus;

select B.* from building as B, Campus as C where B.CampusID = C.CampusID and B.CampusID = 1;

alter table building 
drop foreign key CampusIdContraints;

alter table building 
change column CampusId myCampus integer(5);

alter table Building 
add constraint CampusIdContraints
  foreign key (myCampus)
  references Campus( CampusId)
  on delete set null
  on update cascade;

select * from campus;
delete from campus where CampusName='UET Sindh';
select * from campus;