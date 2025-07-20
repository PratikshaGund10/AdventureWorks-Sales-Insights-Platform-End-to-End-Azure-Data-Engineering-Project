
-- create a view sales
CREATE VIEW gold.sales
AS
SELECT
    *
FROM
    OPENROWSET(
    BULK 'https://pgstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
    ) AS query1;
