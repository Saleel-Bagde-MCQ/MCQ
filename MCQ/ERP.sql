DROP TABLE IF EXISTS audit_log;
DROP TABLE IF EXISTS production_batch;
DROP TABLE IF EXISTS tank_dispatch;
DROP TABLE IF EXISTS tank_filling;
DROP TABLE IF EXISTS sales_details;
DROP TABLE IF EXISTS sales_order;
DROP TABLE IF EXISTS purchase_details;
DROP TABLE IF EXISTS purchase_order;
DROP TABLE IF EXISTS stock;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS tank_maintenance;
DROP TABLE IF EXISTS tank_level_history;
DROP TABLE IF EXISTS tank;
DROP TABLE IF EXISTS supplier;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS company;

CREATE TABLE company (
    company_id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(100),
    address VARCHAR(200),
    gst_no VARCHAR(20),
    contact_no VARCHAR(15)
);

INSERT INTO company (company_name, address, gst_no, contact_no) VALUES
('ABC Petro Chemicals Ltd', 'Plot No. 12, MIDC Industrial Area, Pune, Maharashtra', '27ABCDE1234F1Z5', '9876543210'),

('Global Fuels Corporation', 'Survey No. 45, Hinjewadi Phase 2, Pune, Maharashtra', '27GLOBA5678K1Z2', '9823012345'),

('Western Energy Solutions', 'GIDC Industrial Estate, Ahmedabad, Gujarat', '24WESTE7890M1Z7', '9898765432'),

('National Oil Storage Pvt Ltd', 'Sector 18, Navi Mumbai, Maharashtra', '27NATIO3456P1Z8', '9811122233'),

('Green Petroleum Industries', 'Industrial Area, Nagpur, Maharashtra', '27GREEN6543R1Z4', '9765432109'),

('Supreme Tank Farms Ltd', 'Plot No. 88, Dahej Industrial Zone, Gujarat', '24SUPRE9876T1Z9', '9922334455'),

('Prime Petro Logistics', 'Port Road, Visakhapatnam, Andhra Pradesh', '37PRIME4321Y1Z1', '9988776655'),

('Eastern Oil Terminals', 'Haldia Dock Complex, West Bengal', '19EASTE8765Q1Z3', '9433001122'),

('Indian Bulk Storage Ltd', 'Taloja MIDC, Raigad, Maharashtra', '27INDIA2345N1Z6', '9870011223'),

('Universal Petro Products', 'Industrial Area, Vadodara, Gujarat', '24UNIVE6789L1Z5', '9090909090');

CREATE TABLE department (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50)
);

INSERT INTO department (dept_name) VALUES
('Administration'), 

('Finance'),

('Human Resources'),

('Operations'),

('Maintenance'),

('Production'),

('Quality Control'),

('Procurement'),

('Logistics'),

('Sales'),

('Marketing'),

('Information Technology'),

('Safety & Compliance'),

('Research & Development'),

('Customer Support');


CREATE TABLE employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY(dept_id)
    REFERENCES department(dept_id)
);

INSERT INTO employee (emp_name, designation, salary, dept_id) VALUES
('Rajesh Sharma', 'General Manager', 95000.00, 1),

('Anita Verma', 'Finance Manager', 85000.00, 2),

('Priya Kulkarni', 'HR Manager', 80000.00, 3),

('Sandeep Patil', 'Operations Manager', 90000.00, 4),

('Vikram Joshi', 'Maintenance Engineer', 65000.00, 5),

('Amit Deshpande', 'Production Supervisor', 55000.00, 6),

('Neha Deshmukh', 'Quality Analyst', 60000.00, 7),

('Kiran Nair', 'Procurement Officer', 50000.00, 8),

('Sunil Gupta', 'Logistics Coordinator', 48000.00, 9),

('Rohit Agarwal', 'Sales Executive', 45000.00, 10),

('Meena Patil', 'Marketing Executive', 47000.00, 11),

('Ajay Mehta', 'System Administrator', 70000.00, 12),

('Pooja Shah', 'Safety Officer', 58000.00, 13),

('Arun Kulkarni', 'Research Associate', 62000.00, 14),

('Sneha Joshi', 'Customer Support Executive', 40000.00, 15),

('Mahesh Pawar', 'Accountant', 42000.00, 2),

('Deepak More', 'HR Executive', 38000.00, 3),

('Nitin Jadhav', 'Plant Operator', 35000.00, 4),

('Rakesh Singh', 'Maintenance Technician', 32000.00, 5),

