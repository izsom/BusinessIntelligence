DROP TABLE IF EXISTS TB_Customer;

-- Create TB_Customer Table
CREATE TABLE TB_Customer (
    CustomerID INT NOT NULL,
    PersonID INT,
    AccountNumber VARCHAR(30) NOT NULL
);
ALTER TABLE TB_Customer ADD CONSTRAINT FK_Person_Customer FOREIGN KEY (PersonID) REFERENCES TB_Person(PersonID);
ALTER TABLE TB_Customer ADD CONSTRAINT PK_Customer PRIMARY KEY (CustomerID);