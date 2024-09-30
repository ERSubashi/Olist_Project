USE Olist_DB;

CREATE TABLE products (
    product_id UNIQUEIDENTIFIER PRIMARY KEY,
    product_category_name VARCHAR(32) NULL,
    product_name_lenght INT NULL,
    product_description_lenght INT NULL,
    product_photos_qty INT NULL,
    product_weight_g INT NULL,
    product_length_cm INT NULL,
	product_height_cm INT NULL,
	product_width_cm INT NULL,
	FOREIGN KEY (product_category_name) REFERENCES category_name_translation(product_category_name)

);