('Komal Gupta', 'Quality Inspector', 37000.00, 7);

CREATE TABLE customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    mobile VARCHAR(15),
    gst_no VARCHAR(20)
);

INSERT INTO customer (customer_name, city, mobile, gst_no) VALUES

('Reliance Industries Ltd', 'Mumbai', '9876543210', '27AABCR1718E1ZP'),

('Bharat Petroleum Corporation Ltd', 'Mumbai', '9876543211', '27AAACB2902M1ZX'),

('Indian Oil Corporation Ltd', 'New Delhi', '9876543212', '07AAACI1681G1Z7'),

('Hindustan Petroleum Corporation Ltd', 'Mumbai', '9876543213', '27AAACH1118B1ZO'),

('Tata Chemicals Ltd', 'Pune', '9876543214', '27AAACT4056M1ZU'),

('Adani Wilmar Ltd', 'Ahmedabad', '9876543215', '24AANCA8056D1ZQ'),

('Larsen & Toubro Ltd', 'Chennai', '9876543216', '33AAACL0140P1Z2'),

('JSW Steel Ltd', 'Mumbai', '9876543217', '27AAACJ4323N1Z5'),

('Mahindra & Mahindra Ltd', 'Pune', '9876543218', '27AAACM3025E1ZV'),

('Godrej Industries Ltd', 'Mumbai', '9876543219', '27AAACG1395D1ZC'),

('Asian Paints Ltd', 'Mumbai', '9876543220', '27AAACA3622K1ZJ'),

('Pidilite Industries Ltd', 'Mumbai', '9876543221', '27AAACP0895K1Z8'),

('UltraTech Cement Ltd', 'Mumbai', '9876543222', '27AAACU3564P1ZK'),

('ACC Limited', 'Nagpur', '9876543223', '27AAACA5443F1ZL'),

('Birla Corporation Ltd', 'Kolkata', '9876543224', '19AAACB0821P1Z2');

CREATE TABLE supplier (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100),
    city VARCHAR(50),
    mobile VARCHAR(15),
    gst_no VARCHAR(20)
);

INSERT INTO supplier (supplier_name, city, mobile, gst_no) VALUES
('Indian Oil Corporation Ltd', 'Mumbai', '9876500001', '27AAACI1681G1Z7'),

('Bharat Petroleum Corporation Ltd', 'Mumbai', '9876500002', '27AAACB2902M1ZX'),

('Hindustan Petroleum Corporation Ltd', 'Mumbai', '9876500003', '27AAACH1118B1ZO'),

('Reliance Industries Ltd', 'Jamnagar', '9876500004', '24AABCR1718E1ZP'),

('Nayara Energy Ltd', 'Vadodara', '9876500005', '24AAACN9876M1ZQ'),

('Adani Petrochemicals Pvt Ltd', 'Ahmedabad', '9876500006', '24AAACA4567K1ZR'),

('Essar Oil & Gas Ltd', 'Surat', '9876500007', '24AAACE7890P1ZS'),

('Gujarat Refinery Suppliers', 'Vadodara', '9876500008', '24AAACG3456N1ZT'),

('Western Chemical Traders', 'Pune', '9876500009', '27AAACW5678D1ZU'),

('Maharashtra Fuel Suppliers', 'Nagpur', '9876500010', '27AAACM6789R1ZV'),

('Prime Petroleum Products', 'Navi Mumbai', '9876500011', '27AAACP1234F1ZW'),

('National Lubricants Ltd', 'Chennai', '9876500012', '33AAACN2345G1ZX'),

('Southern Energy Resources', 'Hyderabad', '9876500013', '36AAACS3456H1ZY'),

('Eastern Oil Distributors', 'Kolkata', '9876500014', '19AAACE4567J1ZZ'),

('Universal Petro Suppliers', 'Pune', '9876500015', '27AAACU5678K1ZA');

CREATE TABLE tank (
    tank_id INT PRIMARY KEY AUTO_INCREMENT,
    tank_code VARCHAR(20) UNIQUE,
    tank_name VARCHAR(100),
    tank_type VARCHAR(50),
    capacity_ltr DECIMAL(12,2),
    material VARCHAR(50),
    installation_date DATE,
    status ENUM('Active','Maintenance','Inactive')
);

CREATE TABLE tank_level_history (
    level_id INT PRIMARY KEY AUTO_INCREMENT,
    tank_id INT,
    reading_datetime DATETIME,
    current_volume DECIMAL(12,2),
    temperature DECIMAL(5,2),
    FOREIGN KEY(tank_id)
    REFERENCES tank(tank_id)
);

