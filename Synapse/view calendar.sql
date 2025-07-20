--create a view calendar
CREATE VIEW gold.calendar
AS
SELECT
    *
FROM
    OPENROWSET(
    BULK 'https://pgstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
    ) AS query1;
