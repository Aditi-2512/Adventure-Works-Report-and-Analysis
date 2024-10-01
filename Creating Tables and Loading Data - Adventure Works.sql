--- Creating all the necessary tables
CREATE TABLE Product(
product_key INT,
product_sub_key INT,
SKU VARCHAR(20),
name VARCHAR(255),
model VARCHAR(255),
description TEXT,
colour VARCHAR(65),
size VARCHAR,
style VARCHAR,
cost DECIMAL(10,5),
price DECIMAL(10,5)
);

COPY Product FROM 'C:\Users\Aditi 732\Downloads\AdventureWorks+Raw+Data\AdventureWorks Raw Data\AdventureWorks Product Lookup.csv'
DELIMITER ','
CSV Header;

SELECT * FROM Product;

--- Categories Table
CREATE TABLE Categories(
category_key INT,
category_name VARCHAR(65)
);

COPY Categories FROM 'C:\Users\Aditi 732\Downloads\AdventureWorks+Raw+Data\AdventureWorks Raw Data\AdventureWorks Product Categories Lookup.csv'
DELIMITER ','
CSV Header;

SELECT * FROM Categories

--- Sub_Categories Table
CREATE TABLE Sub_Categories(
category_key INT,
sub_category_name VARCHAR(65),
sub_category_key INT
);

COPY Sub_Categories FROM 'C:\Users\Aditi 732\Downloads\AdventureWorks Raw Data\AdventureWorks Product Subcategories Lookup.csv'
DELIMITER ','
CSV Header;

SELECT * FROM Sub_Categories

-- Returns Table
CREATE TABLE Returns(
return_date DATE,
territory_key INT,
product_key INT,
quantity INT
);

COPY Returns FROM 'C:\Users\Aditi 732\Downloads\AdventureWorks Raw Data\AdventureWorks Returns Data.csv'
DELIMITER ','
CSV Header;

SELECT * FROM Returns;

-- Customers
CREATE TABLE Customers(
	customer_key VARCHAR PRIMARY KEY,
	prefix VARCHAR(65),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	birth_date DATE,
	marital_status VARCHAR(20),
	gender VARCHAR(20),
	email VARCHAR(255),
	annual_income BIGINT,
	children INT,
	education VARCHAR(255),
	occupation VARCHAR(255),
	home_owner CHAR(1)
);

DROP TABLE Customers;

COPY Customers FROM 'C:\Users\Aditi 732\Downloads\AdventureWorks Raw Data\AdventureWorks Customer Lookup 1.txt'
DELIMITER ','
CSV Header ;

SELECT * FROM Customers;

-- Territory
CREATE TABLE Territory(
territory_key VARCHAR PRIMARY KEY NOT NULL,
region VARCHAR(65),
country VARCHAR(65),
continent VARCHAR(65)
);

COPY Territory FROM 'C:\Users\Aditi 732\Downloads\AdventureWorks Raw Data\AdventureWorks Territory Lookup.csv'
DELIMITER ','
CSV Header;

SELECT * FROM Territory;

-- Sales Data for 2020
CREATE TABLE Sales_2020(
order_date DATE, 
stock_date DATE,
order_num VARCHAR(65),
product_key INT,
customer_key INT,
territory_key INT,
orderline_item INT,
quantity INT
);

COPY Sales_2020 FROM 'C:\Users\Aditi 732\Downloads\AdventureWorks Raw Data\AdventureWorks Sales Data 2020.csv'
DELIMITER ','
CSV Header;

SELECT * FROM Sales_2020

-- Sales Data for 2021
CREATE TABLE Sales_2021(
order_date DATE, 
stock_date DATE,
order_num VARCHAR(65),
product_key INT,
customer_key INT,
territory_key INT,
orderline_item INT,
quantity INT
);

COPY Sales_2021 FROM 'C:\Users\Aditi 732\Downloads\AdventureWorks Raw Data\AdventureWorks Sales Data 2021.csv'
DELIMITER ','
CSV Header;

SELECT * FROM Sales_2021

--- Sales Data for 2022
CREATE TABLE Sales_2022(
order_date DATE, 
stock_date DATE,
order_num VARCHAR(65),
product_key INT,
customer_key INT,
territory_key INT,
orderline_item INT,
quantity INT
);

COPY Sales_2022 FROM 'C:\Users\Aditi 732\Downloads\AdventureWorks Raw Data\AdventureWorks Sales Data 2022.csv'
DELIMITER ','
CSV Header;

SELECT * FROM Sales_2022;

