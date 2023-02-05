/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
	   p.[ProductKey],
      p.[ProductAlternateKey] AS ProductItemCode,
      --,[ProductSubcategoryKey]
     -- ,[WeightUnitMeasureCode]
     -- ,[SizeUnitMeasureCode]
      p.[EnglishProductName] AS [Product Name],
	  ps.EnglishProductSubcategoryName AS [Sub Category],
	  pc.EnglishproductcategoryName AS [Product category],
      --,[SpanishProductName]
     -- ,[FrenchProductName]
     -- ,[StandardCost]
     -- ,[FinishedGoodsFlag]
      p.[Color] AS [Product color],
      --,[SafetyStockLevel]
     -- ,[ReorderPoint]
     -- ,[ListPrice]
      p.[Size] AS [Product Size],
      --,[SizeRange]
     -- ,[Weight]
      --,[DaysToManufacture]
      p.[ProductLine] AS [Product Line],
      --,[DealerPrice]
     -- ,[Class]
      --,[Style]
      p.[ModelName] AS [ModelName],
      --,[LargePhoto]
      p.[EnglishDescription] AS [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ISNULL (p.Status, 'Outdated') AS [product Status]
  FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN dbo.DimProductSubCategory AS ps ON ps.ProductSubCategoryKey = p.ProductSubcategorykey
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY 
  p.ProductKey ASC