INSERT INTO tank
(tank_code, tank_name, tank_type, capacity_ltr, material, installation_date, status)
VALUES
('TK001', 'Crude Oil Storage Tank A', 'Fixed Roof', 500000.00, 'Carbon Steel', '2018-01-15', 'Active'),

('TK002', 'Crude Oil Storage Tank B', 'Fixed Roof', 500000.00, 'Carbon Steel', '2018-03-10', 'Active'),

('TK003', 'Diesel Storage Tank 1', 'Floating Roof', 250000.00, 'Carbon Steel', '2019-06-20', 'Active'),

('TK004', 'Diesel Storage Tank 2', 'Floating Roof', 250000.00, 'Carbon Steel', '2019-08-12', 'Maintenance'),

('TK005', 'Petrol Storage Tank 1', 'Underground', 100000.00, 'Stainless Steel', '2020-02-18', 'Active'),

('TK006', 'Petrol Storage Tank 2', 'Underground', 100000.00, 'Stainless Steel', '2020-05-22', 'Active'),

('TK007', 'Kerosene Storage Tank', 'Fixed Roof', 150000.00, 'Carbon Steel', '2017-11-30', 'Active'),

('TK008', 'Lubricant Storage Tank', 'Horizontal Cylindrical', 75000.00, 'Stainless Steel', '2021-04-05', 'Active'),

('TK009', 'Chemical Storage Tank A', 'Vertical Cylindrical', 120000.00, 'FRP', '2022-01-10', 'Active'),

('TK010', 'Chemical Storage Tank B', 'Vertical Cylindrical', 120000.00, 'FRP', '2022-03-25', 'Maintenance'),

('TK011', 'Water Storage Tank', 'Fixed Roof', 300000.00, 'Concrete', '2016-07-15', 'Active'),

('TK012', 'Fire Water Tank', 'Fixed Roof', 200000.00, 'Concrete', '2016-09-01', 'Active'),

('TK013', 'Waste Oil Tank', 'Horizontal Cylindrical', 50000.00, 'Carbon Steel', '2021-11-12', 'Inactive'),

('TK014', 'Biofuel Storage Tank', 'Floating Roof', 180000.00, 'Stainless Steel', '2023-02-08', 'Active'),

('TK015', 'Aviation Fuel Tank', 'Fixed Roof', 400000.00, 'Carbon Steel', '2020-12-15', 'Active');

CREATE TABLE tank_maintenance (
    maintenance_id INT PRIMARY KEY AUTO_INCREMENT,
    tank_id INT,
    maintenance_date DATE,
    description TEXT,
    cost DECIMAL(10,2),
    status VARCHAR(30),
    FOREIGN KEY(tank_id)
    REFERENCES tank(tank_id)
);

INSERT INTO tank_maintenance
(tank_id, maintenance_date, description, cost, status)
VALUES
(1, '2025-01-10', 'Internal cleaning and sludge removal', 45000.00, 'Completed'),

(2, '2025-02-05', 'Roof inspection and corrosion treatment', 32000.00, 'Completed'),

(3, '2025-02-18', 'Level sensor calibration', 12000.00, 'Completed'),

(4, '2025-03-12', 'Floating roof seal replacement', 85000.00, 'In Progress'),

(5, '2025-03-25', 'Underground pipeline leak inspection', 28000.00, 'Completed'),

(6, '2025-04-08', 'Tank pressure testing', 15000.00, 'Completed'),

(7, '2025-04-15', 'Valve replacement and safety check', 22000.00, 'Completed'),

(8, '2025-04-22', 'Lubricant tank cleaning', 10000.00, 'Completed'),

(9, '2025-05-03', 'FRP wall crack repair', 40000.00, 'Completed'),

(10, '2025-05-10', 'Chemical residue removal and coating inspection', 55000.00, 'Scheduled'),

(11, '2025-05-18', 'Water tank desilting and cleaning', 18000.00, 'Completed'),

(12, '2025-05-20', 'Fire water tank pump connection inspection', 25000.00, 'Completed'),

(13, '2025-05-25', 'Waste oil disposal and tank cleaning', 30000.00, 'Pending'),

(14, '2025-06-01', 'Biofuel tank safety audit', 20000.00, 'In Progress'),

(15, '2025-06-05', 'Aviation fuel tank integrity testing', 60000.00, 'Scheduled'),
(1, '2024-09-15', 'External painting and rust removal', 70000.00, 'Completed'),

