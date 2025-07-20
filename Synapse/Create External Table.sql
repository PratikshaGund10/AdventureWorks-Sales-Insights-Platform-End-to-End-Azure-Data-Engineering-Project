CREATE DATABASE SCOPED CREDENTIAL cred_PG
WITH IDENTITY = 'Managed Identity';

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://pgstoragedatalake.dfs.core.windows.net/silver',
    CREDENTIAL= cred_PG
);


CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://pgstoragedatalake.dfs.core.windows.net/gold',
    CREDENTIAL= cred_PG
);


CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE= PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

---------------------------------------------
--- Create Extrenal table ExtSales
---------------------------------------------
CREATE EXTERNAL TABLE gold.extSales
WITH
(
    LOCATION = 'extSales',
    DATA_SOURCE= source_gold,
    FILE_FORMAT= format_parquet
)
AS
SELECT * FROM gold.sales;

SELECT * from gold.extSales;

---------------------------------------------
--- Create Extrenal table Date
---------------------------------------------
CREATE EXTERNAL TABLE gold.Date
WITH
(
    LOCATION = 'Date',
    DATA_SOURCE= source_gold,
    FILE_FORMAT= format_parquet
)
AS
SELECT * FROM gold.calendar;

---------------------------------------------
--- Create Extrenal table Returns
---------------------------------------------
CREATE EXTERNAL TABLE gold.Table_Returns
WITH
(
    LOCATION = 'Table_Returns',
    DATA_SOURCE= source_gold,
    FILE_FORMAT= format_parquet
)
AS
SELECT * FROM gold.returns_;


---------------------------------------------
--- Create Extrenal table territories
---------------------------------------------
CREATE EXTERNAL TABLE gold.Table_territories
WITH
(
    LOCATION = 'Table_territories',
    DATA_SOURCE= source_gold,
    FILE_FORMAT= format_parquet
)
AS
SELECT * FROM gold.territories;

---------------------------------------------
--- Create Extrenal table customers
---------------------------------------------
CREATE EXTERNAL TABLE gold.Table_customers
WITH
(
    LOCATION = 'Table_customers',
    DATA_SOURCE= source_gold,
    FILE_FORMAT= format_parquet
)
AS
SELECT * FROM gold.customers;

---------------------------------------------
--- Create Extrenal table products
---------------------------------------------
CREATE EXTERNAL TABLE gold.Table_products
WITH
(
    LOCATION = 'Table_products',
    DATA_SOURCE= source_gold,
    FILE_FORMAT= format_parquet
)
AS
SELECT * FROM gold.products;

---------------------------------------------
--- Create Extrenal table subcategories
---------------------------------------------
CREATE EXTERNAL TABLE gold.Table_subcategories
WITH
(
    LOCATION = 'Table_subcategories',
    DATA_SOURCE= source_gold,
    FILE_FORMAT= format_parquet
)
AS
SELECT * FROM gold.subcategories;
