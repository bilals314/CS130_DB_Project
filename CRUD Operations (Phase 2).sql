-- Create (Insert) Queries
-- Purpose: Add new records to the database.

-- Insert a new customer
INSERT INTO customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country, postalCode, salesRepEmployeeNumber, creditLimit)
VALUES (216, 'Lahore Auto Hub', 'Khan', 'Asad', '+92-42-7890123', 'Gulberg II, Main Boulevard', 'Lahore', 'Pakistan', '54600', 1059, 40000.00);

-- Insert a new order
INSERT INTO orders (orderNumber, orderDate, requiredDate, status, customerNumber)
VALUES (316, '2025-06-10', '2025-06-17', 'In Process', 216);

-- Insert order details
INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES (316, 'PK_MC_1001', 3, 70.99, 1);


-- Read (Select) Queries
-- Purpose: Retrieve data for analysis or reporting.

-- Retrieve all products with their warehouse details
SELECT p.productCode, p.productName, p.quantityInStock, w.warehouseName, w.warehousePctCap
FROM products p
JOIN warehouses w ON p.warehouseCode = w.warehouseCode
WHERE p.quantityInStock > 0;

-- Retrieve order details for a specific customer
SELECT o.orderNumber, o.orderDate, o.status, od.productCode, od.quantityOrdered, od.priceEach
FROM orders o
JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE o.customerNumber = 201;

-- Retrieve employees and their office locations
SELECT e.employeeNumber, e.firstName, e.lastName, e.jobTitle, o.city, o.phone
FROM employees e
JOIN offices o ON e.officeCode = o.officeCode;


-- Update Queries
-- Purpose: Modify existing records.

-- Update product stock after a sale
UPDATE products
SET quantityInStock = quantityInStock - 2
WHERE productCode = 'PK_MC_1001';

-- Update customer credit limit
UPDATE customers
SET creditLimit = creditLimit + 5000.00
WHERE customerNumber = 201;

-- Update order status to 'Shipped'
UPDATE orders
SET status = 'Shipped', shippedDate = '2025-06-10'
WHERE orderNumber = 302;


-- Delete Queries
-- Purpose: Remove records while respecting constraints.

-- Delete an order and its details (must delete orderdetails first due to foreign key constraint)
DELETE FROM orderdetails WHERE orderNumber = 316;
DELETE FROM orders WHERE orderNumber = 316;

-- Delete a customer (only if they have no orders)
DELETE FROM customers WHERE customerNumber = 216 AND customerNumber NOT IN (SELECT customerNumber FROM orders);