(3, '2024-10-12', 'Gauge calibration and inspection', 14000.00, 'Completed'),

(5, '2024-11-20', 'Tank vent cleaning', 9000.00, 'Completed'),

(7, '2024-12-05', 'Emergency shutdown valve testing', 16000.00, 'Completed'),

(11, '2024-12-18', 'Overflow alarm system maintenance', 11000.00, 'Completed');

CREATE TABLE item (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100),
    unit VARCHAR(20),
    reorder_level INT,
    selling_price DECIMAL(10,2)
);

INSERT INTO item
(item_name, unit, reorder_level, selling_price)
VALUES
('Diesel', 'Litre', 10000, 92.50),

('Petrol', 'Litre', 8000, 105.75),

('Kerosene', 'Litre', 5000, 78.25),

('Aviation Turbine Fuel (ATF)', 'Litre', 12000, 115.00),

('Lubricating Oil', 'Litre', 1000, 250.00),

('Engine Oil 20W40', 'Litre', 500, 320.00),

('Hydraulic Oil', 'Litre', 500, 290.00),

('Grease', 'Kg', 200, 180.00),

('Bitumen', 'Kg', 5000, 55.00),

('Industrial Solvent', 'Litre', 1000, 145.00),

('Methanol', 'Litre', 500, 85.00),

('Ethanol', 'Litre', 1000, 75.00),

('Biodiesel', 'Litre', 3000, 98.00),

('Cooling Water', 'Litre', 20000, 2.50),

('Fire Suppressant Foam', 'Litre', 200, 450.00),

('Storage Tank Valve', 'Nos', 20, 2500.00),

('Pressure Gauge', 'Nos', 10, 1800.00),

('Level Sensor', 'Nos', 5, 7500.00),

('Pipeline Gasket', 'Nos', 100, 120.00),

('Safety Helmet', 'Nos', 50, 650.00);

CREATE TABLE stock (
    stock_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT,
    quantity DECIMAL(12,2),
    last_updated DATETIME,
    FOREIGN KEY(item_id)
    REFERENCES item(item_id)
);

INSERT INTO stock
(item_id, quantity, last_updated)
VALUES

(1, 150000.00, '2026-06-01 08:30:00'),

(2, 120000.00, '2026-06-01 08:35:00'),

(3, 45000.00, '2026-06-01 08:40:00'),

(4, 80000.00, '2026-06-01 08:45:00'),

(5, 2500.00, '2026-06-01 09:00:00'),

(6, 1200.00, '2026-06-01 09:05:00'),

(7, 900.00, '2026-06-01 09:10:00'),

(8, 350.00, '2026-06-01 09:15:00'),

(9, 25000.00, '2026-06-01 09:20:00'),

(10, 1800.00, '2026-06-01 09:25:00'),

(11, 750.00, '2026-06-01 09:30:00'),

(12, 5000.00, '2026-06-01 09:35:00'),

(13, 8500.00, '2026-06-01 09:40:00'),

(14, 50000.00, '2026-06-01 09:45:00'),

(15, 120.00, '2026-06-01 09:50:00'),

(16, 35.00, '2026-06-01 09:55:00'),

(17, 18.00, '2026-06-01 10:00:00'),

(18, 8.00, '2026-06-01 10:05:00'),

(19, 250.00, '2026-06-01 10:10:00'),

(20, 75.00, '2026-06-01 10:15:00');

CREATE TABLE purchase_order (
    po_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_id INT,
    po_date DATE,
    total_amount DECIMAL(12,2),
    FOREIGN KEY(supplier_id)
    REFERENCES supplier(supplier_id)
);

INSERT INTO purchase_order
(supplier_id, po_date, total_amount)
VALUES
(1, '2026-01-05', 1250000.00),

(2, '2026-01-12', 980000.00),

(3, '2026-01-18', 1450000.00),

(4, '2026-02-02', 2100000.00),

(5, '2026-02-10', 875000.00),

(6, '2026-02-15', 650000.00),

(7, '2026-02-22', 720000.00),

(8, '2026-03-01', 540000.00),

(9, '2026-03-08', 125000.00),

(10, '2026-03-15', 98000.00),

(11, '2026-03-20', 450000.00),

(12, '2026-04-05', 325000.00),

(13, '2026-04-12', 280000.00),

(14, '2026-04-18', 190000.00),

(15, '2026-04-25', 410000.00),

(1, '2026-05-02', 1350000.00),

(2, '2026-05-10', 1125000.00),

(4, '2026-05-18', 2450000.00),

