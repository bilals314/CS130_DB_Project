-- Trigger 1: Update Warehouse Capacity
-- Purpose: Automatically update the warehouse’s percentage capacity when product stock changes.

CREATE TRIGGER UpdateWarehouseCapacity
ON products
AFTER UPDATE
AS
BEGIN
    UPDATE warehouses
    SET warehousePctCap = 
        CASE 
            WHEN EXISTS (SELECT 1 FROM inserted i WHERE i.warehouseCode = warehouses.warehouseCode)
            THEN CAST((SELECT SUM(quantityInStock) * 100.0 / 1000 AS INT) FROM products p WHERE p.warehouseCode = warehouses.warehouseCode) + '%'
            ELSE warehousePctCap
        END
    FROM inserted
    WHERE warehouses.warehouseCode = inserted.warehouseCode;
END;

-- Test the trigger
UPDATE products
SET quantityInStock = quantityInStock + 50
WHERE productCode = 'PK_MC_1001';



-- Trigger to update customer credit limit based on total spending after order details are inserted
CREATE TRIGGER UpdateCustomerCreditLimit
ON orderdetails
AFTER INSERT
AS
BEGIN
    -- Update credit limit for each customer affected by the inserted order details
    UPDATE c
    SET c.creditLimit = c.creditLimit + (
        SELECT SUM(i.quantityOrdered * i.priceEach) * 0.1
        FROM inserted i
        JOIN orders o ON i.orderNumber = o.orderNumber
        WHERE o.customerNumber = c.customerNumber
    )
    FROM customers c
    WHERE c.customerNumber IN (
        SELECT DISTINCT o.customerNumber
        FROM inserted i
        JOIN orders o ON i.orderNumber = o.orderNumber
    );
END;

-- Test the trigger
INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES (311, 'PK_MC_1002', 2, 85.50, 2);

-- Verify the trigger's effect
SELECT customerNumber, customerName, creditLimit
FROM customers
WHERE customerNumber = 216;

SELECT customerNumber, customerName, creditLimit
FROM customers
WHERE customerNumber = 210;