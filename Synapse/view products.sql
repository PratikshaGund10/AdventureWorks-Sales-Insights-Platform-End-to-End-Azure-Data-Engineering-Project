

-- create a view products
CREATE VIEW gold.products
AS
SELECT
    *
FROM
    OPENROWSET(
    BULK 'https://pgstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_products/',
    FORMAT = 'PARQUET'
    ) AS query1;