(5, '2026-05-25', 950000.00),

(7, '2026-06-01', 680000.00);

CREATE TABLE purchase_details (
    pd_id INT PRIMARY KEY AUTO_INCREMENT,
    po_id INT,
    item_id INT,
    quantity DECIMAL(12,2),
    rate DECIMAL(10,2),
    amount DECIMAL(12,2),
    FOREIGN KEY(po_id)
    REFERENCES purchase_order(po_id),
    FOREIGN KEY(item_id)
    REFERENCES item(item_id)
);

INSERT INTO purchase_details
(po_id, item_id, quantity, rate, amount)
VALUES
-- PO 1
(1, 1, 10000.00, 88.00, 880000.00),
(1, 5, 1000.00, 220.00, 220000.00),
(1, 8, 500.00, 300.00, 150000.00),

-- PO 2
(2, 2, 8000.00, 95.00, 760000.00),
(2, 6, 500.00, 310.00, 155000.00),

-- PO 3
(3, 4, 12000.00, 110.00, 1320000.00),
(3, 7, 400.00, 325.00, 130000.00),

-- PO 4
(4, 1, 15000.00, 87.50, 1312500.00),
(4, 2, 7000.00, 94.00, 658000.00),

-- PO 5
(5, 3, 9000.00, 72.00, 648000.00),
(5, 11, 2000.00, 80.00, 160000.00),

-- PO 6
(6, 10, 3000.00, 125.00, 375000.00),
(6, 12, 3500.00, 70.00, 245000.00),

-- PO 7
(7, 13, 6000.00, 90.00, 540000.00),
(7, 8, 1000.00, 180.00, 180000.00),

-- PO 8
(8, 9, 8000.00, 50.00, 400000.00),
(8, 19, 1000.00, 120.00, 120000.00),

-- PO 9
(9, 16, 30.00, 2500.00, 75000.00),
(9, 17, 20.00, 1800.00, 36000.00),

-- PO 10
(10, 20, 100.00, 600.00, 60000.00),
(10, 19, 300.00, 120.00, 36000.00),

-- PO 11
(11, 5, 1500.00, 225.00, 337500.00),
(11, 6, 350.00, 320.00, 112000.00),

-- PO 12
(12, 18, 15.00, 7000.00, 105000.00),
(12, 17, 40.00, 1800.00, 72000.00),

-- PO 13
(13, 7, 800.00, 280.00, 224000.00),
(13, 8, 300.00, 180.00, 54000.00),

-- PO 14
(14, 15, 250.00, 450.00, 112500.00),
(14, 20, 100.00, 650.00, 65000.00),

-- PO 15
(15, 10, 2500.00, 140.00, 350000.00),
(15, 19, 500.00, 120.00, 60000.00),

-- PO 16
(16, 1, 12000.00, 89.00, 1068000.00),
(16, 5, 1200.00, 235.00, 282000.00),

-- PO 17
(17, 2, 10000.00, 96.00, 960000.00),
(17, 13, 1500.00, 92.00, 138000.00),

-- PO 18
(18, 1, 18000.00, 88.00, 1584000.00),
(18, 2, 8000.00, 95.00, 760000.00),

-- PO 19
(19, 3, 12000.00, 73.00, 876000.00),
(19, 11, 1000.00, 74.00, 74000.00),

-- PO 20
(20, 14, 50000.00, 2.00, 100000.00),
(20, 15, 800.00, 450.00, 360000.00);


CREATE TABLE sales_order (
    so_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(12,2),
    FOREIGN KEY(customer_id)
    REFERENCES customer(customer_id)
);

INSERT INTO sales_order
(customer_id, order_date, total_amount)
VALUES
(1, '2026-01-08', 1450000.00),

(2, '2026-01-15', 1125000.00),

(3, '2026-01-22', 1850000.00),

(4, '2026-02-05', 950000.00),

(5, '2026-02-12', 720000.00),

(6, '2026-02-18', 680000.00),

(7, '2026-03-01', 2350000.00),

(8, '2026-03-08', 1650000.00),

(9, '2026-03-15', 875000.00),

(10, '2026-03-22', 540000.00),

(11, '2026-04-02', 1250000.00),

(12, '2026-04-10', 980000.00),

(13, '2026-04-18', 1100000.00),

(14, '2026-04-25', 760000.00),

(15, '2026-05-05', 690000.00),

(1, '2026-05-12', 1550000.00),

(3, '2026-05-18', 2100000.00),

(5, '2026-05-25', 850000.00),

