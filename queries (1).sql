
-- create
CREATE DATABASE IF NOT EXISTS sales;
USE sales;

CREATE TABLE IF NOT EXISTS SalesPeople (
Snum int unsigned not null,
Sname varchar(25) not null default '',
City varchar(25) not null default '',
Comm int unsigned not null,
PRIMARY KEY (Snum)
);

CREATE TABLE IF NOT EXISTS Customers (
Cnum int unsigned not null,
Cname varchar(25) not null default '',
City varchar(25) not null default '',
Snum int unsigned not null,
PRIMARY KEY (Cnum),
FOREIGN KEY (Snum) REFERENCES SalesPeople(Snum)
);

CREATE TABLE IF NOT EXISTS Orders (
Onum int unsigned not null,
Amt decimal(7,2),
Odate date not null default '0000-00-00',
Cnum int unsigned not null,
Snum int unsigned not null,
PRIMARY KEY (Onum),
FOREIGN KEY (Cnum) REFERENCES Customers(Cnum),
FOREIGN KEY (Snum) REFERENCES SalesPeople(Snum)
);

INSERT INTO SalesPeople VALUES (1001, 'Peel', 'London', 12),
(1002, 'Serres', 'Sanjose', 13),
(1004, 'Motika', 'London', 11),
(1007, 'Rifkin', 'Barcelona', 15),
(1003, 'Axelrod', 'Newyork', 10);

INSERT INTO Customers VALUES (2001, 'Hoffman', 'London', 1001),
(2002, 'Giovanni', 'Rome', 1003),
(2003, 'Liu', 'Sanjose', 1002),
(2004, 'Grass', 'Berlin', 1002),
(2006, 'Clemens', 'London', 1001),
(2008, 'Cisneros', 'Sanjose', 1007),
(2007, 'Pereira', 'Rome', 1004);

