-- Data Insertion in Offices Table
INSERT INTO offices (officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory)
VALUES
('PK1', 'Islamabad', '+92-51-111-222-333', 'Plot 123, G-7 Markaz', NULL, 'Islamabad Capital Territory', 'Pakistan', '44000', 'APAC'),
('PK2', 'Karachi', '+92-21-45678901', 'Main Clifton Road, Block 5', NULL, 'Sindh', 'Pakistan', '75600', 'APAC'),
('PK3', 'Lahore', '+92-42-12345678', 'The Mall Road, Anarkali', NULL, 'Punjab', 'Pakistan', '54000', 'APAC'),
('PK4', 'Rawalpindi', '+92-51-98765432', 'Murree Road, Saddar', NULL, 'Punjab', 'Pakistan', '46000', 'APAC'),
('PK5', 'Peshawar', '+92-91-11223344', 'University Road, Hayatabad', NULL, 'Khyber Pakhtunkhwa', 'Pakistan', '25000', 'APAC'),
('PK6', 'Faisalabad', '+92-41-5556677', 'Clock Tower, Jinnah Colony', NULL, 'Punjab', 'Pakistan', '38000', 'APAC'),
('PK7', 'Multan', '+92-61-8889900', 'Abdali Road, Gulgasht Colony', NULL, 'Punjab', 'Pakistan', '60000', 'APAC'),
('PK8', 'Quetta', '+92-81-22233445', 'Jinnah Road, Cantt', NULL, 'Balochistan', 'Pakistan', '87300', 'APAC'),
('PK9', 'Sialkot', '+92-52-4445566', 'Paris Road, Defence Road', NULL, 'Punjab', 'Pakistan', '51310', 'APAC'),
('PK10', 'Gujranwala', '+92-55-7778899', 'GT Road, Satellite Town', NULL, 'Punjab', 'Pakistan', '52250', 'APAC'),
('PK11', 'Hyderabad', '+92-22-3334455', 'Thandi Sarak, Latifabad', NULL, 'Sindh', 'Pakistan', '71000', 'APAC'),
('PK12', 'Sargodha', '+92-48-9990011', 'University Road, Civil Lines', NULL, 'Punjab', 'Pakistan', '40100', 'APAC'),
('PK13', 'Abbottabad', '+92-992-112233', 'Mansehra Road, Supply', NULL, 'Khyber Pakhtunkhwa', 'Pakistan', '22000', 'APAC'),
('PK14', 'Bahawalpur', '+92-62-55566778', 'Circular Road, Model Town', NULL, 'Punjab', 'Pakistan', '63100', 'APAC'),
('PK15', 'Sukkur', '+92-71-222334456', 'Military Road, Barrage Colony', NULL, 'Sindh', 'Pakistan', '65200', 'APAC')
;

select * from offices;


-- Data Insertion in Employees Table
INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
VALUES
(1056, 'Khan', 'Ahmed', 'x101', 'a.khan@pakmodelcars.com', 'PK1', NULL, 'Regional Manager'),
(1057, 'Ali', 'Fatima', 'x102', 'f.ali@pakmodelcars.com', 'PK2', 1056, 'Office Manager'),
(1058, 'Raza', 'Hassan', 'x103', 'h.raza@pakmodelcars.com', 'PK3', 1056, 'Sales Manager'),
(1059, 'Malik', 'Sana', 'x104', 's.malik@pakmodelcars.com', 'PK1', 1057, 'Sales Representative'),
(1060, 'Siddiqui', 'Imran', 'x105', 'i.siddiqui@pakmodelcars.com', 'PK2', 1057, 'Sales Representative'),
(1061, 'Butt', 'Aisha', 'x106', 'a.butt@pakmodelcars.com', 'PK3', 1058, 'Sales Representative'),
(1062, 'Cheema', 'Usman', 'x107', 'u.cheema@pakmodelcars.com', 'PK4', 1056, 'Office Manager'),
(1063, 'Akhtar', 'Nadia', 'x108', 'n.akhtar@pakmodelcars.com', 'PK5', 1056, 'Office Manager'),
(1064, 'Javed', 'Kamran', 'x109', 'k.javed@pakmodelcars.com', 'PK4', 1062, 'Sales Representative'),
(1065, 'Ansari', 'Sidra', 'x110', 's.ansari@pakmodelcars.com', 'PK5', 1063, 'Sales Representative'),
(1066, 'Mirza', 'Ali', 'x111', 'a.mirza@pakmodelcars.com', 'PK6', 1056, 'Sales Manager'),
(1067, 'Yousaf', 'Hina', 'x112', 'h.yousaf@pakmodelcars.com', 'PK7', 1056, 'Sales Manager'),
(1068, 'Abbasi', 'Fahad', 'x113', 'f.abbasi@pakmodelcars.com', 'PK6', 1066, 'Sales Representative'),
(1069, 'Shaikh', 'Zara', 'x114', 'z.shaikh@pakmodelcars.com', 'PK7', 1067, 'Sales Representative'),
(1070, 'Qureshi', 'Bilal', 'x115', 'b.qureshi@pakmodelcars.com', 'PK8', 1056, 'Office Manager')
;

