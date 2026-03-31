-- Menu Table Creation
CREATE TABLE Menu (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    ItemName VARCHAR(100),
    Category VARCHAR(50),
    Price INT,
    IsAvailable TINYINT(1)
);

-- Sample Data Insert 
INSERT INTO Menu (ItemName, Category, Price, IsAvailable)
VALUES
('Zinger Burger', 'Burgers', 450, 1),
('Chicken Burger', 'Burgers', 500, 1),
('Beef Burger', 'Burgers', 650, 1),
('Fish Burger', 'Burgers', 900, 1),
('Veggie Burger', 'Burgers', 700, 0),
('French Fries', 'Sides', 200, 1),
('Coke', 'Drinks', 150, 1);

-- Query for Available Burgers < 800
SELECT ItemName, Price
FROM Menu
WHERE Category = 'Burgers'
AND Price < 800
AND IsAvailable = 1
ORDER BY Price ASC;