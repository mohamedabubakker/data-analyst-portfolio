CREATE TABLE sales_data (
    orderNumber INT,
    orderDate DATE,
    status VARCHAR(20),
    customerName VARCHAR(100),
    country VARCHAR(50),
    productLine VARCHAR(50),
    sales DECIMAL(10,2)
);

INSERT INTO sales_data VALUES
(10100, '2023-01-10', 'Shipped', 'Atelier graphique', 'France', 'Classic Cars', 5500.50),
(10101, '2023-01-15', 'Shipped', 'Signal Gift Stores', 'USA', 'Motorcycles', 3200.00),
(10102, '2023-02-01', 'Cancelled', 'Australian Collectors', 'Australia', 'Classic Cars', 4200.75),
(10103, '2023-02-10', 'Shipped', 'La Rochelle Gifts', 'France', 'Planes', 2100.00),
(10104, '2023-03-05', 'Shipped', 'Baane Mini Imports', 'Norway', 'Trucks and Buses', 6100.00);

SELECT country, SUM(sales) AS total_sales
FROM sales_data
GROUP BY country
ORDER BY total_sales DESC;

SELECT productLine, SUM(sales) AS total_sales
FROM sales_data
GROUP BY productLine;

SELECT country, SUM(sales) AS total_sales
FROM sales_data
GROUP BY country
ORDER BY total_sales DESC
LIMIT 3;
