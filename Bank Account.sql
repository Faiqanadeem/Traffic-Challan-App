CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Balance DECIMAL(10,2)
);
INSERT INTO Accounts (AccountID, CustomerName, Balance) VALUES
(1, 'Ali', 60000),
(2, 'Ahmed', 45000),
(3, 'Sara', 80000),
(4, 'Hassan', 30000),
(5, 'Ayesha', 70000);
SELECT CustomerName
FROM Accounts
WHERE Balance > (
    SELECT AVG(Balance)
    FROM Accounts
);