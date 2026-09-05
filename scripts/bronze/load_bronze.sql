CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @start_time DATETIME,@end_time DATETIME;
	BEGIN TRY
        PRINT'================================';
		PRINT'Loading Bronze Layer';
		PRINT'================================';
        PRINT'-------------------------------';
		PRINT'Loading crm Table';
		PRINT'-------------------------------';
		SET @start_time = GETDATE();
		PRINT'>> TRUNCATING TABLE : bronze.crm_cust_info';
		TRUNCATE  TABLE bronze.crm_cust_info;
		PRINT'INSERTING DATA INTO : bronze.crm_cust_info';
		BULK INSERT bronze.crm_cust_info
		FROM 'C:\Users\HP\OneDrive\Documents\DATA WAREHOUSE PROJECT\datasets\source_crm\cust_info.csv'
		WITH
		(
			FIRSTROW =2,
			FIELDTERMINATOR =',',
			TABLOCK
		);
		SET @end_time= GETDATE();
		PRINT'>> Load Duration :'+ CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR);
		PRINT'******************************';
		SET @start_time =GETDATE();
		PRINT'>> TRUNCATING TABLE : bronze.crm_prd_info';
		TRUNCATE TABLE bronze.crm_prd_info;

		PRINT'INSERTING DATA INTO : bronze.crm_prd_info';
		BULK INSERT bronze.crm_prd_info
		FROM 'C:\Users\HP\OneDrive\Documents\DATA WAREHOUSE PROJECT\datasets\source_crm\prd_info.csv'
		With(
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time= GETDATE();
		PRINT'>> Load Duration :'+ CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR);
		PRINT'******************************';

		SET @start_time =GETDATE();
		
		PRINT'>> TRUNCATING TABLE : bronze.crm_sales_details';
		TRUNCATE TABLE bronze.crm_sales_details;

		PRINT'INSERTING DATA INTO : bronze.crm_sales_details';
		BULK INSERT bronze.crm_sales_details
		FROM 'C:\Users\HP\OneDrive\Documents\DATA WAREHOUSE PROJECT\datasets\source_crm\sales_details.csv'
		With(
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time= GETDATE();
		PRINT'>> Load Duration :'+ CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR);
		PRINT'******************************';

		PRINT'-------------------------------';
		PRINT'Loading ERP Table';
		PRINT'-------------------------------';
		SET @start_time= GETDATE();

		PRINT'>> TRUNCATING TABLE : bronze.erp_cust_az12';
		TRUNCATE TABLE bronze.erp_cust_az12;

		PRINT'INSERTING DATA INTO : bronze.erp_cust_az12';
		BULK INSERT bronze.erp_cust_az12
		FROM 'C:\Users\HP\OneDrive\Documents\DATA WAREHOUSE PROJECT\datasets\source_erp\CUST_AZ12.csv'
		With(
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time =GETDATE();
		PRINT'>> Load Duration :'+ CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR);
		PRINT'******************************';

		SET @start_time= GETDATE();
		PRINT'>> TRUNCATING TABLE : bronze.erp_loc_a101';
		TRUNCATE TABLE bronze.erp_loc_a101;

		PRINT'INSERTING DATA INTO : bronze.erp_loc_a101';
		BULK INSERT bronze.erp_loc_a101
		FROM 'C:\Users\HP\OneDrive\Documents\DATA WAREHOUSE PROJECT\datasets\source_erp\LOC_A101.csv'
		With(
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time =GETDATE();
		PRINT'>> Load Duration :'+ CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR);
		PRINT'******************************';
		SET @start_time= GETDATE();
		PRINT'>> TRUNCATING TABLE : bronze.erp_px_cat_g1v2';
		TRUNCATE TABLE bronze.erp_px_cat_g1v2;

		PRINT'INSERTING DATA INTO : bronze.erp_px_cat_g1v2';
		BULK INSERT bronze.erp_px_cat_g1v2
		FROM 'C:\Users\HP\OneDrive\Documents\DATA WAREHOUSE PROJECT\datasets\source_erp\PX_CAT_G1V2.csv'
		With(
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time =GETDATE();
		PRINT'>> Load Duration :'+ CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR);
		PRINT'******************************';
		END TRY
		BEGIN CATCH
		PRINT'==========================';
		PRINT'ERROR OCCURED DURING LOADING BRONZE LAYER';
		PRINT'ERROR MESSAGE'+' '+ERROR_MESSAGE();
		PRINT'ERROR MESSAGE'+' '+CAST(ERROR_NUMBER()AS NVARCHAR);
		PRINT'ERROR MESSAGE'+' '+CAST(ERROR_STATE() AS NVARCHAR);
		PRINT'==========================';
		END CATCH
END
GO
EXEC  bronze.load_bronze;
