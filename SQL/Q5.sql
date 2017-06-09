/* ORACLE DATABASE */

CREATE TABLE HOTEL
(CHEF CHAR(1),
DISH VARCHAR(50));

INSERT INTO HOTEL VALUES('A', 'Mint chocolate brownie');
INSERT INTO HOTEL VALUES('B', 'Upside down pineapple cake');
INSERT INTO HOTEL VALUES('B', 'Creme brulee');
INSERT INTO HOTEL VALUES('B', 'Mint chocolate brownie');
INSERT INTO HOTEL VALUES('C', 'Upside down pineapple cake');
INSERT INTO HOTEL VALUES('C', 'Creme brulee');
INSERT INTO HOTEL VALUES('D', 'Apple pie');
INSERT INTO HOTEL VALUES('D', 'Upside down pineapple cake');
INSERT INTO HOTEL VALUES('D', 'Creme brulee');
INSERT INTO HOTEL VALUES('E', 'Apple pie');
INSERT INTO HOTEL VALUES('E', 'Upside down pineapple cake');
INSERT INTO HOTEL VALUES('E', 'Creme brulee');
INSERT INTO HOTEL VALUES('E', 'Bananas Foster');

CREATE TABLE DISHES
(PDISH VARCHAR(50));

INSERT INTO DISHES VALUES('Apple pie');
INSERT INTO DISHES VALUES('Upside down pineapple cake');
INSERT INTO DISHES VALUES('Creme brulee');


SELECT CHEF FROM HOTEL 
WHERE DISH IN (SELECT PDISH FROM DISHES)
GROUP BY CHEF 
HAVING COUNT(*) = (SELECT COUNT(*) FROM DISHES);