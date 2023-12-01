-- To be able to rerun the '3 - Create BikesDW' job, the existing tables needs to be dropped first.
DROP TABLE IF EXISTS Fact_InternetSales; 
DROP TABLE IF EXISTS Dim_Customer;
DROP TABLE IF EXISTS Dim_Date;
DROP TABLE IF EXISTS Dim_Location;
DROP TABLE IF EXISTS Dim_Product;

-- Create Dim_Customer Table
CREATE TABLE Dim_Customer (
    CustomerKey INT NOT NULL,
    AccountNumber VARCHAR(30) NOT NULL,
    FullName VARCHAR(150) NOT NULL,
    Gender VARCHAR(1) CHECK (Gender IN ('M', 'F')),
    Age INT
);

ALTER TABLE Dim_Customer ADD CONSTRAINT PK_Dim_Customer PRIMARY KEY (CustomerKey);