(8, '2026-06-01', 1750000.00),

(10, '2026-06-05', 620000.00);

CREATE TABLE sales_details (
    sd_id INT PRIMARY KEY AUTO_INCREMENT,
    so_id INT,
    item_id INT,
    quantity DECIMAL(12,2),
    rate DECIMAL(10,2),
    amount DECIMAL(12,2),
    FOREIGN KEY(so_id)
    REFERENCES sales_order(so_id),
    FOREIGN KEY(item_id)
    REFERENCES item(item_id)
);

INSERT INTO sales_details
(so_id, item_id, quantity, rate, amount)
VALUES
-- SO 1
(1, 1, 12000.00, 92.50, 1110000.00),
(1, 5, 1200.00, 250.00, 300000.00),

-- SO 2
(2, 2, 9000.00, 105.75, 951750.00),
(2, 6, 500.00, 320.00, 160000.00),

-- SO 3
(3, 4, 15000.00, 115.00, 1725000.00),
(3, 7, 400.00, 290.00, 116000.00),

-- SO 4
(4, 3, 10000.00, 78.25, 782500.00),
(4, 8, 900.00, 180.00, 162000.00),

-- SO 5
(5, 10, 4000.00, 145.00, 580000.00),
(5, 12, 1800.00, 75.00, 135000.00),

-- SO 6
(6, 13, 6000.00, 98.00, 588000.00),

(6, 8, 500.00, 180.00, 90000.00),

-- SO 7
(7, 1, 18000.00, 92.50, 1665000.00),
(7, 2, 6000.00, 105.75, 634500.00),

-- SO 8
(8, 4, 12000.00, 115.00, 1380000.00),
(8, 5, 1000.00, 250.00, 250000.00),

-- SO 9
(9, 9, 10000.00, 55.00, 550000.00),
(9, 19, 2000.00, 120.00, 240000.00),

-- SO 10
(10, 16, 50.00, 2500.00, 125000.00),
(10, 20, 600.00, 650.00, 390000.00),

-- SO 11
(11, 1, 10000.00, 92.50, 925000.00),
(11, 13, 3000.00, 98.00, 294000.00),

-- SO 12
(12, 10, 5000.00, 145.00, 725000.00),
(12, 11, 2500.00, 85.00, 212500.00),

-- SO 13
(13, 5, 2000.00, 250.00, 500000.00),
(13, 6, 1800.00, 320.00, 576000.00),

-- SO 14
(14, 17, 100.00, 1800.00, 180000.00),
(14, 18, 80.00, 7500.00, 600000.00),

-- SO 15
(15, 15, 1000.00, 450.00, 450000.00),
(15, 20, 350.00, 650.00, 227500.00),

-- SO 16
(16, 1, 13000.00, 92.50, 1202500.00),
(16, 5, 1400.00, 250.00, 350000.00),

-- SO 17

(17, 2, 15000.00, 105.75, 1586250.00),
(17, 13, 5000.00, 98.00, 490000.00),

-- SO 18

(18, 3, 9000.00, 78.25, 704250.00),
(18, 10, 1000.00, 145.00, 145000.00),

-- SO 19
(19, 4, 14000.00, 115.00, 1610000.00),
(19, 7, 400.00, 290.00, 116000.00),

-- SO 20

(20, 19, 1000.00, 120.00, 120000.00),
(20, 20, 750.00, 650.00, 487500.00);

CREATE TABLE tank_filling (
    filling_id INT PRIMARY KEY AUTO_INCREMENT,
    tank_id INT,
    supplier_id INT,
    filling_date DATETIME,
    quantity DECIMAL(12,2),
    FOREIGN KEY(tank_id)
    REFERENCES tank(tank_id),
    FOREIGN KEY(supplier_id)
    REFERENCES supplier(supplier_id)
);

INSERT INTO tank_filling
(tank_id, supplier_id, filling_date, quantity)
VALUES
(1, 1, '2026-01-05 08:30:00', 100000.00),

(2, 2, '2026-01-08 09:15:00', 85000.00),

(3, 3, '2026-01-12 10:00:00', 50000.00),

(4, 4, '2026-01-15 11:30:00', 60000.00),

(5, 5, '2026-01-18 14:00:00', 25000.00),

(6, 6, '2026-02-02 08:45:00', 30000.00),

(7, 7, '2026-02-06 09:20:00', 45000.00),

(8, 8, '2026-02-10 10:30:00', 15000.00),

(9, 9, '2026-02-14 13:15:00', 35000.00),

