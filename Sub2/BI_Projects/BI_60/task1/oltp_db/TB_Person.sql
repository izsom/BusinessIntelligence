-- Create TB_Person Table
CREATE TABLE TB_Person (
    PersonID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50),
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(1) CHECK (Gender IN ('M', 'F')),
    Birthdate DATE
);
