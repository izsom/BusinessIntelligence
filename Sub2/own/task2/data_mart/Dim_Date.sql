-- Create Dim_Date Table
CREATE TABLE Dim_Date (
    DateKey INT NOT NULL,
    FullDateAlternateKey DATE NOT NULL,
    DayNumberOfWeek INT NOT NULL,
    EnglishDayNameOfWeek VARCHAR(20) NOT NULL,
    DayNumberOfMonth INT NOT NULL,
    DayNumberOfYear INT NOT NULL,
    WeekNumberOfYear INT NOT NULL,
    EnglishMonthName VARCHAR(20) NOT NULL,
    MonthNumberOfYear INT NOT NULL,
    CalendarQuarter INT NOT NULL,
    CalendarYear INT NOT NULL
);

ALTER TABLE Dim_Date ADD CONSTRAINT PK_Dim_Date PRIMARY KEY (DateKey);