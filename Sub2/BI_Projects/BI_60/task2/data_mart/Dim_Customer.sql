-- Create Dim_Customer Table
CREATE TABLE Dim_Customer (
    CustomerKey INT PRIMARY KEY NOT NULL,
    AccountNumber VARCHAR(30) NOT NULL,
    FullName VARCHAR(150) NOT NULL,
    Gender VARCHAR(1) CHECK (Gender IN ('M', 'F')),
    Age INT
);


ALTER TABLE Dim_Customer ADD CONSTRAINT PK_Dim_Customer PRIMARY KEY (CustomerKey);