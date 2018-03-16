-- 1
select LastName, FirstName from 
	nwEmployees where (Country <> 'USA') and
	(HireDate < '2013-03-11 00:00:00')
	order by LastName, FirstName;

-- 3
select ProductName, UnitPrice from nwProducts
	where UnitPrice >= (select max(a.UnitPrice) from 
	(select UnitPrice from nwProducts) a);

-- 5 
select ShipCountry, count(*) as OrderCount from
	nwOrders where (ShipCountry <> 'USA') and
	(ShippedDate > '2013-09-01 00:00:00') and
	(ShippedDate < '2013-10-01 00:00:00') 
	group by ShipCountry order by ShipCountry;

-- 7
select SupplierID, sum(UnitPrice*UnitsInStock) 
	as InventoryValue from nwProducts group by
	SupplierID having count(*) > 3;

-- 9
select E.LastName, E.FirstName, E.Title, E.Extension,
	count(O.EmployeeID) OrderCount
	from nwEmployees E
	join nwOrders O on O.EmployeeID = E.EmployeeID 
	group by O.EmployeeID having OrderCount > 100
	order by E.LastName, E.FirstName, E.Title, E.Extension;

-- 11
select S.CompanyName, S.ContactName, C.CategoryName,
	C.Description, P.ProductName, P.UnitsOnOrder
	from nwProducts P
	join nwSuppliers S on S.SupplierID = P.SupplierID
	join nwCategories C on C.CategoryID = P.CategoryID
	where P.UnitsInStock = 0;

-- 17
Update Top_Items TI 
	set TI.InventoryValue = (TI.ItemPrice*TI.ItemQuantity);