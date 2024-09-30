USE Olist_DB;

CREATE TABLE order_payments (
    order_id UNIQUEIDENTIFIER NOT NULL,
    payment_sequential INT NULL,
    payment_type VARCHAR(32) NULL,
    review_comment_message VARCHAR(32) NULL,
    payment_installments INT NULL,
    payment_value DECIMAL(10,2) NULL
);