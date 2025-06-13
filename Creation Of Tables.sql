CREATE TABLE admin_users (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);

INSERT INTO admin_users VALUES ('admin', '1234');
-- Table structure for table `offices`
DROP TABLE IF EXISTS offices;
CREATE TABLE offices (
  officeCode varchar(10) NOT NULL,
  city varchar(50) NOT NULL,
  phone varchar(50) NOT NULL,
  addressLine1 varchar(50) NOT NULL,
  addressLine2 varchar(50) DEFAULT NULL,
  state varchar(50) DEFAULT NULL,
  country varchar(50) NOT NULL,
  postalCode varchar(15) NOT NULL,
  territory varchar(10) NOT NULL,
  PRIMARY KEY (officeCode)
) ;

-- Drop the table if it exists
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employeeNumber INT NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    extension VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL,
    officeCode VARCHAR(10) NOT NULL,
    reportsTo INT NULL,
    jobTitle VARCHAR(50) NOT NULL,
    PRIMARY KEY (employeeNumber),
    CONSTRAINT fk_employees_reportsTo FOREIGN KEY (reportsTo) REFERENCES employees (employeeNumber),
    CONSTRAINT fk_employees_officeCode FOREIGN KEY (officeCode) REFERENCES offices (officeCode)
);
-- Createing indexes 
CREATE INDEX idx_reportsTo ON employees (reportsTo);
CREATE INDEX idx_officeCode ON employees (officeCode);

-- Drop the table if it exists
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customerNumber INT NOT NULL,
    customerName VARCHAR(50) NOT NULL,
    contactLastName VARCHAR(50) NOT NULL,
    contactFirstName VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    addressLine1 VARCHAR(50) NOT NULL,
    addressLine2 VARCHAR(50) NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NULL,
    postalCode VARCHAR(15) NULL,
    country VARCHAR(50) NOT NULL,
    salesRepEmployeeNumber INT NULL,
    creditLimit DECIMAL(10,2) NULL,
    PRIMARY KEY (customerNumber),
    CONSTRAINT fk_customers_salesRep FOREIGN KEY (salesRepEmployeeNumber) REFERENCES employees (employeeNumber)
);

-- Createing indexs 
CREATE INDEX idx_salesRepEmployeeNumber ON customers (salesRepEmployeeNumber);

-- Table structure for table `products`
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    productCode varchar(15) NOT NULL,
    productName varchar(70) NOT NULL,
    productLine varchar(50) NOT NULL,
    productScale varchar(10) NOT NULL,
    productVendor varchar(50) NOT NULL,
    productDescription text NOT NULL,
    quantityInStock smallint NOT NULL,
    warehouseCode char(1) NOT NULL,
    buyPrice decimal(10,2) NOT NULL,
    MSRP decimal(10,2) NOT NULL,
    PRIMARY KEY (productCode)
);


-- Drop the table if it exists
DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    orderNumber int NOT NULL,
    orderDate date NOT NULL,
    requiredDate date NOT NULL,
    shippedDate date DEFAULT NULL,
    status varchar(15) NOT NULL,
    comments text,
    customerNumber int NOT NULL,
    PRIMARY KEY (orderNumber),
    CONSTRAINT fk_orders_customer FOREIGN KEY (customerNumber) REFERENCES customers (customerNumber)
);

-- Createing indexs 
CREATE INDEX idx_customerNumber ON orders (customerNumber);


-- Drop the table if it exists
DROP TABLE IF EXISTS orderdetails;

CREATE TABLE orderdetails (
    orderNumber int NOT NULL,
    productCode varchar(15) NOT NULL,
    quantityOrdered int NOT NULL,
    priceEach decimal(10,2) NOT NULL,
    orderLineNumber smallint NOT NULL,
    PRIMARY KEY (orderNumber, productCode),
    CONSTRAINT fk_orderdetails_order FOREIGN KEY (orderNumber) REFERENCES orders (orderNumber),
    CONSTRAINT fk_orderdetails_product FOREIGN KEY (productCode) REFERENCES products (productCode)
);

-- Createing indexs 
CREATE INDEX idx_productCode ON orderdetails (productCode);


-- Table structure for table `warehouses`
DROP TABLE IF EXISTS warehouses;
CREATE TABLE warehouses (
    warehouseCode char(1) NOT NULL,
    warehouseName varchar(45) NOT NULL,
    warehousePctCap varchar(50) NOT NULL,
    PRIMARY KEY (warehouseCode)
);





