--Insert Data to Product Table
SELECT * FROM  Product
SELECT * FROM Category
SELECT * FROM Supplier

INSERT INTO Product
(
    ProductName,
    ProductDescription,
    ProductPrice,
    ProductStock,
    CategoryID,
    SupplierID,
    CostPrice
)
VALUES
--Insert Laptops
-- ================= Dell =================
('Dell Inspiron 15 3530','Core i5 | 8GB RAM | 512GB SSD',23999,28,1,1,20800),
('Dell Inspiron 14 5430','Core i7 | 16GB RAM | 512GB SSD',30999,18,1,1,27000),
('Dell Latitude 5440','Core i7 | 16GB RAM | 512GB SSD',33999,12,1,1,29600),
('Dell Vostro 3520','Core i5 | 8GB RAM | 512GB SSD',21999,20,1,1,19000),
('Dell XPS 13','Core Ultra 7 | 16GB RAM | 1TB SSD',69999,5,1,1,62000),

-- ================= HP =================
('HP Pavilion 15','Core i5 | 8GB RAM | 512GB SSD',24999,22,1,2,21500),
('HP ProBook 450 G10','Core i7 | 16GB RAM | 512GB SSD',31999,15,1,2,27900),
('HP EliteBook 840 G10','Core i7 | 16GB RAM | 512GB SSD',42999,9,1,2,37800),
('HP Victus 15','Core i7 | RTX4050 | 16GB RAM',48999,8,1,2,43200),

-- ================= Lenovo =================
('Lenovo IdeaPad Slim 3','Ryzen 5 | 8GB RAM | 512GB SSD',22999,25,1,3,19800),
('Lenovo ThinkPad E14 Gen 5','Core i5 | 16GB RAM | 512GB SSD',29999,13,1,3,26100),
('Lenovo Yoga 7','Core Ultra 7 | 16GB RAM | 1TB SSD',53999,7,1,3,47500),
('Lenovo LOQ 15','Core i7 | RTX4060 | 16GB RAM',57999,6,1,3,51200),

-- ================= ASUS =================
('ASUS Vivobook 15','Core i5 | 8GB RAM | 512GB SSD',23999,24,1,10,20700),
('ASUS Zenbook 14 OLED','Core Ultra 7 | 16GB RAM | 1TB SSD',55999,7,1,10,49500),
('ASUS TUF Gaming A15','Ryzen 7 | RTX4060 | 16GB RAM',52999,8,1,10,46700),
('ASUS ROG Strix G16','Core i9 | RTX4070 | 32GB RAM',83999,4,1,10,74600),

-- ================= Apple =================
('MacBook Air M3 13','Apple M3 | 16GB RAM | 512GB SSD',63999,10,1,5,56800),
('MacBook Air M3 15','Apple M3 | 16GB RAM | 512GB SSD',73999,6,1,5,65900),
('MacBook Pro 14 M4 Pro','M4 Pro | 24GB RAM | 1TB SSD',112999,3,1,5,101500),

--Smartphones

-- ========== Samsung ==========
('Samsung Galaxy S24','256GB | 8GB RAM',33999,18,2,4,29500),
('Samsung Galaxy S24+','256GB | 12GB RAM',41999,12,2,4,36600),
('Samsung Galaxy S24 Ultra','512GB | 12GB RAM',58999,7,2,4,52200),
('Samsung Galaxy A56','256GB | 8GB RAM',18999,30,2,4,16100),
('Samsung Galaxy A36','128GB | 8GB RAM',14999,35,2,4,12700),
('Samsung Galaxy A26','128GB | 6GB RAM',10999,42,2,4,9300),
('Samsung Galaxy M55','256GB | 8GB RAM',17999,20,2,4,15300),
('Samsung Galaxy Z Flip6','512GB | 12GB RAM',64999,4,2,4,57500),
('Samsung Galaxy Z Fold6','512GB | 12GB RAM',94999,2,2,4,84500),
('Samsung Galaxy S23 FE','256GB | 8GB RAM',24999,15,2,4,21500),

-- ========== Apple ==========
('iPhone 16','128GB',46999,12,2,5,41200),
('iPhone 16 Plus','256GB',56999,8,2,5,50100),
('iPhone 16 Pro','256GB',69999,6,2,5,62000),
('iPhone 16 Pro Max','512GB',83999,4,2,5,74800),
('iPhone 15','128GB',38999,15,2,5,34100),
('iPhone 15 Plus','256GB',48999,10,2,5,43000),
('iPhone 15 Pro','256GB',62999,5,2,5,56000),
('iPhone SE 2025','128GB',26999,18,2,5,23600),
('iPhone 14','128GB',32999,20,2,5,28900),
('iPhone 14 Plus','256GB',41999,11,2,5,36800),

