CREATE TABLE TB_Address (
    AddressID INT PRIMARY KEY NOT NULL,
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES TB_Country(CountryID),
    AddressLine VARCHAR(60) NOT NULL,
    City VARCHAR(30) NOT NULL,
    PostalCode VARCHAR(15) NOT NULL
);