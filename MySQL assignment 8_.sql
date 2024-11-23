CREATE DATABASE Product;
USE Product;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Email VARCHAR(100),
    Phone_no VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    Zip_code VARCHAR(10),
    Country VARCHAR(100)
);

INSERT INTO Customer (Customer_Id, First_name, Last_name, Email, Phone_no, Address, City, State, Zip_code, Country)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm St', 'New York', 'New York', '10001', 'United States'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak St', 'Los Angeles', 'California', '90001', 'United States'),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '456-789-1234', '789 Pine St', 'Chicago', 'Illinois', '60601', 'United States'),
    (4, 'Emily', 'Davis', 'emily.davis@example.com', '321-654-9870', '101 Maple St', 'Houston', 'Texas', '77001', 'United States'),
    (5, 'Chris', 'Brown', 'chris.brown@example.com', '654-321-7890', '202 Cedar St', 'Phoenix', 'Arizona', '85001', 'United States'),
    (6, 'Sarah', 'Wilson', 'sarah.wilson@example.com', '789-123-4567', '303 Birch St', 'San Francisco', 'California', '94101', 'United States'),
    (7, 'David', 'Martinez', 'david.martinez@example.com', '123-987-6543', '404 Aspen St', 'Miami', 'Florida', '33101', 'United States'),
    (8, 'Sophia', 'Garcia', 'sophia.garcia@example.com', '456-321-9876', '505 Spruce St', 'Dallas', 'Texas', '75201', 'United States'),
    (9, 'James', 'Taylor', 'james.taylor@example.com', '789-456-1230', '606 Redwood St', 'Atlanta', 'Georgia', '30301', 'United States'),
    (10, 'Olivia', 'Moore', 'olivia.moore@example.com', '321-987-6540', '707 Walnut St', 'Seattle', 'Washington', '98101', 'United States');
    
CREATE VIEW customer_info AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_Name, Email
FROM Customer;

SELECT * FROM customer_info;

CREATE VIEW US_Customers AS
SELECT *
FROM Customer
WHERE Country = 'United States';
SELECT * FROM US_Customers;


UPDATE Customer
SET Phone_no = 'Updated Phone Number'
WHERE State = 'California';

SET SQL_SAFE_UPDATES = 0;
UPDATE Customer
SET Phone_no = 'Updated Phone Number'
WHERE State = 'California'; 

ALTER TABLE Customer
MODIFY Phone_no VARCHAR(25);

UPDATE Customer
SET Phone_no = 'Updated Phone Number'
WHERE State = 'California'; 
SELECT * FROM Customer;

SELECT *
FROM Customer
WHERE State = 'California';

SELECT State, COUNT(*) AS Number_of_Customers
FROM Customer
GROUP BY State
HAVING COUNT(*) > 1;

SELECT State, COUNT(*) AS Number_of_Customers
FROM Customer
GROUP BY State;

SELECT *
FROM Customer
ORDER BY State ASC;
