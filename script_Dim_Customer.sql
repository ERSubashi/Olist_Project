USE Olist_DataWarehouse

CREATE TABLE Dim_Customer (
    Customer_ID UNIQUEIDENTIFIER PRIMARY KEY,
	Customer_City VARCHAR(32) NULL,
	Customer_State VARCHAR(32) NULL

    
);