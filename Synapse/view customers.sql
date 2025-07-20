
-- create a view customers
CREATE VIEW gold.customers
AS
SELECT
    *
FROM
    OPENROWSET(
    BULK 'https://pgstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_customers/',
    FORMAT = 'PARQUET'
    ) AS query1;