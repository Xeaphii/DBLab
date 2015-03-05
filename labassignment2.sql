use  lab;
create table Gym(gymName varchar(50) not null primary key,
owner varchar(50) not null,
street varchar(5) not null
);

create table Frequents(cusotmerName varchar(50) not null,
gymName varchar(50) not null,
primary key(cusotmerName));

create table Customer (customerName varchar(50) not null,
street varchar(50) not null,
age integer(5) not null,
primary key(customerName));




select gymName from Frequents where cusotmerName = 'USMAN';

select customer.* from gym,Frequents freq,Customer c where
freq.gymName = Gym.gymName and 
Gym.street = Customer.street and 
c.customerName=Frequents.customerName;