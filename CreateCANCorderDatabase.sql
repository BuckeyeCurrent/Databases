 --Create a database named CANCorder

CREATE DATABASE CANCorder;

--grant permissions to the user need to confirm username and soure local host?

GRANT ALL ON CANCorder.* TO 'cancorder'@'localhost';

-- create table named

USE CANCorder;

CREATE TABLE CANMessages (CAN_ID INT, CAN_Message_Name VARCHAR(256), Unit VARCHAR(16), OK_Start INT, OK_End INT, Warn_Start INT, Warn_End INT );

--Add an index on CAN_ID
ALTER TABLE CANMessages ADD KEY (CAN_ID);

--give privileges to user on the table

GRANT ALL ON CANCorder.CanMessages TO 'cancorder'@'localhost';

--create table named CANTime

CREATE TABLE CANTime (Time INT, CAN_Message VARCHAR(16), Unit VARCHAR(16), Value FLOAT);

--Add an index on CAN_ID
ALTER TABLE CANTime ADD KEY (CAN_Message);