select * from employees;


-- Data Insertion in Customers Table
INSERT INTO customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit)
VALUES
(201, 'Pak Wheels (Pvt) Ltd', 'Khan', 'Imran', '+92-42-111-943-357', '20-K, Gulberg III', NULL, 'Lahore', 'Punjab', '54660', 'Pakistan', 1058, 50000.00),
(202, 'Auto Mart Islamabad', 'Malik', 'Ayesha', '+92-51-222-8888', 'Plot 5, Industrial Area', NULL, 'Islamabad', 'Islamabad Capital Territory', '44000', 'Pakistan', 1059, 35000.00),
(203, 'Karachi Car Centre', 'Siddiqui', 'Faisal', '+92-21-34567890', 'Main Rashid Minhas Road', NULL, 'Karachi', 'Sindh', '75400', 'Pakistan', 1060, 42000.00),
(204, 'Peshawar Auto Traders', 'Yousafzai', 'Bilal', '+92-91-5876543', 'Jamrud Road, University Town', NULL, 'Peshawar', 'Khyber Pakhtunkhwa', '25000', 'Pakistan', 1065, 28000.00),
(205, 'Faisalabad Vehicle Zone', 'Ahmed', 'Sobia', '+92-41-2654321', 'D Ground, Peoples Colony', NULL, 'Faisalabad', 'Punjab', '38000', 'Pakistan', 1068, 31000.00),
(206, 'Rawalpindi Wheels', 'Riaz', 'Kamran', '+92-51-5551212', 'Commercial Market, Satellite Town', NULL, 'Rawalpindi', 'Punjab', '46000', 'Pakistan', 1064, 38000.00),
(207, 'Multan Motors', 'Qureshi', 'Hina', '+92-61-4567890', 'Hussain Agahi Road', NULL, 'Multan', 'Punjab', '60000', 'Pakistan', 1069, 25000.00),
(208, 'Quetta Auto Sales', 'Baloch', 'Asif', '+92-81-2889900', 'Brewery Road, Quetta Cantt', NULL, 'Quetta', 'Balochistan', '87300', 'Pakistan', 1070, 22000.00),
(209, 'Sialkot Auto House', 'Ali', 'Nadia', '+92-52-4561234', 'Shahabpura Road', NULL, 'Sialkot', 'Punjab', '51310', 'Pakistan', 1059, 33000.00),
(210, 'Gujranwala Cars', 'Butt', 'Usman', '+92-55-3334444', 'GT Road, Near DC Colony', NULL, 'Gujranwala', 'Punjab', '52250', 'Pakistan', 1061, 29000.00),
(211, 'Hyderabad Auto World', 'Shaikh', 'Zoya', '+92-22-2778899', 'Thandi Sarak, Cantonment', NULL, 'Hyderabad', 'Sindh', '71000', 'Pakistan', 1060, 36000.00),
(212, 'Sargodha Motors', 'Khan', 'Omar', '+92-48-5550011', 'University Road, Block A', NULL, 'Sargodha', 'Punjab', '40100', 'Pakistan', 1064, 27000.00),
(213, 'Abbottabad Vehicles', 'Abbasi', 'Sara', '+92-992-334455', 'Mansehra Road, Near Ayub Medical', NULL, 'Abbottabad', 'Khyber Pakhtunkhwa', '22000', 'Pakistan', 1065, 30000.00),
(214, 'Bahawalpur Auto Mall', 'Javed', 'Fahad', '+92-62-2889900', 'Circular Road, Model Town A', NULL, 'Bahawalpur', 'Punjab', '63100', 'Pakistan', 1068, 24000.00),
(215, 'Sukkur Car Plaza', 'Mirza', 'Hassan', '+92-71-5678901', 'Military Road, Lab-e-Mehran', NULL, 'Sukkur', 'Sindh', '65200', 'Pakistan', 1069, 32000.00)
;