(10, 10, '2026-02-18 15:00:00', 40000.00),

(11, 11, '2026-03-01 08:00:00', 120000.00),

(12, 12, '2026-03-05 09:45:00', 80000.00),

(13, 13, '2026-03-09 11:00:00', 12000.00),

(14, 14, '2026-03-12 14:20:00', 50000.00),

(15, 15, '2026-03-16 16:00:00', 90000.00),

(1, 2, '2026-04-04 08:30:00', 95000.00),

(3, 4, '2026-04-08 10:15:00', 55000.00),

(5, 6, '2026-04-12 12:00:00', 30000.00),

(7, 8, '2026-04-16 13:30:00', 40000.00),

(9, 10, '2026-04-20 15:00:00', 25000.00),

(2, 3, '2026-05-02 09:00:00', 100000.00),

(4, 5, '2026-05-06 10:45:00', 70000.00),

(6, 7, '2026-05-10 11:30:00', 35000.00),

(8, 9, '2026-05-14 13:15:00', 18000.00),
(10, 11, '2026-05-18 14:45:00', 45000.00),

(11, 12, '2026-05-22 08:15:00', 100000.00),

(12, 13, '2026-05-25 09:30:00', 75000.00),

(13, 14, '2026-05-28 10:45:00', 15000.00),

(14, 15, '2026-05-30 12:00:00', 60000.00),

(15, 1, '2026-06-01 15:30:00', 85000.00);

CREATE TABLE tank_dispatch (
    dispatch_id INT PRIMARY KEY AUTO_INCREMENT,
    tank_id INT,
    customer_id INT,
    dispatch_date DATETIME,
    quantity DECIMAL(12,2),
    FOREIGN KEY(tank_id)
    REFERENCES tank(tank_id),
    FOREIGN KEY(customer_id)
    REFERENCES customer(customer_id)
);

INSERT INTO tank_dispatch
(tank_id, customer_id, dispatch_date, quantity)
VALUES
(1, 1, '2026-01-07 09:00:00', 25000.00),

(2, 2, '2026-01-10 10:30:00', 20000.00),

(3, 3, '2026-01-14 11:15:00', 15000.00),

(4, 4, '2026-01-17 13:00:00', 18000.00),

(5, 5, '2026-01-20 15:45:00', 10000.00),

(6, 6, '2026-02-03 08:30:00', 12000.00),

(7, 7, '2026-02-07 09:45:00', 22000.00),

(8, 8, '2026-02-11 11:00:00', 8000.00),

(9, 9, '2026-02-15 14:15:00', 16000.00),

(10, 10, '2026-02-19 16:00:00', 14000.00),

(11, 11, '2026-03-02 08:00:00', 30000.00),

(12, 12, '2026-03-06 09:30:00', 25000.00),

(13, 13, '2026-03-10 10:45:00', 5000.00),

(14, 14, '2026-03-13 13:20:00', 20000.00),

(15, 15, '2026-03-17 15:00:00', 28000.00),

(1, 3, '2026-04-05 09:15:00', 30000.00),

(2, 5, '2026-04-09 10:45:00', 22000.00),

(3, 7, '2026-04-13 12:30:00', 18000.00),

(4, 9, '2026-04-17 14:00:00', 20000.00),

(5, 11, '2026-04-21 15:30:00', 12000.00),

(6, 13, '2026-05-03 08:45:00', 15000.00),

(7, 15, '2026-05-07 10:15:00', 25000.00),

(8, 2, '2026-05-11 11:30:00', 9000.00),

(9, 4, '2026-05-15 13:45:00', 18000.00),

(10, 6, '2026-05-19 15:15:00', 16000.00),

(11, 8, '2026-05-23 08:30:00', 35000.00),

(12, 10, '2026-05-26 09:45:00', 28000.00),

(13, 12, '2026-05-29 11:00:00', 7000.00),

(14, 1, '2026-05-31 14:15:00', 22000.00),

(15, 5, '2026-06-02 16:00:00', 30000.00);


CREATE TABLE production_batch (
    batch_id INT PRIMARY KEY AUTO_INCREMENT,
    batch_date DATE,
    tank_id INT,
    quantity_produced DECIMAL(12,2),
    FOREIGN KEY(tank_id)
    REFERENCES tank(tank_id)
);

INSERT INTO production_batch
(batch_date, tank_id, quantity_produced)
VALUES
('2026-01-05', 1, 25000.00),

('2026-01-08', 2, 22000.00),

('2026-01-12', 3, 18000.00),

('2026-01-15', 4, 20000.00),

