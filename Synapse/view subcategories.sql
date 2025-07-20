
-- create a view subcategories
CREATE VIEW gold.subcategories
AS
SELECT
    *
FROM
    OPENROWSET(
    BULK 'https://pgstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_subcategories/',
    FORMAT = 'PARQUET'
    ) AS query1;