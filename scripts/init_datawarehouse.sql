/*
=============================================================
Create Database and Schemas
=============================================================
Purpose:
    This script creates a new database named 'DataWarehouse'
    after checking if it already exists. If the database
    exists, it is dropped and recreated. The script then sets
    up three schemas within the database:
        - bronze : raw, unprocessed source data
        - silver : cleaned, standardized data
        - gold   : business-ready, curated data

WARNING:
    Running this script will DROP the entire 'DataWarehouse'
    database if it already exists. All data in that database
    will be permanently deleted. Ensure you have proper
    backups before running this script.
=============================================================
*/

USE master;
GO

-- Check if the database already exists; drop it if it does
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
