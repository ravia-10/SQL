CREATE DATABASE Shoping;

use Shoping;

CREATE TABLE Customers_Details(
Customer_Id INT NOT NULL, -- it doesnt take null value;
Customer_Name TEXT NOT NUll, 
Customer_Email VARCHAR(15),
Customer_PhoneNO INT,
Customer_Address TEXT,
PRIMARY KEY(Customer_Id) 
);

SELECT * FROM Shoping.Customers_Details;

DESCRIBE Shoping.Customers_Details;
ALTER TABLE Shoping.Customers_Details MODIFY Customer_PhoneNO LONGTEXT;

INSERT INTO Shoping.Customers_Details VALUES(2,"Abhishek","abhi@gmail.com",7866558048,"Bangalore"),(3,"Prajwal","prajju@gmail.com",9880976464,"Nittur"),(4,"VinayKumar","vinaykumar12@gmail.com",8861216111,"Banglore"),(5,"Punith","punith@gmail.com", 8799009865,"Tiptur"),(6,"Nirajan","nikki@gmail.com",9729636824,"Hodlur"),(7,"kruthika","kruthi@gmail.com",9901785098,"Tumkur"),(8,"Hemalatha","hema@gmail.com",7768990853,"chikkanayakahalli"),(9,"shanmuk","shannu@gmail.com",9783684628,"chikkanayakahalli"),(10,"Raksha","raksha@gmail.com",8293733729,"urkere");

ALTER TABLE Shoping.Customers_Details MODIFY Customer_Email VARCHAR(30);

CREATE TABLE Orders(
Order_Id INT NOT NULL,
Product_name TEXT NOT NULL,
Order_amount DECIMAL CHECK (order_amount>100),
Order_datetime DATETIME ,
Customer_ref INT,
PRIMARY KEY(Order_Id) ,
FOREIGN KEY (Customer_ref) REFERENCES customers_details(Customer_ID)
);


SELECT * FROM Shoping.Orders;

DESCRIBE Shoping.Orders;

INSERT INTO Shoping.Orders VALUES(100,"Shoe",600,'2021-11-17 10:00:00',1);

INSERT INTO Shoping.Orders VALUES(101,"T-shirt",800,'2021-11-15 4:48:00',2),(103,"bat",1200,'2021-10-17 08:00:00',3),(104,"bag",700,'2021-09-23 9:30:40',4),(105,"mi headset",2000,'2021-11-10 06:40:00',5),(106,"watch",3000,'2021-11-09 11:23:33',6),(112,"pen",120,'2021-11-08 06:40:33',7),(108,"laptop",60000,'2021-11-17 10:00:00',8),(109,"mobile charger",900,'2021-11-13 12:00:00',9),(110,"Shoe",600,'2021-11-17 18:00:00',10),(111,"laptop",62300,'2021-11-06 12:03:03',1);

INSERT INTO Shoping.Orders(Order_Id,Product_name,Order_amount,Order_datetime) VALUES(113,"T-shirt",800,'2021-11-15 4:48:00') , (114,"tennis ball",450,'2021-11-13 4:48:00');

-- Join it is combining two or more table
-- inner join -- it will get only matching data from both table bases on given conditon
-- ON Clause can be used to join columns that have different names. We use ON clause to specify a join condition. 

SELECT O.Order_Id , O.Product_name ,O.Order_amount, C.Customer_Id ,C.Customer_Name,C.Customer_PhoneNO
FROM  Orders O 
INNER JOIN Customers_Details C 
ON C.Customer_Id =O.Customer_ref;

-- LEFT join it will get all data from left table and only matching from data from right table
SELECT O.Order_Id , O.Product_name ,O.Order_amount, C.Customer_Id ,C.Customer_Name,C.Customer_PhoneNO
FROM   Orders O  
LEFT JOIN Customers_Details C
ON C.Customer_Id =O.Customer_ref;

-- RIGHT join it will get all data from Right table and only matching from data from left table
SELECT O.Order_Id , O.Product_name ,O.Order_amount, C.Customer_Id ,C.Customer_Name,C.Customer_PhoneNO
FROM   Orders O  
RIGHT JOIN Customers_Details C
ON C.Customer_Id =O.Customer_ref;










