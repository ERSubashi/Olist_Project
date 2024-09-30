USE Olist_DB;

CREATE TABLE orders (
    order_id UNIQUEIDENTIFIER PRIMARY KEY,
	customer_id UNIQUEIDENTIFIER NULL,
    order_status VARCHAR(32) NULL,
    order_purchase_timestamp DATETIME NULL,
	order_approved_at DATETIME NULL,
	order_delivered_carrier_date DATETIME NULL,
	order_delivered_customer_date DATETIME NULL,
	order_estimated_delivery_date DATETIME NULL,
	FOREIGN KEY (customer_id) REFERENCES order_customer(customer_id)
);