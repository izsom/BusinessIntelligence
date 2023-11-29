-- Populate Dim_Date Table
INSERT INTO Dim_Date (DateKey, FullDateAlternateKey, DayNumberOfWeek, EnglishDayNameOfWeek, DayNumberOfMonth, DayNumberOfYear, WeekNumberOfYear, EnglishMonthName, MonthNumberOfYear, CalendarQuarter, CalendarYear)
SELECT
    YEAR(FullDateAlternateKey) * 10000 + MONTH(FullDateAlternateKey) * 100 + DAY(FullDateAlternateKey) AS DateKey,
    FullDateAlternateKey,
    DAYOFWEEK(FullDateAlternateKey) AS DayNumberOfWeek,
    DAYNAME(FullDateAlternateKey) AS EnglishDayNameOfWeek,
    DAY(FullDateAlternateKey) AS DayNumberOfMonth,
    DAYOFYEAR(FullDateAlternateKey) AS DayNumberOfYear,
    WEEK(FullDateAlternateKey) AS WeekNumberOfYear,
    MONTHNAME(FullDateAlternateKey) AS EnglishMonthName,
    MONTH(FullDateAlternateKey) AS MonthNumberOfYear,
    QUARTER(FullDateAlternateKey) AS CalendarQuarter,
    YEAR(FullDateAlternateKey) AS CalendarYear
FROM
    YourSourceTable; -- Replace YourSourceTable with the table or query that provides the FullDateAlternateKey values.
