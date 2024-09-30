USE Olist_DB;

CREATE TABLE order_items (
    order_id UNIQUEIDENTIFIER NOT NULL,
	order_item_id UNIQUEIDENTIFIER NOT NULL,
    product_id UNIQUEIDENTIFIER NULL,
    seller_id UNIQUEIDENTIFIER NULL,
	shipping_limit_date DATETIME NULL,
	price DECIMAL (10,2) NULL,
	freight_value DECIMAL (10,2) NULL,
	FOREIGN KEY (order_id) REFERENCES orders(order_id),
	FOREIGN KEY (product_id) REFERENCES products(product_id),
	FOREIGN KEY (seller_id) REFERENCES sellers(seller_id)
);


