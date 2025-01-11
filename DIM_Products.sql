--Cleaned DIM_Products Table-- 
SELECT 
    p.[ProductKey],
    P.[ProductAlternateKey] AS ProductItemCode,
    --P.[ProductSubcategoryKey],
    --P.[WeightUnitMeasureCode],
    --P.[SizeUnitMeasureCode],
    P.[EnglishProductName] AS [Product Name],
    ps.[EnglishProductSubcategoryName] AS [Sub Category Name], -- Joined in from Sub Category Table
    pc.[EnglishProductCategoryName] AS [Product Category], -- Joined in from Category Table
    --P.[SpanishProductName],
    --P.[FrenchProductName],
    --P.[StandardCost],
    --P.[FinishedGoodsFlag],
    p.[Color] AS [Product Color],
   -- P.[SafetyStockLevel],
    --P.[ReorderPoint],
    --P.[ListPrice],
    p.[Size] AS [Product Size],
   -- P.[SizeRange],
   -- P.[Weight],
   -- P.[DaysToManufacture],
    p.[ProductLine] AS [Product Line],
   ---- P.[DealerPrice],
    --P.[Class],
   -- P.[Style],
    p.[ModelName] AS [Product Model Name],
    --P.[LargePhoto],
    p.[EnglishDescription] AS [Product Description],
   -- P.[FrenchDescription],
   -- P.[ChineseDescription],
   -- P.[ArabicDescription],
   -- P.[HebrewDescription],
   -- P.[ThaiDescription],
   -- P.[GermanDescription],
   -- P.[JapaneseDescription],
   -- P.[StartDate],
   -- P.[EndDate],
		--p.Status as Example,
    ISNULL(P.[Status], 'Outdated') AS [Product Status]
FROM 
    [dbo].[DimProduct] AS p
LEFT JOIN 
    dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
LEFT JOIN 
    dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY 
    p.ProductKey ASC;
