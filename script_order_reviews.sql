USE Olist_DB;

CREATE TABLE order_reviews (
    review_id UNIQUEIDENTIFIER PRIMARY KEY,
	order_id UNIQUEIDENTIFIER NOT NULL,
    review_score INT NULL,
    review_comment_title VARCHAR(32) NULL,
	review_comment_message VARCHAR(32) NULL,
	review_creation_date DATETIME NULL,
	"review_answer_timestamp" DATETIME NULL,
	FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

