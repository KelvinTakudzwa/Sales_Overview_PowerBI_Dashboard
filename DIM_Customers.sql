-- cleaned DIM_Customers Table --
SELECT
	c.customerkey As CustomerKey,
	--		[GeographyKey]
	--		[CustomerAlternateKey]
	--		[Title]
	c.firstname AS [First Name],
	--		[Middleware]
	c.lastname AS [lastname],
	c.firstname + ' ' +lastname AS [Full Name],
	-- Combined First and Lastname
	--		,[NameStyle]
	--		,[BirthDate]
	--		,[MaritalStatus]
	--		,[Suffix]
	CASE c.gender WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS Gender,
	--		,[EmailAddress]
	--		,[YearlyIncome]
	--		,[TotalChildren]
	--		,[NumberOfChildrenAtHome]
	--		,[EnglishEducation]
	--		,[SpanishEducation]
	--		,[FrenchEducation]
	--		,[EnglishOccupation]
	--		,[SpanishOccupation]
	--		,[FrenchOccupation]
	--		,[HouseOwnerFlag]
	--		,[NumberOfCarsOwned]
	--		,[AddressLine1]
	--		,[AddressLine2]
	--		,[Phone]
	c.datefirstpurchase AS DateFirstPurchase,
	--		,[CommuteDistance]
	g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM
	dbo.dimcustomer AS c
	LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey
ORDER BY
	CustomerKey ASC -- Ordered List by CustomerKey