--Accessories

-- Logitech
('Logitech MX Master 3S','Wireless Mouse',4999,25,3,6,4100),
('Logitech M185','Wireless Mouse',699,80,3,6,520),
('Logitech G502 HERO','Gaming Mouse',2899,35,3,6,2350),
('Logitech K380','Bluetooth Keyboard',1999,40,3,6,1620),
('Logitech G213','Gaming Keyboard',2499,30,3,6,2050),
('Logitech C920 HD Pro','Webcam 1080p',3199,18,3,6,2650),
('Logitech H390','USB Headset',1499,35,3,6,1200),
('Logitech Z213','2.1 Speakers',1999,20,3,6,1650),

-- Kingston
('Kingston DataTraveler Exodia 64GB','USB 3.2 Flash Drive',499,120,3,8,350),
('Kingston DataTraveler Exodia 128GB','USB 3.2 Flash Drive',799,90,3,8,600),
('Kingston Canvas Select Plus 128GB','MicroSD Card',699,70,3,8,520),
('Kingston MobileLite Plus','Card Reader',499,45,3,8,360),

-- Samsung
('Samsung 25W Fast Charger','USB-C Charger',699,100,3,4,480),
('Samsung 45W Super Fast Charger','USB-C Charger',1299,65,3,4,930),
('Samsung USB-C Cable','1 Meter Cable',249,150,3,4,160),
('Samsung 10000mAh Power Bank','Fast Charging',1499,40,3,4,1180),

-- TP-Link
('TP-Link UH400','USB 3.0 Hub',699,40,3,7,510),
('TP-Link UE300','USB to Ethernet Adapter',799,30,3,7,620),
('TP-Link Bluetooth 5.3 Adapter','Nano USB Adapter',599,50,3,7,430),
('TP-Link USB Wi-Fi Adapter','AC600 Wireless Adapter',899,45,3,7,680),

--Gamming
('ASUS ROG Strix Scope II','Mechanical RGB Keyboard',6499,18,4,10,5300),
('ASUS ROG Chakram X','Wireless Gaming Mouse',4999,15,4,10,4100),
('ASUS ROG Delta S','Gaming Headset',5999,12,4,10,4850),
('ASUS ROG Sheath','Gaming Mouse Pad XL',999,40,4,10,730),
('ASUS ROG Eye S','Full HD Webcam',3499,10,4,10,2850),
('ASUS TUF Gaming K3','Mechanical Keyboard',3499,20,4,10,2800),
('ASUS TUF M4 Air','Gaming Mouse',2299,28,4,10,1800),
('ASUS TUF H3','Gaming Headset',2599,25,4,10,2050),
('ASUS ROG Swift PG27AQDM','27-inch OLED Gaming Monitor',44999,6,4,10,39100),
('ASUS TUF VG27AQ','27-inch 165Hz Gaming Monitor',16999,10,4,10,14500),
('ASUS ROG Throne Qi','Headset Stand',3299,15,4,10,2680),
('ASUS ROG Cetra True Wireless','Gaming Earbuds',4799,14,4,10,3920),
('ASUS ROG Falchion RX','Wireless Mechanical Keyboard',7899,8,4,10,6450),
('ASUS ROG Harpe Ace','Wireless Gaming Mouse',5599,11,4,10,4580),
('ASUS ROG Hone Ace XXL','Gaming Mouse Pad',1499,35,4,10,1120),

--Networking
('TP-Link Archer AX10','Wi-Fi 6 Dual Band Router',2499,30,5,7,1980),
('TP-Link Archer AX55','AX3000 Wi-Fi 6 Router',3999,20,5,7,3250),
('TP-Link Archer C64','AC1200 Dual Band Router',1799,40,5,7,1420),
('TP-Link Archer C80','AC1900 Wireless Router',2999,25,5,7,2390),
('TP-Link Deco X20','Mesh Wi-Fi 6 System (2-Pack)',6999,12,5,7,5650),
('TP-Link Deco M4','Mesh Wi-Fi System (2-Pack)',4299,18,5,7,3450),
('TP-Link TL-SG1005D','5-Port Gigabit Switch',899,55,5,7,670),
('TP-Link TL-SG1008D','8-Port Gigabit Switch',1399,45,5,7,1080),
('TP-Link TL-WN725N','Nano USB Wi-Fi Adapter',399,90,5,7,270),
('TP-Link Archer T3U','AC1300 USB Wi-Fi Adapter',999,60,5,7,760),
('TP-Link UE300','USB 3.0 Gigabit Ethernet Adapter',799,50,5,7,610),
('TP-Link RE305','AC1200 Wi-Fi Range Extender',1499,30,5,7,1180),
('TP-Link RE650','AC2600 Range Extender',3199,15,5,7,2590),
('TP-Link TL-POE160S','PoE Injector',1199,20,5,7,930),
('TP-Link TL-PA4010 KIT','Powerline Ethernet Kit',2299,18,5,7,1840),

