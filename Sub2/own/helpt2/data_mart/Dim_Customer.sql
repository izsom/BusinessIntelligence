CREATE TABLE BI_BikesDW_39.Dim_Customer (
	CustomerKey INT,
    AccountNumber VARCHAR(30) NOT NULL,
    FullName VARCHAR(150) NOT NULL,
    Gender VARCHAR(1),
    Age INT NOT NULL,
	CONSTRAINT PK_DimCustomer PRIMARY KEY (CustomerKey)
);