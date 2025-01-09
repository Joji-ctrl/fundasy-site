-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 12:20 PM
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
-- Database: `jcotech`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `brandname` varchar(100) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `img2` varchar(256) NOT NULL,
  `img3` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `brandname`, `img1`, `description`, `featured`, `img2`, `img3`) VALUES
(1, 'TUF Gaming F15', 79995, 'ASUS', '/website/imgs/ASUS TUF Gaming F15.png', '(15\" FHD IPS 120HZ R7-3750 8G 1TB + 512G PCIE2 RTX2060 6GD5)\r\n', 4, '/website/imgs/tuf2.png', '/website/imgs/tuf3.png'),
(2, 'G Pro X Superlight', 6950, 'LOGITECH', '/website/imgs/LOGITECH G Pro X Superlight.webp', 'Less than 63 grams. Advanced low-latency LIGHTSPEED wireless. Sub-micron precision with HERO 25K sensor.', 6, '/website/imgs/gpro1.png', '/website/imgs/gpro2.png'),
(3, 'Playstation PS5 Console Disc Version', 30790, 'SONY', '/website/imgs/ps51.png', 'x86-64-AMD Ryzen™ “Zen 2”; 8 Cores / 16 Threads; Variable frequency, up to 3.5 GHz', 5, '/website/imgs/ps52.png', '/website/imgs/ps53.png'),
(4, 'ROG Phone 8 Pro', 75995, 'REPUBLIC OF GAMERS', '/website/imgs/rog8pro1.png', 'Snapdragon® 8 Gen 3, 6.78-inch Samsung AMOLED with LTPO technology, 2500 nits peak brightness, 6-Axis Hybrid Gimbal Stabilizer-equipped camera', 2, '/website/imgs/rog8pro2.png', '/website/imgs/rog8pro3.png'),
(5, 'XIAOMI Pad 6', 20167, 'XIAOMI', '/website/imgs/XIAOMI Pad 6.png', '11\" 2880 x 1800, 2.8K, 309ppi; Qualcomm Snapdragon 870; 8840 mAh\r\n33W Fast Charging, 100% in 100mins;\r\n8GB+256GB', 3, '/website/imgs/xpad2.png', '/website/imgs/xpad3.png'),
(6, 'Galaxy S24 Ultra', 101990, 'SAMSUNG', '/website/imgs/SG1.png', '1TB ROM, 12GB RAM, Qualcomm SM8650-AC Snapdragon 8 Gen 3 (4 nm), 200 MP, f/1.7, 24mm (wide), 1/1.3\", 0.6µm, multi-directional PDAF, Laser AF, OIS', 2, '/website/imgs/SG2.png', '/website/imgs/SG3.png'),
(7, 'MI 11 Ultra', 57171, 'XIAOMI', '/website/imgs/x1.png', 'Flagship Qualcomm® Snapdragon™ 888, 12GB+256GB, Quad-curved display, WQHD+ 6.81” AMOLED DotDisplay, 50MP wide-angle camera', 2, '/website/imgs/x22.png', '/website/imgs/x33.png'),
(8, '15 Pro Max', 84990, 'Apple', '/website/imgs/ip1.png', 'LTPO Super Retina XDR OLED, 120Hz, HDR10, Dolby Vision, 1000 nits (typ), 2000 nits (HBM), Apple A17 Pro (3 nm), 48 MP, f/1.8, 24mm (wide), 1/1.28\", 1.22µm, dual pixel PDAF, sensor-shift OIS', 2, '/website/imgs/ip2.png', '/website/imgs/ip3.png'),
(9, 'iPad (10th Generation)', 49990, 'Apple', '/website/imgs/ipd1.png', 'A14 Bionic chip, \r\n12MP Wide camera, ƒ/1.8 aperture, \r\n4K video recording at 24 fps, 25 fps, 30 fps, or 60 fps, Wi-Fi 6 (802.11ax) with 2x2 MIMO; speeds up to 1.2 Gbps', 3, '/website/imgs/ipd2.png', '/website/imgs/ipd3.png'),
(10, 'Galaxy Tab S9', 85990, 'SAMSUNG', '/website/imgs/gt1.png', 'Our largest Dynamic AMOLED 2X tablet.\r\nMore durable than ever and water resistant.\r\nOur most powerful S Pen. Unrivaled Snapdragon® 8 Gen 2 performance. Dynamic AMOLED 2X. Uniform brilliance', 3, '/website/imgs/gt2.png', '/website/imgs/gt3.png'),
(11, 'OnePlus Pad', 22990, 'ONEPLUS', '/website/imgs/op1.png', '7:5 144 Hz Display\r\nData Sharing to 5G\r\n1-Month Standby Life\r\n67W SUPERVOOC', 3, '/website/imgs/op2.png', '/website/imgs/op3.png'),
(12, 'MacBook Pro', 104990, 'APPLE', '/website/imgs/mb1.png', 'Apple M3 chip, 8‑core CPU with 4 performance cores and 4 efficiency cores, Hardware-accelerated H.264, HEVC, ProRes, and ProRes RAW, Liquid Retina XDR display, 36GB unified memory', 4, '/website/imgs/mb3.png', '/website/imgs/mb2.png'),
(13, 'Legion Pro 7i', 169995, 'LENOVO', '/website/imgs/lp1.png', 'Powered by up to 13th Gen Intel® Core™ i9-13900HX, NVIDIA® GeForce RTX™ 4090 Laptop GPU. Powered by NVIDIA DLSS 3, 16″ WQXGA (2560 x 1600), 16:10 aspect ratio, 240Hz variable refresh rate', 4, '/website/imgs/lp2.png', '/website/imgs/lp3.png'),
(14, 'Nitro 7', 58999, 'ACER', '/website/imgs/an1.png', '15.6-inch, FHD IPS, 144Hz / 3ms, Core™ i7, GeForce RTX™, 32GB / 3 X M.2, 5.0GHZ, Intel® Wi-Fi 6', 4, '/website/imgs/an2.png', '/website/imgs/an3.png'),
(15, 'Xbox Series X', 26450, 'XBOX', '/website/imgs/xb1.png', 'TRUE 4K Gaming, UP TO 120 FPS, 8K HDR, Xbox Velocity Architecture, 3D Spatial Sound, Dolby Vision and Dolby Atmos', 5, '/website/imgs/xb2.png', '/website/imgs/xb3.png'),
(16, 'Switch – OLED Model', 20000, 'NINTENDO', '/website/imgs/ns1.png', '7-inch OLED screen, Wide adjustable stand, Wired LAN port, 64 GB internal storage, Enhanced audio, Compatibility, ', 5, '/website/imgs/ns2.png', '/website/imgs/ns3.png'),
(17, 'Steam Deck™', 25950, 'VALVE', '/website/imgs/sd1.png', '6 nm AMD APU\r\nCPU: Zen 2 4c/8t, 2.4-3.5GHz (up to 448 GFlops FP32)\r\nGPU: 8 RDNA 2 CUs, 1.6GHz (1.6 TFlops FP32)\r\nAPU power: 4-15W', 5, '/website/imgs/sd2.png', '/website/imgs/sd3.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
