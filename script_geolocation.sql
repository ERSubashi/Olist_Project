USE Olist_DB;

CREATE TABLE geolocation (
    geolocation_zip_code_prefix INT PRIMARY KEY,
    geolocation_lat DECIMAL(32,28) NULL,
    geolocation_lng DECIMAL(32,28) NULL,
    geolocation_city VARCHAR(32) NULL,
    geolocation_state VARCHAR(32) NULL
);

