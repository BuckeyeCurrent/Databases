CREATE DATABASE CANCorder;
GRANT ALL ON CANCorder.* TO 'cancorder'@'localhost';
USE CANCorder;
CREATE TABLE CANMessages (CAN_ID INT, CAN_Message_Name VARCHAR(256), Unit VARCHAR(16), OK_Start INT, OK_End INT, Warn_Start INT, Warn_End INT );
ALTER TABLE CANMessages ADD KEY (CAN_ID);
GRANT ALL ON CANCorder.CanMessages TO 'cancorder'@'localhost';
CREATE TABLE CANTime (Time INT, CAN_Message VARCHAR(16), Unit VARCHAR(16), Value FLOAT);
ALTER TABLE CANTime ADD KEY (CAN_Message);
