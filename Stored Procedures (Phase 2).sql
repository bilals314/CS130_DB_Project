-- Stored Procedure 1: Get Customer Order Summary
-- Purpose: Retrieve a summary of a customer’s orders, including total spent.

CREATE PROCEDURE GetCustomerOrderSummary
    @CustomerNumber INT
AS
BEGIN
    SELECT 
        c.customerNumber, 
        c.customerName, 
        COUNT(o.orderNumber) AS TotalOrders, 
        SUM(od.quantityOrdered * od.priceEach) AS TotalSpent
    FROM customers c
    LEFT JOIN orders o ON c.customerNumber = o.customerNumber
    LEFT JOIN orderdetails od ON o.orderNumber = od.orderNumber
    WHERE c.customerNumber = @CustomerNumber
    GROUP BY c.customerNumber, c.customerName;
END;

-- Execute the procedure
EXEC GetCustomerOrderSummary @CustomerNumber = 201;


-- Stored Procedure 2: Update Product Stock
-- Purpose: Update product stock based on an order and check for sufficient inventory.


CREATE PROCEDURE UpdateProductStock
    @ProductCode VARCHAR(15),
    @QuantityOrdered INT,
    @ErrorMessage NVARCHAR(100) OUTPUT
AS
BEGIN
    DECLARE @CurrentStock SMALLINT;

    SELECT @CurrentStock = quantityInStock
    FROM products
    WHERE productCode = @ProductCode;

    IF @CurrentStock >= @QuantityOrdered
    BEGIN
        UPDATE products
        SET quantityInStock = quantityInStock - @QuantityOrdered
        WHERE productCode = @ProductCode;
        SET @ErrorMessage = 'Stock updated successfully';
    END
    ELSE
    BEGIN
        SET @ErrorMessage = 'Insufficient stock for product ' + @ProductCode;
    END
END;

-- Execute the procedure
DECLARE @Error NVARCHAR(100);
EXEC UpdateProductStock @ProductCode = 'PK_MC_1001', @QuantityOrdered = 5, @ErrorMessage = @Error OUTPUT;
SELECT @Error AS Result;