select * from customers;


-- Data Insertion in Products Table
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, warehouseCode, buyPrice, MSRP)
VALUES
('PK_MC_1001', '1969 Ford Mustang GT', 'Classic Cars', '1:18', 'GT Models Pakistan', 'Detailed diecast model of the iconic 1969 Ford Mustang GT.', 350, 'A', 35.50, 70.99),
('PK_MC_1002', '1957 Chevrolet Bel Air', 'Classic Cars', '1:18', 'Vintage Auto Replicas', 'Authentic replica of the classic 1957 Chevrolet Bel Air.', 280, 'B', 42.75, 85.50),
('PK_MC_1003', '1965 Volkswagen Beetle', 'Vintage Cars', '1:24', 'Herbie Collectibles', 'Charming diecast model of the original Volkswagen Beetle.', 410, 'A', 18.20, 36.49),
('PK_MC_1004', '1968 Chevrolet Camaro Z28', 'Classic Cars', '1:18', 'Muscle Car Models', 'Highly detailed model of the powerful 1968 Chevrolet Camaro Z28.', 320, 'B', 38.90, 77.80),
('PK_MC_1005', '1932 Ford Coupe', 'Vintage Cars', '1:18', 'Hot Rod Replicas', 'Beautifully crafted diecast model of the 1932 Ford Coupe hot rod.', 250, 'A', 45.20, 90.40),
('PK_MB_2001', 'Honda CD 70 Motorcycle', 'Motorcycles', '1:10', 'Atlas Honda Models', 'Accurate scale model of the popular Honda CD 70 motorcycle.', 550, 'C', 15.80, 31.60),
('PK_MB_2002', 'Suzuki GS 150 Motorcycle', 'Motorcycles', '1:10', 'Pak Suzuki Replicas', 'Detailed diecast replica of the Suzuki GS 150 motorcycle.', 480, 'C', 19.50, 39.00),
('PK_TB_3001', 'Bedford TJ Truck', 'Trucks and Buses', '1:43', 'Retro Truck Models', 'Classic Bedford TJ truck diecast model.', 190, 'D', 28.60, 57.20),
('PK_TB_3002', 'Leyland Comet Bus', 'Trucks and Buses', '1:43', 'Vintage Bus Collectibles', 'Detailed scale model of the iconic Leyland Comet bus.', 160, 'D', 32.15, 64.30),
('PK_SC_4002', 'JF-17 Thunder', 'Planes', '1:72', 'PAC Kamra Models', 'Detailed replica of the PAC JF-17 Thunder fighter jet.', 200, 'E', 25.75, 51.50),
('PK_RC_6001', 'Tractor Trolley', 'Agriculture', '1:32', 'Farm Model Replicas', 'Detailed scale model of a typical Pakistani tractor trolley.', 120, 'G', 21.40, 42.80),
('PK_RC_6002', 'Rickshaw - Auto', 'Local Transport', '1:18', 'City Transport Models', 'Diecast model of a traditional auto-rickshaw.', 300, 'G', 16.70, 33.40),
('PK_MC_1006', '1970 Dodge Challenger', 'Classic Cars', '1:18', 'American Muscle Models', 'Detailed diecast of the 1970 Dodge Challenger.', 290, 'B', 39.50, 79.00),
('PK_MB_2003', 'United US 125 Motorcycle', 'Motorcycles', '1:10', 'United Auto Industries', 'Scale model of the United US 125 motorcycle.', 510, 'C', 17.20, 34.40),
('PK_TB_3003', 'Suzuki Bolan Van', 'Trucks and Buses', '1:43', 'Local Van Models', 'Diecast model of the popular Suzuki Bolan van.', 210, 'D', 25.90, 51.80),
('PK_SC_4003', 'Saab JAS 39 Gripen', 'Planes', '1:72', 'European Aircraft Models', 'Scale model of the Saab JAS 39 Gripen fighter jet.', 180, 'E', 27.10, 54.20)
;

