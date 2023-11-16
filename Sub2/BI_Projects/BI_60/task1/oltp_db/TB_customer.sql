-- Create TB_Customer Table
CREATE TABLE TB_Customer (
    CustomerID INT PRIMARY KEY NOT NULL,
    PersonID INT,
    AccountNumber VARCHAR(30) NOT NULL,
    FOREIGN KEY (PersonID) REFERENCES TB_Person(PersonID)
);