
-- create a view returns
CREATE VIEW gold.returns_
AS
SELECT
    *
FROM
    OPENROWSET(
    BULK 'https://pgstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
    ) AS query1;
