create database MYSQLDEV;

use MYSQLDEV;

create table ADDRESS(
	ADDRESS_ID INT,
	ADDRESS_LINE1 VARCHAR(100),
	ADDRESS_LINE2 VARCHAR(100),
	CITY VARCHAR(100),
	STATE_CD VARCHAR(2));
                     
 ALTER table ADDRESS ADD CONSTRAINT ADDRESS_ID_PRY PRIMARY KEY(ADDRESS_ID);                    

create table ORDERS(
	ORDER_ID INT,
    PRODUCT_CODE VARCHAR(100), 
    PRODUCT_DESCRIPTION VARCHAR(100), 
    TRANSACTION_DATE DATE);

ALTER table ORDERS ADD CONSTRAINT ORDER_ID_PRY PRIMARY KEY(ORDER_ID);

create table CUSTOMER(
	CUSTOMER_ID INT,
	FIRST_NAME VARCHAR(100),
	LAST_NAME VARCHAR(100),
    EMAIL VARCHAR(100),
    PHONE VARCHAR(100),
    DATE_PURCHASED DATE,
    ADDRESS_ID INT,
    ORDER_ID INT);
    
ALTER table CUSTOMER ADD CONSTRAINT CUSTOMER_ID_PRY PRIMARY KEY(CUSTOMER_ID);                    

ALTER table CUSTOMER ADD CONSTRAINT ADDRESS_ID_FOREGIN FOREIGN KEY ADDRESS_ID_FOR(ADDRESS_ID) REFERENCES ADDRESS(ADDRESS_ID);

ALTER table CUSTOMER ADD CONSTRAINT ORDER_ID_FOREGIN FOREIGN KEY ORDER_ID_FOR(ORDER_ID) REFERENCES ORDERS(ORDER_ID);

ALTER table CUSTOMER ADD CONSTRAINT EMAIL_UNI UNIQUE (EMAIL);