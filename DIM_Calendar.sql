--Cleansed DIM_Date Table --
SELECT
	[DateKey],
	[FullDateAlternateKey] AS Date,
	--[DayNumberOfWeek],
	[EnglishDayNameOfWeek] AS Day,
	--[SpanishDayNameOfWeek],
	--[FrenchDayNameOfWeek],
	--[DayNumberOfYear],
	--[WeekNumberOfYear],
	[EnglishMonthName] As Month,
	Left([EnglishMonthName], 3) AS MonthShort,  -- Useful for front end date navigation and front end graphs.
	--[SpanishMonthName],
	--[FrenchMonthName],
	[MonthNumberOfYear] AS MonthNo,
	[CalendarQuarter] AS Quarter,
	[CalendarYear] AS Year -- [CalenderSemester],
	--[FiscalQuarter],
	--[FiscalYear],
	--[FiscalSemester]
FROM
	[dbo].[DimDate]
WHERE
	CalendarYear >= 2019
