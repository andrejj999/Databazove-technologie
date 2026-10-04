CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20) REFERENCES customers(customer_id),
    product_id VARCHAR(20) REFERENCES products(product_id),
    order_date DATE,
    ship_date DATE,
    sales DECIMAL(10, 2),
    quantity INT,
    discount DECIMAL(10, 2),
    profit DECIMAL(10, 2)
);