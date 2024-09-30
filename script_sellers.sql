USE Olist_DB;

CREATE TABLE sellers (
    seller_id UNIQUEIDENTIFIER PRIMARY KEY,
	seller_zip_code_prefix INT NULL,
    seller_city VARCHAR(32) NULL,
    seller_state VARCHAR(32) NULL,
	FOREIGN KEY (seller_zip_code_prefix) REFERENCES geolocation(geolocation_zip_code_prefix)
);