select * from products;


-- Data Insertion in Orders Table
INSERT INTO orders (orderNumber, orderDate, requiredDate, shippedDate, status, comments, customerNumber)
VALUES
(301, '2025-05-01', '2025-05-08', '2025-05-05', 'Shipped', NULL, 201),
(302, '2025-05-02', '2025-05-10', NULL, 'In Process', 'Customer requested urgent delivery', 203),
(303, '2025-05-03', '2025-05-12', '2025-05-07', 'Shipped', NULL, 202),
(304, '2025-05-03', '2025-05-11', NULL, 'In Process', NULL, 205),
(305, '2025-05-04', '2025-05-13', '2025-05-08', 'Shipped', NULL, 204),
(306, '2025-05-05', '2025-05-14', NULL, 'Pending', 'Payment pending', 207),
(307, '2025-05-05', '2025-05-15', '2025-05-09', 'Shipped', NULL, 206),
(308, '2025-05-06', '2025-05-16', NULL, 'In Process', NULL, 209),
(309, '2025-05-06', '2025-05-17', '2025-05-10', 'Shipped', NULL, 208),
(310, '2025-05-07', '2025-05-18', NULL, 'Pending', 'Awaiting stock', 211),
(311, '2025-05-07', '2025-05-19', '2025-05-11', 'Shipped', NULL, 210),
(312, '2025-05-07', '2025-05-20', NULL, 'In Process', NULL, 213),
(313, '2025-05-08', '2025-05-21', '2025-05-12', 'Shipped', NULL, 212),
(314, '2025-05-08', '2025-05-22', NULL, 'Pending', 'Customer inquiry', 215),
(315, '2025-05-08', '2025-05-23', '2025-05-13', 'Shipped', NULL, 214)
;


select * from orders;


-- Data Insertion in OrderDetails Table
INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES
(301, 'PK_MC_1001', 2, 70.99, 1),
(301, 'PK_MB_2001', 1, 31.60, 2),
(302, 'PK_MC_1002', 1, 85.50, 1),
(303, 'PK_MC_1003', 4, 36.49, 1),
(304, 'PK_MC_1004', 1, 77.80, 1),
(304, 'PK_RC_6001', 1, 42.80, 2),
(305, 'PK_MC_1005', 2, 90.40, 1),
(305, 'PK_MB_2002', 3, 39.00, 2),
(306, 'PK_TB_3001', 1, 57.20, 1),
(306, 'PK_SC_4002', 2, 51.50, 2),
(307, 'PK_RC_6002', 2, 33.40, 2),
(308, 'PK_MC_1006', 1, 79.00, 1),
(308, 'PK_MB_2003', 4, 34.40, 2),
(309, 'PK_TB_3002', 1, 64.30, 1),
(309, 'PK_SC_4003', 1, 54.20, 2),
(310, 'PK_RC_6001', 1, 42.80, 2);


select * From orderdetails;


-- Data Insertion in Warehouses Table
INSERT INTO warehouses (warehouseCode, warehouseName, warehousePctCap)
VALUES
('A', 'Islamabad Warehouse', '85%'),
('B', 'Karachi Central Depot', '78%'),
('C', 'Lahore Logistics Hub', '92%'),
('D', 'Rawalpindi Storage', '65%'),
('E', 'Peshawar Distribution Center', '80%'),
('F', 'Faisalabad Inventory', '70%'),
('G', 'Multan Regional Warehouse', '88%')
;

SELECT * FROM warehouses;
