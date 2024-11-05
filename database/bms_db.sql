-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2024 at 04:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(250) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@gmail.com', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `bakery_equipment_inventory`
--

CREATE TABLE `bakery_equipment_inventory` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `serial_no` varchar(100) DEFAULT NULL,
  `purchase_date` date NOT NULL,
  `status` enum('Good Working Condition','Not Working') NOT NULL,
  `last_service` date DEFAULT NULL,
  `maintenance_schedule` varchar(255) DEFAULT NULL,
  `purchase_cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bakery_equipment_inventory`
--

INSERT INTO `bakery_equipment_inventory` (`id`, `item_name`, `category`, `serial_no`, `purchase_date`, `status`, `last_service`, `maintenance_schedule`, `purchase_cost`) VALUES
(1, 'Industrial Oven', 'Baking', 'OV123456', '2022-05-10', 'Good Working Condition', '2023-03-15', 'Quarterly', 100000.00),
(2, 'Dough Mixer', 'Mixing', 'MX987654', '2021-07-22', 'Good Working Condition', '2023-01-10', 'Monthly', 25000.00),
(3, 'Refrigerator', 'Storage', 'RF543210', '2020-03-18', 'Good Working Condition', '2023-02-20', 'Bi-Annually', 15000.00),
(4, 'Proofing Cabinet', 'Baking', 'PC135792', '2022-01-05', 'Not Working', '0000-00-00', 'N/A', 20000.00),
(5, 'Baking Tray', 'Baking', 'BT246810', '2022-04-15', 'Good Working Condition', '2023-04-01', 'As Needed', 1000.00),
(6, 'Pastry Sheeter', 'Mixing', 'PS112233', '2021-08-30', 'Good Working Condition', '2023-03-05', 'Monthly', 18000.00),
(7, 'Bread Slicer', 'Cutting', 'BS445566', '2022-06-12', 'Good Working Condition', '2023-02-28', 'Quarterly', 12000.00),
(8, 'Cake Decorator', 'Decorating', 'CD778899', '2021-09-25', 'Good Working Condition', '2023-01-15', 'Monthly', 1200.00),
(9, 'Dough Divider', 'Mixing', 'DD101112', '2020-11-20', 'Not Working', '0000-00-00', 'N/A', 1500.00),
(10, 'Cooling Rack', 'Baking', 'CR131415', '2022-03-11', 'Good Working Condition', '2023-04-10', 'As Needed', 3500.00),
(11, 'Whisk', 'Mixing', 'WK161718', '2021-12-01', 'Good Working Condition', '2023-02-05', 'As Needed', 500.00),
(12, 'Oven Thermometer', 'Baking', 'OT192021', '2022-05-05', 'Good Working Condition', '2023-03-12', 'As Needed', 2500.00),
(13, 'Pizza Oven', 'Baking', 'PO222324', '2022-07-30', 'Good Working Condition', '2023-04-15', 'Quarterly', 150000.00),
(14, 'Cake Stand', 'Decorating', 'CS252627', '2021-10-10', 'Good Working Condition', '2023-01-20', 'As Needed', 1500.00),
(15, 'Mixer Attachments', 'Mixing', 'MA282930', '2022-02-15', 'Good Working Condition', '2023-03-20', 'As Needed', 2000.00);

-- --------------------------------------------------------

--
-- Table structure for table `bakery_products`
--

CREATE TABLE `bakery_products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bakery_products`
--

INSERT INTO `bakery_products` (`id`, `product_name`, `description`, `price`, `quantity`, `created_at`, `expiry_date`) VALUES
(1, 'vanilla cake', 'creamy vanilla cake ', 254.00, 5, '2024-10-28 17:46:02', '2024-01-15'),
(2, 'Chocolate Cake', 'Rich and moist chocolate cake topped with chocolate frosting.', 205.00, 23, '2024-10-28 17:48:12', '2024-02-10'),
(3, 'Vanilla Cupcake', 'Delicious vanilla cupcake with creamy vanilla frosting.', 200.50, 50, '2024-10-28 17:48:12', '2024-01-20'),
(4, 'Blueberry Muffin', 'Freshly baked muffin loaded with blueberries.', 80.00, 30, '2024-10-28 17:48:12', '2024-01-25'),
(5, 'Croissant', 'Flaky and buttery croissant, perfect for breakfast.', 150.00, 30, '2024-10-28 17:48:12', '2025-03-01'),
(6, 'Apple Pie', 'Classic apple pie with a flaky crust and sweet apple filling.', 150.00, 10, '2024-10-28 17:48:12', '2024-02-15'),
(7, 'Brownie', 'Fudgy brownie with walnuts, a chocolate lover\'s delight.', 200.00, 25, '2024-10-28 17:48:12', '2024-01-30'),
(8, 'Baguette', 'Crispy crust and soft inside, perfect for sandwiches.', 300.00, 20, '2024-10-28 17:48:12', '2024-01-28'),
(9, 'Cheesecake', 'Creamy cheesecake with a graham cracker crust.', 200.00, 5, '2024-10-28 17:48:12', '2024-02-05'),
(10, 'Pecan Tart', 'Delicious tart filled with pecans and caramel.', 400.00, 10, '2024-10-28 17:48:12', '2024-01-22'),
(11, 'Lemon Bar', 'Tangy lemon bar with a buttery crust.', 225.00, 20, '2024-10-28 17:48:12', '2024-03-01'),
(12, 'cake', 'normal cake', 255.00, 3, '2024-10-28 17:48:23', '2024-02-20'),
(15, 'Passion Cake', 'Delicious passion cupcake with creamy passion frosting.', 250.00, 8, '2024-11-02 12:10:25', '2024-11-21'),
(16, 'bread', 'sweat italian bread ', 150.00, 10, '2024-11-03 14:45:22', '2024-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `hiring_date` date NOT NULL,
  `salary` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `id_number`, `hiring_date`, `salary`) VALUES