('2026-01-18', 5, 12000.00),

('2026-02-02', 6, 15000.00),

('2026-02-06', 7, 17000.00),

('2026-02-10', 8, 8000.00),

('2026-02-14', 9, 14000.00),

('2026-02-18', 10, 16000.00),

('2026-03-01', 11, 30000.00),

('2026-03-05', 12, 25000.00),

('2026-03-09', 13, 5000.00),

('2026-03-12', 14, 22000.00),

('2026-03-16', 15, 28000.00),

('2026-04-04', 1, 27000.00),

('2026-04-08', 3, 19000.00),

('2026-04-12', 5, 13000.00),

('2026-04-16', 7, 18000.00),

('2026-04-20', 9, 15000.00),

('2026-05-02', 2, 24000.00),

('2026-05-06', 4, 21000.00),

('2026-05-10', 6, 16000.00),

('2026-05-14', 8, 9000.00),

('2026-05-18', 10, 17000.00),

('2026-05-22', 11, 32000.00),

('2026-05-25', 12, 26000.00),

('2026-05-28', 13, 6000.00),

('2026-05-30', 14, 23000.00),

('2026-06-01', 15, 30000.00);

CREATE TABLE audit_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    table_name VARCHAR(50),
    operation_type VARCHAR(20),
    operation_date DATETIME,
    user_name VARCHAR(50)
);

INSERT INTO audit_log
(table_name, operation_type, operation_date, user_name)
VALUES
('company', 'INSERT', '2026-01-01 09:15:00', 'admin'),

('department', 'INSERT', '2026-01-01 09:30:00', 'admin'),

('employee', 'INSERT', '2026-01-02 10:00:00', 'hr_manager'),

('customer', 'INSERT', '2026-01-03 11:20:00', 'sales_admin'),

('supplier', 'INSERT', '2026-01-03 11:45:00', 'purchase_admin'),

('tank', 'INSERT', '2026-01-05 08:30:00', 'plant_admin'),

('tank', 'UPDATE', '2026-01-10 14:15:00', 'plant_admin'),

('tank_maintenance', 'INSERT', '2026-01-12 09:00:00', 'maintenance_mgr'),

('tank_maintenance', 'UPDATE', '2026-01-15 16:20:00', 'maintenance_mgr'),

('item', 'INSERT', '2026-01-18 10:10:00', 'inventory_admin'),
('stock', 'INSERT', '2026-01-18 10:30:00', 'inventory_admin'),

('stock', 'UPDATE', '2026-01-25 15:45:00', 'inventory_admin'),

('purchase_order', 'INSERT', '2026-02-01 09:00:00', 'purchase_exec'),

('purchase_details', 'INSERT', '2026-02-01 09:15:00', 'purchase_exec'),

('purchase_order', 'UPDATE', '2026-02-02 11:30:00', 'purchase_manager'),

('sales_order', 'INSERT', '2026-02-05 10:00:00', 'sales_exec'),

('sales_details', 'INSERT', '2026-02-05 10:20:00', 'sales_exec'),

('sales_order', 'UPDATE', '2026-02-06 12:45:00', 'sales_manager'),

('tank_filling', 'INSERT', '2026-02-10 08:15:00', 'operations_user'),

('tank_dispatch', 'INSERT', '2026-02-12 14:30:00', 'operations_user'),

('production_batch', 'INSERT', '2026-03-01 09:00:00', 'production_mgr'),

('production_batch', 'UPDATE', '2026-03-01 17:00:00', 'production_mgr'),

('employee', 'UPDATE', '2026-03-10 11:15:00', 'hr_manager'),

('customer', 'UPDATE', '2026-03-12 13:20:00', 'sales_admin'),

('supplier', 'UPDATE', '2026-03-15 15:10:00', 'purchase_admin'),

('stock', 'DELETE', '2026-04-01 10:45:00', 'inventory_admin'),
('tank_maintenance', 'DELETE', '2026-04-05 11:30:00', 'maintenance_mgr'),

('sales_order', 'DELETE', '2026-04-10 16:00:00', 'sales_manager'),

('purchase_order', 'DELETE', '2026-04-12 14:20:00', 'purchase_manager'),

('audit_log', 'INSERT', '2026-05-01 09:00:00', 'system');




update purchase_order set total_amount = (select sum(amount) from purchase_details where purchase_details.po_id = purchase_order.po_id group by po_id);


update sales_order set total_amount = (select sum(rate * quantity) from sales_details where sales_order.so_id = sales_details.so_id);