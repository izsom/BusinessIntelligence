INSERT INTO BI_BikesDW_39.Dim_Customer (CustomerKey, AccountNumber, FullName, Gender, Age)
SELECT c.CustomerID As CustomerKey, 
	c.AccountNumber As AccountNumber, 
	CONCAT_WS(' ', p.FirstName, NULLIF(p.MiddleName, ''), p.LastName) AS FullName,
	p.Gender As Gender, 
	TIMESTAMPDIFF(YEAR, p.BirthDate, '2021-09-30') AS Age 
FROM BI_Bikes_39.TB_Person p 
JOIN BI_Bikes_39.TB_Customer c ON p.PersonID = c.PersonID