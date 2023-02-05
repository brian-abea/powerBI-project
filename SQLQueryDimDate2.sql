/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [DateKey]
      ,[FullDateAlternateKey] AS DATE
     -- ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS DAY
     -- ,[SpanishDayNameOfWeek]
     -- ,[FrenchDayNameOfWeek]
     -- ,[DayNumberOfMonth]
     -- ,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS WEEKNO
      ,[EnglishMonthName] AS MONTH
	  ,LEFT([EnglishMonthName],3) AS MONTHSYMBOL
      --,[SpanishMonthName] 
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MONTHNO
      ,[CalendarQuarter] AS QUARTER
      ,[CalendarYear] AS YEAR
     -- ,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >= 2019