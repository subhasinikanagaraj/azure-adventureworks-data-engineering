---------------------------------------------------------
-- SILVER VIEWS (Reading Parquet from ADLS via OPENROWSET)
---------------------------------------------------------

-- Calendar
CREATE OR ALTER VIEW silver.calendar AS
SELECT *
FROM OPENROWSET
(
    BULK 'AdventureWorks_Calendar/',
    DATA_SOURCE = 'ds_aw_silver',
    FORMAT = 'PARQUET'
) AS src;

-- Customers
CREATE OR ALTER VIEW silver.customers AS
SELECT *
FROM OPENROWSET
(
    BULK 'AdventureWorks_Customers/',
    DATA_SOURCE = 'ds_aw_silver',
    FORMAT = 'PARQUET'
) AS src;

-- Product Categories
CREATE OR ALTER VIEW silver.product_categories AS
SELECT *
FROM OPENROWSET
(
    BULK 'AdventureWorks_Product_Categories/',
    DATA_SOURCE = 'ds_aw_silver',
    FORMAT = 'PARQUET'
) AS src;

-- Product Subcategories
CREATE OR ALTER VIEW silver.product_subcategories AS
SELECT *
FROM OPENROWSET
(
    BULK 'AdventureWorks_Product_Subcategories/',
    DATA_SOURCE = 'ds_aw_silver',
    FORMAT = 'PARQUET'
) AS src;

-- Products
CREATE OR ALTER VIEW silver.products AS
SELECT *
FROM OPENROWSET
(
    BULK 'AdventureWorks_Products/',
    DATA_SOURCE = 'ds_aw_silver',
    FORMAT = 'PARQUET'
) AS src;

-- Returns
CREATE OR ALTER VIEW silver.returns AS
SELECT *
FROM OPENROWSET
(
    BULK 'AdventureWorks_Returns/',
    DATA_SOURCE = 'ds_aw_silver',
    FORMAT = 'PARQUET'
) AS src;

-- Sales
CREATE OR ALTER VIEW silver.sales AS
SELECT *
FROM OPENROWSET
(
    BULK 'AdventureWorks_Sales/',
    DATA_SOURCE = 'ds_aw_silver',
    FORMAT = 'PARQUET'
) AS src;

-- Territories
CREATE OR ALTER VIEW silver.territories AS
SELECT *
FROM OPENROWSET
(
    BULK 'AdventureWorks_Territories/',
    DATA_SOURCE = 'ds_aw_silver',
    FORMAT = 'PARQUET'
) AS src;
