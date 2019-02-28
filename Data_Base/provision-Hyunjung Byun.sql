/*Part1
Hyunjung Byun
Mysql
*/

use  classdb;
  
create table Guardians (
	Guardian_ID int(11)  primary key,
    Gyear date not null, 
    Address varchar(100) null,
    Phone int(10) null
);

create table Aliases (
	Given_Name varchar(100) not null ,
    Hagis_Name varchar(100) null,
    Place_Name varchar(100) not null,
    Connection_Date date not null,
    Connection_Serial int(11) default 1,
    Alias_ID int(11) not null,
    Is_Birth_Record boolean not null,
    Is_Death_Record boolean null,
    constraint Five_Name UNIQUE
    (
       Given_Name, Hagis_Name, Place_Name, Connection_Date, Connection_Serial
    )
    
    );


create table People(
	Person_ID int(11) primary key,
    Given_Name varchar(100) not null,
    Hagis1_Name varchar(100) not null,
    Hagis2_Name varchar(100) not null,
    Birthday  datetime  not null,
    Birthplace varchar(100) not null,
    Sex ENUM('M', 'F') not null,
     constraint No_Duplicate UNIQUE
    (
       Given_Name ,  Hagis1_Name, Hagis2_Name, Birthday , Birthplace
    )
   
);

create table Registrars(
	Registrar_ID int(11) not null,
    Place_Name varchar(100) not null,
    Start_Date date not null,
    End_Date date null,
    Given_Name varchar(100) not null,
    Address varchar(100) null,
    Phone int(10) null,
    constraint Composite_Key PRIMARY KEY (Place_Name, Start_Date)
);

create table Officials (
	Official_ID int(11) primary key,
    Title varchar(100) not null,
    Department_ID int(20) not null,
    Salary decimal(10,2) check(Salary > 4000),
    Term_Date date ,
    Termination_Type ENUM('black', 'non')
    );


create table Departments(
	Department_ID int(11) primary key,
    Department_Name varchar (100) not null,
    Department_Head_ID int(11) not null,
    Department_Head_Title varchar(100) not null,
    Department_Head_Term int(5) not null,
    Department_Parent varchar(100) null,
    Department_Phone int(10) not null,
    Department_Address varchar(100) not null
);


create table Alias_Person (
	Alias_Id int(11) primary key,
    Person_ID int(11),
    Hagis_ID1 int(11),
    Hagis_ID2 int(11) 
);

create table Official_Person (
	Official_ID int (11),
    Person_ID int(11)
);  

create table Guardian_Person (
	Guardian_ID int(11),
    Person_ID int(11)
);

create table Registrar_Person (
	Registrar_ID int (11),
    Person_ID int (11)
);

