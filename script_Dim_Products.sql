USE Olist_DataWarehouse

CREATE TABLE Dim_Products (
    Product_ID UNIQUEIDENTIFIER PRIMARY KEY,
	Product_Cat_Name_PT VARCHAR(32) NULL,
	Product_Cat_Name_EN VARCHAR(32) NULL,
	Product_Weight_g INT NULL,
	Product_Length_cm INT NULL,
    Product_Height_cm INT NULL,
    Product_Width_cm INT NULL
    
    
);
