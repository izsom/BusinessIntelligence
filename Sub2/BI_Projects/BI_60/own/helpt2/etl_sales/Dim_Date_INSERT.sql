INSERT INTO BI_BikesDW_39.Dim_Date (DateKey, FullDateAlternateKey, DayNumberOfWeek, EnglishDayNameOfWeek, DayNumberOfMonth, DayNumberOfYear, WeekNumberOfYear, EnglishMonthName, MonthNumberOfYear, CalendarYear)
SELECT 
	YEAR(dates.DateValue) * 10000 + MONTH(dates.DateValue) * 100 + DAYOFMONTH(dates.DateValue) AS DateKey, 
	dates.DateValue As FullDateAlternateKey, 
	DAYOFWEEK(dates.DateValue) As DayNumberOfWeek, 
	DAYNAME(dates.DateValue) As EnglishDayNameOfWeek, 
	DAY(dates.DateValue) As DayNumberOfMonth, 
	DAYOFYEAR(dates.DateValue) AS DayNumberOfYear, 
	WEEK(dates.DateValue) AS WeekNumberOfYear, 
	MONTHNAME(dates.DateValue) AS EnglishMonthName, 
	MONTH(dates.DateValue) AS MonthNumberOfYear, 
	YEAR(dates.DateValue) AS CalendarYear
FROM (
	select distinct * from (
    SELECT OrderDate AS DateValue FROM BI_Bikes_39.TB_SalesOrderHeader
    UNION
    SELECT DueDate AS DateValue FROM BI_Bikes_39.TB_SalesOrderHeader
    UNION
    SELECT ShipDate AS DateValue FROM BI_Bikes_39.TB_SalesOrderHeader WHERE ShipDate IS NOT NULL) as myDataSelect
) AS dates