(1, 'John Mwangi', '12345678', '2023-01-15', 10000.00),
(2, 'Jane Wambui', '23456789', '2023-03-10', 10000.00),
(3, 'Peter Otieno', '34567890', '2023-06-25', 10000.00),
(4, 'Mary Njeri', '45678901', '2023-07-30', 10000.00),
(5, 'James Kamau', '56789012', '2023-02-20', 10000.00);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_operational_bills`
--

CREATE TABLE `monthly_operational_bills` (
  `id` int(11) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(11) NOT NULL,
  `electricity_bill` decimal(10,2) NOT NULL,
  `water_bill` decimal(10,2) NOT NULL,
  `rent` decimal(10,2) NOT NULL,
  `salaries` decimal(10,2) NOT NULL,
  `other_expenses` decimal(10,2) NOT NULL,
  `total` decimal(10,2) GENERATED ALWAYS AS (`electricity_bill` + `water_bill` + `rent` + `salaries` + `other_expenses`) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monthly_operational_bills`
--

INSERT INTO `monthly_operational_bills` (`id`, `month`, `year`, `electricity_bill`, `water_bill`, `rent`, `salaries`, `other_expenses`) VALUES
(1, 'January', 2024, 15000.00, 4000.00, 25000.00, 60000.00, 20000.00),
(2, 'February', 2024, 14000.00, 3800.00, 25000.00, 60000.00, 21000.00),
(3, 'March', 2024, 16000.00, 4200.00, 25000.00, 60000.00, 20500.00),
(4, 'April', 2024, 15500.00, 3900.00, 25000.00, 60000.00, 21500.00),
(5, 'May', 2024, 16500.00, 4100.00, 25000.00, 60000.00, 22000.00),
(6, 'June', 2024, 17000.00, 4300.00, 25000.00, 60000.00, 22500.00),
(7, 'July', 2024, 18000.00, 4500.00, 25000.00, 60000.00, 23000.00),
(8, 'August', 2024, 17500.00, 4400.00, 25000.00, 60000.00, 23500.00),
(9, 'September', 2024, 19000.00, 4600.00, 25000.00, 60000.00, 24000.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `cake_type` enum('Cheesecake','Blackforest','Red Velvet','ButterCake','LemonCake') NOT NULL,
  `cake_description` text NOT NULL,
  `date_needed` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `order_number`, `cake_type`, `cake_description`, `date_needed`, `created_at`) VALUES
