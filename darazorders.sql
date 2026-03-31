-- Step 1: Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    City VARCHAR(50),
    TotalAmount DECIMAL(10,2)
);

-- Step 2: Insert sample data
INSERT INTO Orders (OrderID, OrderDate, City, TotalAmount)
VALUES
    (1, '2026-03-01', 'Karachi', 5000.00),
    (2, '2026-03-01', 'Lahore', 3000.00),
    (3, '2026-03-02', 'Karachi', 7000.00),
    (4, '2026-03-02', 'Islamabad', 2000.00),
    (5, '2026-03-03', 'Lahore', 4000.00);

-- Step 3: Generate total revenue by city
SELECT
    City,
    SUM(TotalAmount) AS TotalRevenue
FROM Orders
GROUP BY City
ORDER BY TotalRevenue DESC;