--Storage
('Kingston NV2 500GB','PCIe 4.0 NVMe SSD',1999,45,6,8,1580),
('Kingston NV2 1TB','PCIe 4.0 NVMe SSD',3599,38,6,8,2890),
('Kingston KC3000 1TB','PCIe 4.0 NVMe SSD',5799,22,6,8,4680),
('Kingston A400 240GB','2.5 SATA SSD',1299,60,6,8,980),
('Kingston A400 480GB','2.5 SATA SSD',2299,50,6,8,1780),
('Kingston A400 960GB','2.5 SATA SSD',4199,25,6,8,3350),
('Kingston XS1000 1TB','Portable External SSD USB-C',4299,20,6,8,3490),
('Kingston XS1000 2TB','Portable External SSD USB-C',7299,12,6,8,6020),
('Kingston DataTraveler Exodia 64GB','USB 3.2 Flash Drive',499,120,6,8,350),
('Kingston DataTraveler Exodia 128GB','USB 3.2 Flash Drive',799,100,6,8,590),
('Kingston DataTraveler Max 256GB','USB 3.2 Flash Drive',1799,55,6,8,1380),
('Kingston Canvas Select Plus 64GB','MicroSD Class 10',399,140,6,8,280),
('Kingston Canvas Select Plus 128GB','MicroSD Class 10',699,110,6,8,510),
('Kingston Canvas Go! Plus 256GB','MicroSD UHS-I',1499,65,6,8,1160),
('Kingston FURY Beast 16GB DDR4','3200MHz Desktop RAM',1899,40,6,8,1490),

--Monitors

-- Dell
('Dell P2422H','24-inch IPS FHD Monitor',6499,18,7,1,5200),
('Dell S2721HN','27-inch IPS FHD Monitor',7999,14,7,1,6450),
('Dell UltraSharp U2723QE','27-inch 4K IPS Monitor',28999,5,7,1,24500),

-- HP
('HP M24f','24-inch IPS FHD Monitor',5999,20,7,2,4800),
('HP X27q','27-inch QHD Gaming Monitor',11999,12,7,2,9800),

-- Samsung
('Samsung Odyssey G5','27-inch 165Hz QHD Monitor',14999,10,7,4,12400),
('Samsung Smart Monitor M7','32-inch 4K Smart Monitor',16999,8,7,4,14100),

-- ASUS
('ASUS TUF VG249Q','24-inch 144Hz IPS Monitor',9999,15,7,10,8150),
('ASUS ProArt PA278QV','27-inch QHD Professional Monitor',13999,9,7,10,11600),
('ASUS ROG Swift PG27AQDM','27-inch OLED Gaming Monitor',44999,4,7,10,38900),

--Printers

-- ================= HP =================
('HP LaserJet Pro M404dn','Mono Laser Printer',8999,12,8,2,7400),
('HP LaserJet M211dw','Wireless Mono Laser Printer',6499,18,8,2,5300),
('HP Smart Tank 580','All-in-One Ink Tank Printer',5999,20,8,2,4850),
('HP Smart Tank 790','Duplex All-in-One Printer',9999,10,8,2,8250),
('HP OfficeJet Pro 9023','Wireless Office Printer',11999,8,8,2,9800),

-- ================= Canon =================
('Canon PIXMA G3430','Wireless Ink Tank Printer',6499,22,8,9,5300),
('Canon PIXMA G4470','All-in-One Ink Tank Printer',7999,15,8,9,6550),
('Canon imageCLASS LBP6030','Mono Laser Printer',4999,25,8,9,3980),
('Canon MAXIFY GX3040','Business Ink Tank Printer',13999,7,8,9,11600),
('Canon PIXMA TS5340a','Wireless Color Printer',4499,18,8,9,3580);

