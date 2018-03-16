-- Erik Pronk
-- Matthew Hanley

-- 1.

-- 2.
select ProductID, ProductName, UnitsInStock, UnitPrice from nwProducts
where (UnitsInStock > 0) and (UnitsInStock < ReorderLevel);

-- 3.


-- 4.
select ProductID, ProductName, UnitsInStock*UnitPrice as "Total Inventory Value"
from nwProducts
where UnitsInStock * UnitPrice > 2000
order by UnitsInStock * UnitPrice desc;

-- 5.


-- 6.
select nwCustomers.CustomerID, nwCustomers.CompanyName
from nwCustomers
join nwOrders on nwCustomers.CustomerID = nwOrders.CustomerID
group by nwOrders.CustomerID
having count(*) > 20;


-- 7.



-- 8.
select nwSuppliers.CompanyName, nwProducts.ProductName, nwProducts.UnitPrice from nwSuppliers
join nwProducts
on nwSuppliers.SupplierID = nwProducts.SupplierID
where Country = "USA"
order by nwProducts.UnitPrice desc;


-- 9.


-- 10.
select nwCustomers.CustomerID, nwCustomers.CompanyName
from nwCustomers
left join nwOrders on nwCustomers.CustomerID = nwOrders.CustomerID
where nwOrders.CustomerID is null;


-- 11.


-- 12.
select nwProducts.ProductName, nwSuppliers.CompanyName, nwSuppliers.Country, nwProducts.UnitsInStock
from nwProducts
join nwSuppliers
on nwProducts.SupplierID = nwSuppliers.SupplierID
where QuantityPerUnit like "%bottle%";

-- 13.
CREATE TABLE `northwinds`.`Top_Items` (
  `ItemID` INT NOT NULL,
  `ItemCode` INT NOT NULL,
  `ItemName` VARCHAR(40) NOT NULL,
  `InventoryDate` DATE NOT NULL,
  `SupplierID` INT NOT NULL,
  `ItemQuantity` INT NOT NULL,
  `ItemPrice` DECIMAL(9,2) NOT NULL,
  PRIMARY KEY (`ItemID`));


-- 14.
insert into Top_Items
 (ItemID, ItemCode, ItemName,
 InventoryDate, ItemQuantity,
 ItemPrice, SupplierID)
select ProductID, CategoryID, ProductName, curdate(), UnitsInStock,
 UnitPrice, SupplierID
from nwProducts
where nwProducts.UnitsInStock*nwProducts.UnitPrice > 2500;


-- 15.
delete Top_Items.* from Top_Items
join nwSuppliers on Top_Items.SupplierID=nwSuppliers.SupplierID
where nwSuppliers.country like "canada";


-- 16.
alter table Top_Items
add InventoryValue decimal(9,2);


-- 17.
