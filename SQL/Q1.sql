/* ORACLE DATABASE */

a) For checking whether the the arrival date is before the departure date in an input record we can modify following in the create table command:


CREATE TABLE HotelStays
(roomNum INTEGER NOT NULL,
arrDate DATE NOT NULL,
depDate DATE NOT NULL,
guestName CHAR(30) NOT NULL,
PRIMARY KEY (roomNum, arrDate),
COSTRAINT datecheck CHECK (depDate >= arrDate));





b) For checking whether the arrival date in a new record is not before the departure date of a data already present in the table we can change the way we input the data in the Table HotelStays. Following is the SQL commands for it:


INSERT INTO HotelStays(roomNum, arrDate, depDate, guestName)
SELECT 123,TO_DATE('20160204', 'YYYYMMDD'),TO_DATE('20160208', 'YYYYMMDD'), 'B' FROM DUAL
WHERE NOT EXISTS (SELECT * FROM HotelStays
WHERE roomNum = '123' AND depDate > TO_DATE('20160204', 'YYYYMMDD'));

