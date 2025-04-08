-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2025 at 08:48 AM
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
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 2, 'sonali@gmail.com', '2025-03-27', '2025-03-29', 'i am intrested', '2025-03-26 03:57:54', 1, NULL, '2025-03-26 03:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																														<p align=\"justify\"><span style=\"font-size: small;\">Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </span><a href=\"http://in.docs.yahoo.com/info/terms/\" style=\"font-size: small; background-color: rgb(255, 255, 255);\">http://in.docs.yahoo.com/info/terms/</a><span style=\"font-size: small;\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service.</span></p><p></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n										\r\n										\r\n										'),
(2, 'privacy', '										<p data-start=\"216\" data-end=\"410\" class=\"\">Welcome to <strong data-start=\"227\" data-end=\"244\">Utkala Trails</strong>. Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information when you visit our website <strong data-start=\"385\" data-end=\"407\">[Your Website URL]</strong>.</p>\r\n<h3 data-start=\"412\" data-end=\"447\" class=\"\"><strong data-start=\"416\" data-end=\"445\">1. Information We Collect</strong></h3>\r\n<p data-start=\"448\" data-end=\"500\" class=\"\">We may collect the following types of information:</p>\r\n<ul data-start=\"502\" data-end=\"851\">\r\n<li data-start=\"502\" data-end=\"671\" class=\"\">\r\n<p data-start=\"504\" data-end=\"671\" class=\"\"><strong data-start=\"504\" data-end=\"529\">Personal Information:</strong> When you contact us, book a tour, or subscribe to our newsletter, we may collect your name, email address, phone number, and other details.</p>\r\n</li>\r\n<li data-start=\"672\" data-end=\"851\" class=\"\">\r\n<p data-start=\"674\" data-end=\"851\" class=\"\"><strong data-start=\"674\" data-end=\"703\">Non-Personal Information:</strong> We automatically collect data such as your IP address, browser type, device information, and browsing behavior using cookies and analytics tools.</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"853\" data-end=\"893\" class=\"\"><strong data-start=\"857\" data-end=\"891\">2. How We Use Your Information</strong></h3>\r\n<p data-start=\"894\" data-end=\"923\" class=\"\">We use your information to:</p>\r\n<ul data-start=\"925\" data-end=\"1182\">\r\n<li data-start=\"925\" data-end=\"969\" class=\"\">\r\n<p data-start=\"927\" data-end=\"969\" class=\"\">Provide and improve our tourism services</p>\r\n</li>\r\n<li data-start=\"970\" data-end=\"1003\" class=\"\">\r\n<p data-start=\"972\" data-end=\"1003\" class=\"\">Process bookings and payments</p>\r\n</li>\r\n<li data-start=\"1004\" data-end=\"1057\" class=\"\">\r\n<p data-start=\"1006\" data-end=\"1057\" class=\"\">Send newsletters, updates, and promotional offers</p>\r\n</li>\r\n<li data-start=\"1058\" data-end=\"1112\" class=\"\">\r\n<p data-start=\"1060\" data-end=\"1112\" class=\"\">Respond to inquiries and customer support requests</p>\r\n</li>\r\n<li data-start=\"1113\" data-end=\"1182\" class=\"\">\r\n<p data-start=\"1115\" data-end=\"1182\" class=\"\">Analyze website traffic and user behavior to enhance our services</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1184\" data-end=\"1221\" class=\"\"><strong data-start=\"1188\" data-end=\"1219\">3. How We Protect Your Data</strong></h3>\r\n<p data-start=\"1222\" data-end=\"1396\" class=\"\">We implement security measures to protect your personal data from unauthorized access, loss, or misuse. However, no method of transmission over the internet is 100% secure.</p>\r\n<h3 data-start=\"1398\" data-end=\"1433\" class=\"\"><strong data-start=\"1402\" data-end=\"1431\">4. Sharing of Information</strong></h3>\r\n<p data-start=\"1434\" data-end=\"1530\" class=\"\">We do <strong data-start=\"1440\" data-end=\"1447\">not</strong> sell, trade, or rent your personal data. However, we may share information with:</p>\r\n<ul data-start=\"1532\" data-end=\"1725\">\r\n<li data-start=\"1532\" data-end=\"1653\" class=\"\">\r\n<p data-start=\"1534\" data-end=\"1653\" class=\"\"><strong data-start=\"1534\" data-end=\"1556\">Service Providers:</strong> Payment processors, analytics tools, or third-party partners that help us operate our website.</p>\r\n</li>\r\n<li data-start=\"1654\" data-end=\"1725\" class=\"\">\r\n<p data-start=\"1656\" data-end=\"1725\" class=\"\"><strong data-start=\"1656\" data-end=\"1678\">Legal Authorities:</strong> If required by law or to protect our rights.</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1727\" data-end=\"1773\" class=\"\"><strong data-start=\"1731\" data-end=\"1771\">5. Cookies and Tracking Technologies</strong></h3>\r\n<p data-start=\"1774\" data-end=\"1933\" class=\"\">We use cookies to improve your browsing experience. You can modify your browser settings to disable cookies, but some website features may not work properly.</p>\r\n<h3 data-start=\"1935\" data-end=\"1965\" class=\"\"><strong data-start=\"1939\" data-end=\"1963\">6. Third-Party Links</strong></h3>\r\n<p data-start=\"1966\" data-end=\"2126\" class=\"\">Our website may contain links to third-party sites. We are not responsible for their privacy practices. Please review their policies before sharing your data.</p>\r\n<h3 data-start=\"2128\" data-end=\"2152\" class=\"\"><strong data-start=\"2132\" data-end=\"2150\">7. Your Rights</strong></h3>\r\n<p data-start=\"2153\" data-end=\"2206\" class=\"\">Depending on your location, you may have rights to:</p>\r\n<ul data-start=\"2208\" data-end=\"2330\">\r\n<li data-start=\"2208\" data-end=\"2256\" class=\"\">\r\n<p data-start=\"2210\" data-end=\"2256\" class=\"\">Access, update, or delete your personal data</p>\r\n</li>\r\n<li data-start=\"2257\" data-end=\"2288\" class=\"\">\r\n<p data-start=\"2259\" data-end=\"2288\" class=\"\">Opt out of marketing emails</p>\r\n</li>\r\n<li data-start=\"2289\" data-end=\"2330\" class=\"\">\r\n<p data-start=\"2291\" data-end=\"2330\" class=\"\">Restrict or object to data processing</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"2332\" data-end=\"2399\" class=\"\">To exercise these rights, contact us at <strong data-start=\"2372\" data-end=\"2396\">[Your Email Address]</strong>.</p>\r\n<h3 data-start=\"2401\" data-end=\"2436\" class=\"\"><strong data-start=\"2405\" data-end=\"2434\">8. Changes to This Policy</strong></h3>\r\n<p data-start=\"2437\" data-end=\"2554\" class=\"\">We may update this Privacy Policy from time to time. Any changes will be posted on this page with the updated date.</p>\r\n<h3 data-start=\"2556\" data-end=\"2579\" class=\"\"><strong data-start=\"2560\" data-end=\"2577\">9. Contact Us</strong></h3>\r\n<p data-start=\"2580\" data-end=\"2656\" class=\"\">If you have any questions about this Privacy Policy, please contact us at:</p>\r\n<p data-start=\"2658\" data-end=\"2736\" class=\"\"><strong data-start=\"2661\" data-end=\"2671\">Email:</strong> [demo@gmail.com]<br data-start=\"2692\" data-end=\"2695\"><strong data-start=\"2698\" data-end=\"2710\">Address:</strong> [Bhubaneswer]</p>\r\n										'),
(3, 'aboutus', '										<p data-start=\"99\" data-end=\"400\" class=\"\">Welcome to <strong data-start=\"110\" data-end=\"126\">Utkal Trails</strong> – Your ultimate travel companion for exploring the hidden treasures of Odisha and beyond! At Utkal Trails, we are passionate about offering personalized and immersive travel experiences that showcase the rich culture, heritage, and natural beauty of this incredible region.</p><p data-start=\"402\" data-end=\"763\" class=\"\">Our team of local experts, storytellers, and adventure enthusiasts is dedicated to guiding you through Odisha’s most enchanting destinations, from the serene beaches of Puri to the lush forests of Similipal. Whether you\'re looking for historical tours, spiritual journeys, or nature-based adventures, we have crafted tours that cater to all your travel desires.</p><p data-start=\"765\" data-end=\"793\" class=\"\"><strong data-start=\"765\" data-end=\"793\">Why Choose Utkal Trails?</strong></p><ul data-start=\"794\" data-end=\"1555\">\r\n<li data-start=\"794\" data-end=\"969\" class=\"\">\r\n<p data-start=\"796\" data-end=\"969\" class=\"\"><strong data-start=\"796\" data-end=\"815\">Local Expertise</strong>: As natives of Odisha, we bring an authentic, insider perspective to every tour. Our expert guides will share stories and insights that only locals know.</p>\r\n</li>\r\n<li data-start=\"970\" data-end=\"1136\" class=\"\">\r\n<p data-start=\"972\" data-end=\"1136\" class=\"\"><strong data-start=\"972\" data-end=\"995\">Curated Experiences</strong>: Each of our tours is thoughtfully curated to ensure you experience the best of Odisha, including lesser-known gems that often go unnoticed.</p>\r\n</li>\r\n<li data-start=\"1137\" data-end=\"1320\" class=\"\">\r\n<p data-start=\"1139\" data-end=\"1320\" class=\"\"><strong data-start=\"1139\" data-end=\"1161\">Sustainable Travel</strong>: We are committed to responsible and eco-friendly travel practices. Our tours are designed to minimize our environmental impact and support local communities.</p>\r\n</li>\r\n<li data-start=\"1321\" data-end=\"1555\" class=\"\">\r\n<p data-start=\"1323\" data-end=\"1555\" class=\"\"><strong data-start=\"1323\" data-end=\"1349\">Unforgettable Journeys</strong>: We believe travel is all about creating lasting memories. Let us take you on a journey that will not only open your eyes to the beauty of Odisha but also leave you with experiences you’ll cherish forever.</p>\r\n</li>\r\n</ul><p data-start=\"1557\" data-end=\"1782\" class=\"\">At <strong data-start=\"1560\" data-end=\"1576\">Utkal Trails</strong>, we don’t just show you places – we connect you with the heart and soul of Odisha. Whether you\'re seeking adventure, relaxation, or cultural immersion, we’re here to help you make the most of your journey.</p><p data-start=\"37\" data-end=\"183\">\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"1784\" data-end=\"1898\" class=\"\">Join us and discover the trails less traveled – the experiences that will stay with you long after your trip ends.</p>\r\n										\r\n										'),
(11, 'contact', '																				<p data-start=\"42\" data-end=\"140\"><strong data-start=\"45\" data-end=\"64\">Office Address:</strong><br data-start=\"64\" data-end=\"67\">\r\nExplore Odisha Tours &amp; Travels<br data-start=\"97\" data-end=\"100\">Bhubaneswer,Odisha</p>\r\n<p data-start=\"142\" data-end=\"195\"><strong data-start=\"145\" data-end=\"157\">Call Us:</strong><br data-start=\"157\" data-end=\"160\">\r\n+91 98765 43210<br data-start=\"175\" data-end=\"178\">\r\n+91 87654 32109</p>\r\n<p data-start=\"197\" data-end=\"268\"><strong data-start=\"200\" data-end=\"213\">Email Us:</strong><br data-start=\"213\" data-end=\"216\">\r\n<a data-start=\"216\" data-end=\"238\" rel=\"noopener\">info@exploreodisha.com</a><br></p>\r\n<p data-start=\"270\" data-end=\"316\"><strong data-start=\"273\" data-end=\"285\">Website:</strong><br data-start=\"285\" data-end=\"288\">\r\n<a rel=\"noopener\" data-start=\"288\" data-end=\"314\" href=\"#\">www.exploreodisha.com</a></p>\r\n<p data-start=\"318\" data-end=\"506\"><strong data-start=\"321\" data-end=\"351\">Follow Us on Social Media:</strong><br data-start=\"351\" data-end=\"354\"><strong data-start=\"357\" data-end=\"370\">Facebook:</strong> <a data-start=\"371\" data-end=\"402\" rel=\"noopener\" href=\"#\">facebook.com/exploreodisha</a><br data-start=\"402\" data-end=\"405\"><strong data-start=\"408\" data-end=\"422\">Instagram:</strong> <a data-start=\"423\" data-end=\"455\" rel=\"noopener\" href=\"#\">instagram.com/exploreodisha</a><br data-start=\"455\" data-end=\"458\"><strong data-start=\"461\" data-end=\"473\">Twitter:</strong> <a data-start=\"474\" data-end=\"504\" rel=\"noopener\" href=\"#\">twitter.com/exploreodisha</a></p>\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Puri Temple 2-day', 'Family ', 'Puri', 2500, 'free pickup , food, hotel ', 'Shree Jagannath Temple of Puri is an important Hindu temple dedicated to Lord Jagannath, a form of Lord Maha Vishnu. It is one of the Char Dhams and an important pilgrimage destination located in Puri in the state of Odisha. The worshipping rituals of the temple are rigorous with the idol of Lord Vishnu being replaced every 12 to 19 years. Moreover, unlike other idols made from stone and metal the idol inside the temple is made of wood.', 'Puri Temple.jpg', '2025-03-21 09:41:32', '2025-03-24 11:49:10'),
(2, 'One Day Bhubaneswar Trip ', 'Couple Package, Family Package', 'Bhubaneswer', 2000, 'free pickup-drop , food', '1. Lingaraj Temple\r\n2. ISKCON Temple\r\n3. Bindu Sarovara\r\n4. Nicco Park\r\n5. Odisha State Museum\r\n', 'lingaraj temple.jpg', '2025-03-21 09:49:51', '2025-03-24 11:49:30'),
(3, 'Odisha Tours 07 Days - 06 Nights', 'Couple Package, Family Package', 'Odisha ', 3600, 'Hotels + Cab + Transportation', 'On arrival at Bhubaneswar Airport met by our representative. Then transfer to Hotel. Later half day sightseeing famous city temples including Lingaraj, Parsurameswar, Mukteswar, Rajarani temple. Overnight at Bhubaneswar. \r\nAfter breakfast drive to the diamond triangle of Odisha - Ratnagiri(Rich concentration of Buddhist antiquities), Lalitgiri(Oldest Buddhist center of Odisha) & Udayagiri(Largest Buddhist complexes in Odisha). Return back to Bhubaneswar. Overnight at Bhubaneswar.\r\n\r\n', 'khandagiri-bj.jpg', '2025-03-21 09:54:22', '2025-03-24 11:49:43'),
(4, 'Bhitarkanika & Ratnagiri Tours 2day / 3night', 'Couple Package, Family Package', 'Kendrapada', 4000, 'free pickup , food, hotel ', 'One night accommodation in AC Double Deluxe room with twin sharing basis in Toshali Ratnagiri.\r\nOne night accommodation in AC Double Deluxe room with twin sharing basis in Toshali Puspagiri\r\n02 breakfast,02 lunch & 02 dinner for 02 person.\r\nAC indigo for above programme with Driver charges,Desel expenses,Toll, Parking,Night halt & Govt.tax.\r\nBoating charges for sightseeing visit at Bhitarkanika National Park.(one time)\r\nGST', 'bhitarakanika.jpg', '2025-03-26 06:06:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'sonali Pradhan', '7894561230', 'sonali@gmail.com', '94817fd616709a03a606cd5e812bb468', '2025-03-26 03:57:09', '2025-03-28 05:11:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
