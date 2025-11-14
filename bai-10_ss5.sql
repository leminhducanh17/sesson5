DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(255),
    Email VARCHAR(255),
    RegistrationDate DATE,
    City VARCHAR(100),
    Status VARCHAR(50) -- 'Active', 'Inactive', 'Potential'
);

INSERT INTO Customers (CustomerID, FullName, Email, RegistrationDate, City, Status) VALUES
(1, 'Nguyen Van An', 'an.nguyen@email.com', '2023-01-15', 'Ho Chi Minh', 'Active'),
(2, 'Tran Thi Ba', 'ba.tran@email.com', '2023-02-20', 'Hanoi', 'Active'),
(3, 'Le Van Cuong', 'cuong.le@email.com', '2023-02-25', 'Da Nang', 'Inactive'),
(4, 'Pham Thi Dung', 'dung.pham@email.com', '2023-03-10', 'Hanoi', 'Potential'),
(5, 'Hoang Van Em', 'em.hoang@email.com', '2023-04-01', 'Ho Chi Minh', 'Active');

INSERT INTO Customers (CustomerID, FullName, Email, RegistrationDate, City, Status)
VALUES (6, 'Ly Thi Giang', 'giang.ly@email.com', '2023-05-20', 'Can Tho', 'Potential');

SELECT FullName, Email
FROM Customers;

SELECT DISTINCT City
FROM Customers;

SELECT CustomerID, FullName, RegistrationDate
FROM Customers
ORDER BY RegistrationDate DESC;

SELECT *
FROM Customers
WHERE City = 'Hanoi';

SELECT *
FROM Customers
WHERE City = 'Ho Chi Minh'
  AND Status = 'Active';

UPDATE Customers
SET Status = 'Active'
WHERE CustomerID = 3;

SELECT CustomerID, FullName, Status
FROM Customers
WHERE CustomerID = 3;

DELETE FROM Customers
WHERE CustomerID = 4;

SELECT * FROM Customers
ORDER BY CustomerID;