(1, 'Alice Kimani', 'alice@gmail.com', 'ORD001', 'Cheesecake', 'New York style cheesecake with strawberries.', '2024-11-13', '2024-10-29 14:25:01'),
(2, 'Bob Johnson', 'bob@gmail.com', 'ORD002', 'Blackforest', 'Classic black forest cake with cherries and whipped cream.', '2024-11-20', '2024-10-29 14:25:01'),
(3, 'Charlie Kamau', 'charlie@gmail.com', 'ORD003', 'Red Velvet', 'Red velvet cake with cream cheese frosting.', '2024-11-18', '2024-10-29 14:25:01'),
(4, 'Diana Wanjiru', 'diana@gmail.com', 'ORD004', 'ButterCake', 'Moist butter cake with vanilla flavor.', '2024-11-20', '2024-10-29 14:25:01'),
(5, 'Ethan Njau', 'ethan@gmail.com', 'ORD005', 'LemonCake', 'Zesty lemon cake with lemon glaze.', '2023-11-29', '2024-10-29 14:25:01'),
(6, 'John Mwangi', 'johnmwangi@gmail.com', 'ORD006', 'Red Velvet', 'Classic lemon cake with lemon glaze', '2024-11-06', '2024-11-02 12:20:18'),
(7, 'Brian Kamau', 'brian@gmail.com', 'ORD007', 'ButterCake', 'Moist Butter Cake', '2024-11-27', '2024-11-02 12:26:53'),
(8, 'Ryan Muriuki', 'ryanmuriuki@gmail.com', 'ORD008', 'LemonCake', 'lemon cake with banana topings', '2024-11-21', '2024-11-02 12:45:10'),
(9, 'Allan Ndiku', 'allan@gmail.com', 'ORD009', 'Blackforest', '2 blackforest cakes with cheries ontop', '2024-11-06', '2024-11-02 12:47:44'),
(10, 'John Maina', 'maina@gmail.com', 'ORD010', 'Blackforest', 'black forest cake with cream cheese frosting.', '2024-11-28', '2024-11-03 14:58:48'),
(11, 'Antony Kimani', 'kimani@gmail.com', 'ORD010', 'Blackforest', 'black forest cake with cream cheese frosting.', '2024-11-28', '2024-11-03 14:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity_sold` int(11) NOT NULL,
  `price_per_unit` decimal(10,2) NOT NULL,
  `total_sale` decimal(10,2) NOT NULL,
  `sale_date` datetime NOT NULL,
  `payment_method` enum('cash','mpesa') NOT NULL,
  `amount_given` decimal(10,2) DEFAULT NULL,
  `change_amount` decimal(10,2) DEFAULT NULL,
  `mpesa_transaction_code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `quantity_sold`, `price_per_unit`, `total_sale`, `sale_date`, `payment_method`, `amount_given`, `change_amount`, `mpesa_transaction_code`) VALUES
(1, 1, 5, 300.00, 1500.00, '2024-11-02 14:32:05', 'cash', 1500.00, 0.00, ''),
(2, 2, 2, 210.00, 420.00, '2024-11-02 14:32:52', 'mpesa', 420.00, 0.00, 'Qdrb4sg95ci'),
(3, 6, 5, 130.00, 650.00, '2024-11-02 15:26:36', 'cash', 700.00, 50.00, ''),
(4, 10, 2, 420.00, 840.00, '2024-11-02 15:40:24', 'mpesa', 840.00, 0.00, 'Hsvoe3gsd6qw'),
(5, 5, 8, 200.00, 1600.00, '2024-11-03 15:30:48', 'cash', 2000.00, 400.00, '');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `product_name`, `supplier_name`, `quantity`, `price`, `created_at`, `expiry_date`) VALUES
(1, 'Sugar', 'Sweeteners Inc.', 100, 50.00, '2024-11-02 10:07:52', '2025-12-31'),
(2, 'Wheat Flour', 'Grain Suppliers', 200, 75.00, '2024-11-02 10:07:52', '2025-11-30'),
(3, 'Baking Powder', 'Baking Essentials', 50, 120.00, '2024-11-02 10:07:52', '2025-10-15'),
(4, 'Salt', 'Mineral Resources', 150, 10.00, '2024-11-02 10:07:52', '2025-12-31'),
(5, 'Butter', 'Dairy Farm', 80, 250.00, '2024-11-02 10:07:52', '2025-08-01'),
(6, 'Yeast', 'Fermentation Co.', 60, 100.00, '2024-11-02 10:07:52', '2025-09-15'),
(7, 'Milk', 'Dairy Fresh', 90, 150.00, '2024-11-02 10:07:52', '2025-07-20'),
(8, 'Eggs', 'Farm Fresh', 120, 14.00, '2024-11-02 10:07:52', '2025-06-30'),
(9, 'Vanilla Extract', 'Flavor Co.', 30, 300.00, '2024-11-02 10:07:52', '2025-05-15'),
(10, 'Cocoa Powder', 'Chocolate Makers', 40, 250.00, '2024-11-02 10:07:52', '2025-04-10'),
(11, 'fats', 'kim.fats.co', 120, 130.00, '2024-11-02 13:03:17', '2025-12-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `username` (`email`);

--
-- Indexes for table `bakery_equipment_inventory`
--
ALTER TABLE `bakery_equipment_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serial_no` (`serial_no`);

--
-- Indexes for table `bakery_products`
--
ALTER TABLE `bakery_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_number` (`id_number`);

--
-- Indexes for table `monthly_operational_bills`
--
ALTER TABLE `monthly_operational_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bakery_equipment_inventory`
--
ALTER TABLE `bakery_equipment_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bakery_products`
--
ALTER TABLE `bakery_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `monthly_operational_bills`
--
ALTER TABLE `monthly_operational_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `bakery_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
