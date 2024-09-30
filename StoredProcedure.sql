CREATE PROCEDURE usp_YearOnYearComparison
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.customer_state,
        s.seller_state,
        SUM(CASE WHEN YEAR(o.[delivery_date_id]) = 2017 THEN o.Product_Sales_Revenue END) AS Sales_Revenue_2017,
        SUM(CASE WHEN YEAR(o.[delivery_date_id]) = 2018 THEN o.Product_Sales_Revenue END) AS Sales_Revenue_2018,
        SUM(CASE WHEN YEAR(o.[delivery_date_id]) = 2017 THEN o.Shipping_Revenue END) AS Shipping_Revenue_2017,
        SUM(CASE WHEN YEAR(o.[delivery_date_id]) = 2018 THEN o.Shipping_Revenue END) AS Shipping_Revenue_2018,
        AVG(CASE WHEN YEAR(o.[delivery_date_id]) = 2017 THEN o.Nr_of_Review_Score END) AS Avg_Review_Score_2017,
        AVG(CASE WHEN YEAR(o.[delivery_date_id]) = 2018 THEN o.Nr_of_Review_Score END) AS Avg_Review_Score_2018
    FROM 
        [fact].[delivered_orders] AS o
    JOIN 
        [dim].[customer] AS c ON o.customer_id = c.customer_id
    JOIN 
        [dim].[sellers] AS s ON o.seller_id = s.seller_id
    WHERE 
        YEAR(o.[delivery_date_id]) IN (2017, 2018)
    GROUP BY 
        c.customer_state, s.seller_state
END;

EXEC usp_YearOnYearComparison