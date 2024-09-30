USE Olist_DataWarehouse

CREATE TABLE Fact_Delivered_Orders (
    Unique_ID INT IDENTITY(1,1) PRIMARY KEY,
    Customer_ID UNIQUEIDENTIFIER,
    Delivery_Day_ID INT,
    Product_ID UNIQUEIDENTIFIER,
    Seller_ID UNIQUEIDENTIFIER,
    Nr_of_Orders INT,
    Nr_of_Products INT,
    Product_Sales_Revenue DECIMAL(10,2),
    Shipping_Revenue DECIMAL(10,2),
    Nr_of_Review_Score INT,
    Sum_Review_Score INT,
    FOREIGN KEY (Customer_ID) REFERENCES Dim_Customer(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Dim_Products(Product_ID),
    FOREIGN KEY (Seller_ID) REFERENCES Dim_Seller(Seller_ID)
);
