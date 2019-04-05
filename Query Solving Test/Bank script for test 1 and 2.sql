drop table if exists account;
drop table if exists branch;
drop table if exists bankCustomer;
drop table if exists loan;
drop table if exists borrower;
drop table if exists depositor;
drop table if exists bankEmployee;

create table if not exists account (account_number char(5) not null primary key, branch_name varchar(10),balance double );
create table if not exists branch (branch_name varchar(10) not null primary key, branch_city varchar(10), assets double);
create table if not exists bankCustomer(customer_name varchar(20) not null primary key,customer_street varchar(20),customer_city varchar(10));
create table if not exists loan(loan_number varchar(5) not null primary key,branch_name varchar(10),amount double);
create table if not exists borrower(customer_name varchar(20) not null,loan_number varchar(5) not null,primary key(customer_name, loan_number));
create table if not exists depositor(customer_name varchar(20) not null,account_number char(5) not null,primary key(customer_name, account_number));
create table if not exists bankEmployee(employee_name varchar(20) not null,branch_name varchar(10) not null,salary double,primary key(employee_name,branch_name));

insert into account values('A-101', 'Downtown', 500);
insert into account values('A-102', 'Perryridge', 400);
insert into account values('A-201', 'Brighton', 900);
insert into account values('A-215', 'Mianus', 700);
insert into account values('A-217', 'Brighton', 750);
insert into account values('A-222', 'Redwood', 700);
insert into account values('A-305', 'Round Hill', 350);

insert into branch values('Brighton', 'Brooklyn', 7100000);
insert into branch values('Downtown', 'Brooklyn', 9000000);
insert into branch values('Mianus', 'Horseneck', 400000);
insert into branch values('North Town', 'Rye', 3700000);
insert into branch values('Perryridge', 'Horseneck', 1700000);
insert into branch values('Pownal', 'Bennington', 300000);
insert into branch values('Redwood', 'Palo Alto', 2100000);
insert into branch values('Round Hill', 'Horseneck', 8000000);

insert into bankCustomer values('Adams', 'Spring', 'Pittsfield');
insert into bankCustomer values('Brooks', 'Senator', 'Brooklyn');
insert into bankCustomer values('Curry', 'North', 'Rye');
insert into bankCustomer values('Glenn', 'Sand Hill', 'Woodside');
insert into bankCustomer values('Green', 'Walnut', 'Stamford');
insert into bankCustomer values('Hayes', 'Main', 'Harrison');
insert into bankCustomer values('Johnson', 'Alma', 'Palo Alto');
insert into bankCustomer values('Jones', 'Main', 'Harrison');
insert into bankCustomer values('Lindsay', 'Park', 'Pittsfield');
insert into bankCustomer values('Smith', 'North', 'Rye');
insert into bankCustomer values('Turner', 'Putnam', 'Stamford');
insert into bankCustomer values('Williams', 'Nassau', 'Princeton');

insert into depositor values('Hayes', 'A-102');
insert into depositor values('Johnson', 'A-102');
insert into depositor values('Johnson', 'A-201');
insert into depositor values('Jones', 'A-217');
insert into depositor values('Lindsay', 'A-222');
insert into depositor values('Smith', 'A-215');
insert into depositor values('Turner', 'A-305');

insert into loan values('L-11', 'Round Hill', 900);
insert into loan values('L-14', 'Downtown', 1500);
insert into loan values('L-15', 'Perryridge', 1500);
insert into loan values('L-16', 'Perryridge', 1300);
insert into loan values('L-17', 'Downtown', 1000);
insert into loan values('L-23', 'Redwood', 2000);
insert into loan values('l-93', 'Mianus', 500);

insert into borrower values('Adams', 'L-16');
insert into borrower values('Curry', 'L-93');
insert into borrower values('Hayes', 'L-15');
insert into borrower values('Jackson', 'L-14');
insert into borrower values('Jones', 'L-17');
insert into borrower values('Smith', 'L-11');
insert into borrower values('Smith', 'L-23');
insert into borrower values('Williams', 'L-17');

insert into bankEmployee values('Adams', 'Perryridge', 1500);
insert into bankEmployee values('Brown', 'Perryridge', 1300);
insert into bankEmployee values('Gopal', 'Perryridge', 5300);
insert into bankEmployee values('Johnson', 'Downtown', 1500);
insert into bankEmployee values('Loreena', 'Downtown', 1300);
insert into bankEmployee values('Peterson', 'Downtown', 2500);
insert into bankEmployee values('Rao', 'Austin', 1500);
insert into bankEmployee values('Sato', 'Austin', 1600);