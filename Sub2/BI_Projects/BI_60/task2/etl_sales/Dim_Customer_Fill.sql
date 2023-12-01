-- Populate Dim_Customer Table
INSERT INTO Dim_Customer (CustomerKey, AccountNumber, FullName, Gender, Age)
SELECT
    c.CustomerID AS CustomerKey,
    c.AccountNumber,
    CONCAT(p.FirstName, ' ', p.MiddleName, ' ', p.LastName) AS FullName,
    p.Gender as Gender,
    DATEDIFF(YEAR, p.Birthdate, '2021-09-30') AS Age
FROM
    TB_Customer c
JOIN
    TB_Person p ON c.PersonID = p.PersonID;
