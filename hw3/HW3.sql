-- Matthew Hanley | Erik Pronk

-- 1.
SELECT 
    LastName, FirstName
FROM
    nwEmployees
WHERE
    (Country <> 'USA')
        AND (HireDate < '2013-03-11 00:00:00')
ORDER BY LastName , FirstName;

-- 2.
SELECT 
    ProductID, ProductName, UnitsInStock, UnitPrice
FROM
    nwProducts
WHERE
    (UnitsInStock > 0)
        AND (UnitsInStock < ReorderLevel);

-- 3.
SELECT 
    ProductName, UnitPrice
FROM
    nwProducts
WHERE
    UnitPrice >= (SELECT 
            MAX(a.UnitPrice)
        FROM
            (SELECT 
                UnitPrice
            FROM
                nwProducts) a);


-- 4.
SELECT 
    ProductID,
    ProductName,
    UnitsInStock * UnitPrice AS 'Total Inventory Value'
FROM
    nwProducts
WHERE
    UnitsInStock * UnitPrice > 2000
ORDER BY UnitsInStock * UnitPrice DESC;

-- 5.
SELECT 
    ShipCountry, COUNT(*) AS OrderCount
FROM
    nwOrders
WHERE
    (ShipCountry <> 'USA')
        AND (ShippedDate > '2013-09-01 00:00:00')
        AND (ShippedDate < '2013-10-01 00:00:00')
GROUP BY ShipCountry
ORDER BY ShipCountry;


-- 6.
SELECT 
    nwCustomers.CustomerID, nwCustomers.CompanyName
FROM
    nwCustomers
        JOIN
    nwOrders ON nwCustomers.CustomerID = nwOrders.CustomerID
GROUP BY nwOrders.CustomerID
HAVING COUNT(*) > 20;


-- 7.
SELECT 
    SupplierID, SUM(UnitPrice * UnitsInStock) AS InventoryValue
FROM
    nwProducts
GROUP BY SupplierID
HAVING COUNT(*) > 3;



-- 8.
SELECT 
    nwSuppliers.CompanyName,
    nwProducts.ProductName,
    nwProducts.UnitPrice
FROM
    nwSuppliers
        JOIN
    nwProducts ON nwSuppliers.SupplierID = nwProducts.SupplierID
WHERE
    Country = 'USA'
ORDER BY nwProducts.UnitPrice DESC;


-- 9.
SELECT 
    E.LastName,
    E.FirstName,
    E.Title,
    E.Extension,
    COUNT(O.EmployeeID) OrderCount
FROM
    nwEmployees E
        JOIN
    nwOrders O ON O.EmployeeID = E.EmployeeID
GROUP BY O.EmployeeID
HAVING OrderCount > 100
ORDER BY E.LastName , E.FirstName , E.Title , E.Extension;


-- 10.
SELECT 
    nwCustomers.CustomerID, nwCustomers.CompanyName
FROM
    nwCustomers
        LEFT JOIN
    nwOrders ON nwCustomers.CustomerID = nwOrders.CustomerID
WHERE
    nwOrders.CustomerID IS NULL;


-- 11.
SELECT 
    S.CompanyName,
    S.ContactName,
    C.CategoryName,
    C.Description,
    P.ProductName,
    P.UnitsOnOrder
FROM
    nwProducts P
        JOIN
    nwSuppliers S ON S.SupplierID = P.SupplierID
        JOIN
    nwCategories C ON C.CategoryID = P.CategoryID
WHERE
    P.UnitsInStock = 0;


-- 12.
SELECT 
    nwProducts.ProductName,
    nwSuppliers.CompanyName,
    nwSuppliers.Country,
    nwProducts.UnitsInStock
FROM
    nwProducts
        JOIN
    nwSuppliers ON nwProducts.SupplierID = nwSuppliers.SupplierID
WHERE
    QuantityPerUnit LIKE '%bottle%';

-- 13.
CREATE TABLE `northwinds`.`Top_Items` (
    `ItemID` INT NOT NULL,
    `ItemCode` INT NOT NULL,
    `ItemName` VARCHAR(40) NOT NULL,
    `InventoryDate` DATE NOT NULL,
    `SupplierID` INT NOT NULL,
    `ItemQuantity` INT NOT NULL,
    `ItemPrice` DECIMAL(9 , 2 ) NOT NULL,
    PRIMARY KEY (`ItemID`)
);


-- 14.
insert into 
Top_Items(ItemID, ItemCode, ItemName,InventoryDate, 
ItemQuantity,ItemPrice, SupplierID)
select ProductID, CategoryID, ProductName, curdate(), UnitsInStock,
UnitPrice, SupplierID
from 
nwProducts
where 
nwProducts.UnitsInStock*nwProducts.UnitPrice > 2500;


-- 15.
DELETE Top_Items . * FROM Top_Items
        JOIN
    nwSuppliers ON Top_Items.SupplierID = nwSuppliers.SupplierID 
WHERE
    nwSuppliers.country LIKE 'canada';


-- 16.
alter table Top_Items
add InventoryValue decimal(9,2);


-- 17.
UPDATE Top_Items TI 
SET 
    TI.InventoryValue = (TI.ItemPrice * TI.ItemQuantity);

