USE Olist_DB;

CREATE TABLE order_customer (
    customer_id UNIQUEIDENTIFIER PRIMARY KEY,
    customer_unique_id UNIQUEIDENTIFIER NULL,
	customer_zip_code_prefix INT NULL,
    customer_city VARCHAR(32) NULL,
    customer_state VARCHAR(32) NULL,
	FOREIGN KEY (customer_zip_code_prefix) REFERENCES geolocation(geolocation_zip_code_prefix)
);

