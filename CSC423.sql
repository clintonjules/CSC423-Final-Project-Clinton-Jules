CREATE TABLE Client (
    cNum int NOT NULL PRIMARY KEY,
    fName varchar(255),
    lName varchar(255),
    address varchar(255),
    phoneNum varchar(20)
);

CREATE TABLE Employee (
    staffNum int NOT NULL PRIMARY KEY,
    fName varchar(255),
    lName varchar(255),
    salary varchar(15),
    address varchar(255),
    phoneNum varchar(20)
);

CREATE TABLE Equipment (
    eqId int NOT NULL PRIMARY KEY,
    description varchar(255),
    usage varchar(255),
    cost varchar(15)
);

CREATE TABLE Requirements (
    cNum int NOT NULL,
    eqId int NOT NULL,
    fDay varchar(10),
    lDay varchar(10),
    sTime varchar(10),
    eTime varchar(10),
    PRIMARY KEY (cNum)
);

ALTER TABLE Requirements
ADD FOREIGN KEY (cNum) REFERENCES Client(cNum);

ALTER TABLE Requirements
ADD FOREIGN KEY (eqId) REFERENCES Equipment(eqId);

INSERT ALL
INTO Client (cNum, fName, lName, address, phoneNum) VALUES (10000,'BurgerTown','Restaurant','123 South Rd','(432)555-4522')
INTO Client (cNum, fName, lName, address, phoneNum) VALUES (20000,'Capitalist','Bank','933 Wall St','(800)555-9999')
INTO Client (cNum, fName, lName, address, phoneNum) VALUES (30000,'Spongebob','Squarepants','31 Pineapple Bikini Bottom','(707)663-4279')
INTO Client (cNum, fName, lName, address, phoneNum) VALUES (40000,'Cozy Sheep','Hotel','778 Cloud Nine','(793)555-0001')
INTO Client (cNum, fName, lName, address, phoneNum) VALUES (50000,'Dory','Fish','P Sherman Wallaby Way','(867)555-2003')
SELECT * FROM dual;

INSERT ALL
INTO Employee (staffNum, fName, lName, salary, address, phoneNum) VALUES (11111,'John','Doe','$15/hr','679 Coral Way','(432)555-4522')
INTO Employee (staffNum, fName, lName, salary, address, phoneNum) VALUES (22222,'Jim','Don','$20/hr','543 Lime Ave','(432)555-4522')
INTO Employee (staffNum, fName, lName, salary, address, phoneNum) VALUES (33333,'Joe','Davis','$30/hr','306 Fire Ter','(432)555-4522')
INTO Employee (staffNum, fName, lName, salary, address, phoneNum) VALUES (44444,'Jake','Dillon','$17/hr','619 Mill St','(432)555-4522')
INTO Employee (staffNum, fName, lName, salary, address, phoneNum) VALUES (55555,'Josh','Dickinson','$25/hr','339 Triple Ln','(432)555-4522')
SELECT * FROM dual;

INSERT ALL
INTO Equipment (eqId, description, usage, cost) VALUES (00100,'Table Waxer','3 days','$20/hr')
INTO Equipment (eqId, description, usage, cost) VALUES (00200,'Money Cleaner','1 days','$10/hr')
INTO Equipment (eqId, description, usage, cost) VALUES (00300,'Grill Scraper','4 days','$5/hr')
INTO Equipment (eqId, description, usage, cost) VALUES (00400,'Carpet Cleaner','2 days','$30/hr')
INTO Equipment (eqId, description, usage, cost) VALUES (00500,'Tank Cleaner','1 day','$15/hr')
SELECT * FROM dual;

INSERT ALL
INTO Requirements (cNum, eqId, fDay, lDay, sTime, eTime) VALUES (10000,00100,'Monday','Friday','8 AM','11 AM')
INTO Requirements (cNum, eqId, fDay, lDay, sTime, eTime) VALUES (20000,00200,'Friday','Friday','9 AM','5 AM')
INTO Requirements (cNum, eqId, fDay, lDay, sTime, eTime) VALUES (30000,00300,'Monday','Friday','12 PM','8 PM')
INTO Requirements (cNum, eqId, fDay, lDay, sTime, eTime) VALUES (40000,00400,'Wednesday','Sunday','11 AM','1 PM')
INTO Requirements (cNum, eqId, fDay, lDay, sTime, eTime) VALUES (50000,00500,'Saturday','Sunday','3 PM','5 PM')
SELECT * FROM dual;