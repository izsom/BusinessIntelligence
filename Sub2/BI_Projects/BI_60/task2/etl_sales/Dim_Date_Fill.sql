-- Populate Dim_Date Table
INSERT INTO Dim_Date (DateKey, FullDateAlternateKey, DayNumberOfWeek, EnglishDayNameOfWeek, DayNumberOfMonth, DayNumberOfYear, WeekNumberOfYear, EnglishMonthName, MonthNumberOfYear, CalendarQuarter, CalendarYear)
SELECT
    YEAR(dates.DateIn) * 10000 + MONTH(dates.DateIn) * 100 + DAY(dates.DateIn) AS DateKey,
    dates.DateIn As FullDateAlternateKey,
    DAYOFWEEK(dates.DateIn) AS DayNumberOfWeek,
    DAYNAME(dates.DateIn) AS EnglishDayNameOfWeek,
    DAY(dates.DateIn) AS DayNumberOfMonth,
    DAYOFYEAR(dates.DateIn) AS DayNumberOfYear,
    WEEK(dates.DateIn) AS WeekNumberOfYear,
    MONTHNAME(dates.DateIn) AS EnglishMonthName,
    MONTH(dates.DateIn) AS MonthNumberOfYear,
    QUARTER(dates.DateIn) AS CalendarQuarter,
    YEAR(dates.DateIn) AS CalendarYear
FROM
    (
	select distinct * from (
    SELECT OrderDate AS DateIn FROM BI_Bikes_39.TB_SalesOrderHeader
    UNION
    SELECT DueDate AS DateIn FROM BI_Bikes_39.TB_SalesOrderHeader
    UNION
    SELECT ShipDate AS DateIn FROM BI_Bikes_39.TB_SalesOrderHeader WHERE ShipDate IS NOT NULL) as myDataSelect
) AS dates