CREATE TABLE BI_BikesDW_39.Dim_Date (
DateKey INT, 
FullDateAlternateKey DATE, -- Assuming it's a date
DayNumberOfWeek INT CHECK (DayNumberOfWeek BETWEEN 1 AND 7), -- 1 through 7 for days of the week
EnglishDayNameOfWeek VARCHAR(9), -- 'Monday', 'Tuesday', etc.
DayNumberOfMonth INT,
DayNumberOfYear INT,
WeekNumberOfYear INT,
EnglishMonthName VARCHAR(9), -- 'January', 'February', etc.
MonthNumberOfYear INT CHECK (MonthNumberOfYear BETWEEN 1 AND 12), CalendarQuarter INT, -- 1 through 4 for quarters of the year
CalendarYear INT,
CONSTRAINT PK_DimDate PRIMARY KEY (DateKey)
);