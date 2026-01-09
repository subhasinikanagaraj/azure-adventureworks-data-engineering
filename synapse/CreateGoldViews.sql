CREATE VIEW gold.dim_calendar AS
SELECT *
FROM silver.calendar;


CREATE VIEW gold.dim_customer AS
SELECT *
FROM silver.customers;

CREATE VIEW gold.dim_product_categories AS
SELECT *
FROM silver.product_categories;

CREATE VIEW gold.dim_product_subcategories AS
SELECT *
FROM silver.product_subcategories;

CREATE VIEW gold.dim_products AS
SELECT *
FROM silver.products;

CREATE VIEW gold.dim_returns AS
SELECT *
FROM silver.returns;

CREATE VIEW gold.dim_territories AS
SELECT *
FROM silver.territories;

---------------------------------------------------------
-- GOLD FACT: fact_sales WITH BUSINESS METRICS
---------------------------------------------------------

CREATE VIEW gold.fact_sales AS
SELECT
    -- Fact fields
    s.CustomerKey,
    s.OrderDate,
    s.OrderLineItem,
    s.OrderNumber,
    s.OrderQuantity,
    s.ProductKey,
    s.StockDate,
    s.TerritoryKey,

    -- Product attributes
    p.ProductPrice,
    p.ProductCost,

    -- Business metrics
    (p.ProductPrice * s.OrderQuantity) AS Sales,
    (p.ProductPrice - p.ProductCost) * s.OrderQuantity AS Profit,
    CASE 
        WHEN p.ProductPrice * s.OrderQuantity = 0 THEN NULL
        ELSE ((p.ProductPrice - p.ProductCost) * s.OrderQuantity)
             / (p.ProductPrice * s.OrderQuantity)
    END AS ProfitMargin

FROM silver.sales AS s
LEFT JOIN silver.products AS p
    ON s.ProductKey = p.ProductKey;
