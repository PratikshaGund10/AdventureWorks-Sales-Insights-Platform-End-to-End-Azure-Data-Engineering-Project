
-- create a view territories
CREATE VIEW gold.territories
AS
SELECT
    *
FROM
    OPENROWSET(
    BULK 'https://pgstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
    ) AS query1;
