CREATE SCHEMA silver;

CREATE SCHEMA gold;

CREATE DATABASE SCOPED CREDENTIAL cred_aw_data_eng
WITH
    IDENTITY = 'MANAGED IDENTITY'

CREATE EXTERNAL DATA SOURCE ds_aw_silver
WITH
    (
        LOCATION = 'https://dlawdataengineering.blob.core.windows.net/silver',
        CREDENTIAL = cred_aw_data_eng
    )

CREATE EXTERNAL DATA SOURCE ds_aw_gold
WITH
    (
        LOCATION = 'https://dlawdataengineering.blob.core.windows.net/gold',
        CREDENTIAL = cred_aw_data_eng
    )

CREATE EXTERNAL FILE FORMAT ff_parquet
WITH
    (
        FORMAT_TYPE=PARQUET
    )
