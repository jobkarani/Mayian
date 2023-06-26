-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 03:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_resort`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` int(11) DEFAULT NULL,
  `gallery_images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` int(11) DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `short_description`, `description`, `thumbnail_image`, `gallery_images`, `meta_title`, `meta_image`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '7 Best Resorts In Oman To Experience Hospitality', '7-best-resorts-in-oman-to-experience-hospitality-5mm1g', 'Gangtok is a beautiful city, known for its magical, natural surroundings.', '<p>I love love love to travel. It is one of my favorite things ever. Maybe you are super passionate about traveling too, or you just want to learn as much as you can before your next trip. I totally get that. I hope these tips and tricks can help you!\r\n</p><p>My name is Carley and I like to party. That’s from Hot Rod just in case you didn’t know. Okay, anyway…\r\n</p><p>These are the best tips and tricks that I could come up with and that have helped me. If you already know these, umm just hang out with me maybe idk.\r\n</p><p>Okay, let’s go.\r\n</p><p>Use Skyscanner\r\n</p><p>Okie dokie friend. Starting in first place we have Skyscanner. This is my favorite way to book/look at flights. This is a website that allows you to compare flights from different airlines at the cheapest price.\r\n</p><p>Skyscanner\r\n</p><p>So I just plugged in a random flight from LAX to JFK in October. As you can see, Delta is the top one and then JetBlue is right after.\r\n</p><p>After you compare all the best prices, you can click select and it will direct you to that airline’s website and it will have you go through them to book it.\r\n</p><p>It is not sketchy, it’s just a place to have all the airline prices in one place.\r\n</p><p>You can also look at hotels and car rentals. I haven’t tried that out, so good luck…\r\n</p><p>I have booked a couple of flights through Skyscanner and it’s worked out quite dandy.\r\n</p><p>I think we started off pretty strong for the first one of my travel tips and tricks. Didn’t we?\r\n</p><p>Choose A Seat Smartly\r\n</p><p>This one is pretty important and I am not good at it. If you know you have a close connecting flight, be smart with your seat selection.\r\n</p><p>Don’t choose the window seat because then you are the last of your row to get out.\r\n</p><p>If you can afford it, get a seat in premium economy. This way you can get off the plane quicker. Preventing you from a lot of stress.\r\n</p><p>I’m going to Chicago in a couple of months. I did the cheaper option and I’m not going to know my seat till check-in. I’m PRAYING that it all works out good because my connecting flight is super duper close to when we land. EEEKK, it’ll be okay though I know it.\r\n</p><p>Traveling is so stressful, but if you slow down and focus on Jesus it’ll be awesome.\r\n</p><p>Are you a window seat or an aisle person? I am a window seat girly, I just stare out the window for hours. But, this comes with downsides because then I won’t go pee because I’m too scared. AND I have to wait for the people in my row.\r\n</p><p>Window seats really aren’t the move now that I think about it… Oh well.\r\n</p><p>Bring A Carry-On Suitcase\r\n</p><p>This one is quite the debate. Well for my fiancé and I at least.\r\n</p><p>I love bringing a carry-on and let me tell you why.\r\n</p><p>My FIRST reason is that you don’t have to pay to get your bag checked. It is 30 dollars to check a bag, and if you are going on a trip, that money could be used towards something else.\r\n</p><p>SECOND, your carry-on stays with you always. You don’t have to worry if your luggage gets stolen or lost. When you get off the plane, you can just go, you don’t have to wait for your bag. When you get to an exciting destination, you don’t want to be at the airport longer than you need to be.\r\n</p><p>Carry-on suitcases don’t have a lot of room, so you have to be smart with the things you pack. Don’t be an over-packer, you. I got my carry-on suitcase from Target and I love it.\r\n</p><p>Target Carry On\r\n</p><p>I got the tan color! Golden retriever does not come with suitcase:(\r\n</p><p>That’s really all I got, I’m not completely sold on the carry-on thing, but I think if possible, it is a good way to save money.\r\n</p><p>There are times when you need a checked bag and that is also nice. Checked bags are good because you can pack however much liquid stuff.\r\n</p><p>For carry-on suitcases, liquids have to be under 3 oz. But, with checked bags, you can take a whole bottle of shampoo if you want.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 56, '52,53', NULL, 56, NULL, 1, '2023-02-17 23:35:58', '2023-02-21 16:02:03'),
(2, 2, 'Travel Tips and Tricks To Enjoy The Tour With Pleasure', 'travel-tips-and-tricks-to-enjoy-the-tour-with-pleasure-xbdpw', 'Hello there sister friend, today we are talking about travel tips and tricks.', '<p>I love love love to travel. It is one of my favorite things ever. Maybe you are super passionate about traveling too, or you just want to learn as much as you can before your next trip. I totally get that. I hope these tips and tricks can help you!\r\n</p><p>My name is Carley and I like to party. That’s from Hot Rod just in case you didn’t know. Okay, anyway…\r\n</p><p>These are the best tips and tricks that I could come up with and that have helped me. If you already know these, umm just hang out with me maybe idk.\r\n</p><p>Okay, let’s go.\r\n</p><p><b>Use Skyscanner\r\n</b></p><p>Okie dokie friend. Starting in first place we have Skyscanner. This is my favorite way to book/look at flights. This is a website that allows you to compare flights from different airlines at the cheapest price.\r\n</p><p>Skyscanner\r\n</p><p>So I just plugged in a random flight from LAX to JFK in October. As you can see, Delta is the top one and then JetBlue is right after.\r\n</p><p>After you compare all the best prices, you can click select and it will direct you to that airline’s website and it will have you go through them to book it.\r\n</p><p>It is not sketchy, it’s just a place to have all the airline prices in one place.\r\n</p><p>You can also look at hotels and car rentals. I haven’t tried that out, so good luck…\r\n</p><p>I have booked a couple of flights through Skyscanner and it’s worked out quite dandy.\r\n</p><p>I think we started off pretty strong for the first one of my travel tips and tricks. Didn’t we?\r\n</p><p><b>Choose A Seat Smartly\r\n</b></p><p>This one is pretty important and I am not good at it. If you know you have a close connecting flight, be smart with your seat selection.\r\n</p><p>Don’t choose the window seat because then you are the last of your row to get out.\r\n</p><p>If you can afford it, get a seat in premium economy. This way you can get off the plane quicker. Preventing you from a lot of stress.\r\n</p><p>I’m going to Chicago in a couple of months. I did the cheaper option and I’m not going to know my seat till check-in. I’m PRAYING that it all works out good because my connecting flight is super duper close to when we land. EEEKK, it’ll be okay though I know it.\r\n</p><p>Traveling is so stressful, but if you slow down and focus on Jesus it’ll be awesome.\r\n</p><p>Are you a window seat or an aisle person? I am a window seat girly, I just stare out the window for hours. But, this comes with downsides because then I won’t go pee because I’m too scared. AND I have to wait for the people in my row.\r\n</p><p>Window seats really aren’t the move now that I think about it… Oh well.\r\n</p><p><b>Bring A Carry-On Suitcase\r\n</b></p><p>This one is quite the debate. Well for my fiancé and I at least.\r\n</p><p>I love bringing a carry-on and let me tell you why.\r\n</p><p>My FIRST reason is that you don’t have to pay to get your bag checked. It is 30 dollars to check a bag, and if you are going on a trip, that money could be used towards something else.\r\n</p><p>SECOND, your carry-on stays with you always. You don’t have to worry if your luggage gets stolen or lost. When you get off the plane, you can just go, you don’t have to wait for your bag. When you get to an exciting destination, you don’t want to be at the airport longer than you need to be.\r\n</p><p>Carry-on suitcases don’t have a lot of room, so you have to be smart with the things you pack. Don’t be an over-packer, you. I got my carry-on suitcase from Target and I love it.\r\n</p><p><b>Target Carry On\r\n</b></p><p>I got the tan color! Golden retriever does not come with suitcase:(\r\n</p><p>That’s really all I got, I’m not completely sold on the carry-on thing, but I think if possible, it is a good way to save money.\r\n</p><p>There are times when you need a checked bag and that is also nice. Checked bags are good because you can pack however much liquid stuff.\r\n</p><p>For carry-on suitcases, liquids have to be under 3 oz. But, with checked bags, you can take a whole bottle of shampoo if you want.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p> \r\n</p><p>\r\n</p><p> \r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p> \r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 57, '22', NULL, 57, NULL, 1, '2023-02-17 23:40:25', '2023-02-18 03:39:47'),
(3, 1, '15 Resorts In Gangtok That You Must Stay At On Your Trip', '15-resorts-in-gangtok-that-you-must-stay-at-on-your-trip-rml4y', 'Gangtok is a beautiful city, known for its magical, natural surroundings.', '<p>Are you looking for the best resorts in Gangtok? From luxurious abodes to serene escapades, Gangtok is home to numerous interesting properties offering a memorable stay. Go through our list of 15 of the most remarkable resorts in Gangtok to help you decide your stay. These are the best resorts to stay in Gangtok that are supremely comfortable and will offer you the most luxurious staying experience:\r\n</p><p><b>1. Mayfair Spa Resort And Casino - Exquisite Colonial Architecture\r\n</b></p><p>Mayfair Gangtok is the best pick among the resorts in Gangtok \r\n</p><p>Image Source\r\n</p><p>Mayfair in Gangtok has been designed in a unique Monastic theme, blended well with the Colonial architecture. This perfect blend makes the design of this resort truly remarkable. Mayfair has won a lot of accolades for its marvelous ambience and service. Visitors staying here can enjoy a tranquil environment amidst modern luxuries. This is amongst the best Gangtok resorts.\r\n</p><p>Whats special: Pavonia Spa and Casino\r\n</p><p>Suggested suite: Grand Villa, for the privacy and luxury that it offers.\r\n</p><p>Tariff: INR 14,000 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p>31 Alluring Places To Visit In Gangtok\r\n</p><p>Sikkim-Gangtok-Darjeeling Holiday Packages On TravelTriangle\r\n</p><p>Gangtok &amp; Darjeeling Tour Package 5D/4N @ Rs 13,000\r\n</p><p>Plan your trip today!\r\n</p><p>Book Now\r\n</p><p>Scintillating North-East Family Tour 6D/5N @ Rs 16,065\r\n</p><p>Get quotes from multiple travel experts.\r\n</p><p>Book Now\r\n</p><p>Fun-Filled Gangtok &amp; Darjeeling Family Tour 6D/5N @ Rs 18,000\r\n</p><p>Compare &amp; customize quotes before booking.\r\n</p><p>Book Now\r\n</p><p>Darjeeling Gangtok Family Package 7D/6N @ Rs 20,783\r\n</p><p>Have Questions? Talk to our travel experts today.\r\n</p><p>Book Now\r\n</p><p>Gangtok &amp; Darjeeling Family Tour 7D/6N @ Rs 41,265\r\n</p><p>Best prices guaranteed. EMI option available.\r\n</p><p>Book Now\r\n</p><p>See more at TRAVELTRIANGLE.COM&nbsp;</p><p><b>2. Orange Village Resort - Scenic Marvel\r\n</b></p><p>The bamboo bar at Orange Village Resort is popular among the resorts in Gangtok\r\n</p><p>Image Source\r\n</p><p>The Orange Village resort in Gangtok is a beautiful luxury resort, nestled amidst the scenic marvels of Gangtok city. Guests staying here can enjoy the fresh mountain breeze and natural marvels complemented with all essential facilities and services. Apart from the regular resort services, Orange Village has an Orchid garden, Curio shop and a large discotheque. This is one of the best places to stay in Gangtok.\r\n</p><p>What’s special: Code Orange – the popular discotheque in Sikkim, and an eclectic fusion of the national and international cuisines at the inhouse restaurant — Suntaley Chulo\r\n</p><p>Suggested suite: Suite Rooms, which have a private verandah and river view\r\n</p><p>Tariff: INR 9,500 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p><b>3. Club Mahindra Royal Demazong Gangtok - Traditional Hospitality\r\n</b></p><p>Beautiful interiors of Club Mahindra resort in Gangtok\r\n</p><p>Image Source\r\n</p><p>5 km from Bagdogra International Airport, the Club Mahindra Resort in Gangtok is a stunning property. Overlooking the daunting Chola Ranges, this resort is located in the foothills of the mountain range and offers a perfect blend of traditional Sikkim hospitality and modern luxurious amenities. Besides, it ensures a comfy stay with its choice of 19 rooms – each complemented with private balconies, Wi-Fi and modern amenities. It is one of the top resorts in Gangtok.\r\n</p><p>What’s special: Way to the resort, traditional architecture, private sit-outs for every room,  and helicopter pick up from airport\r\n</p><p>Suggested suite: Any, as all the rooms are same\r\n</p><p>Tariff: As per the membership plans\r\n</p><p>Website | Reviews\r\n</p><p>20 Most Spellbinding Places To Visit Near Gangtok In 2022\r\n</p><p><b>4. Summit Norling Resort and Spa - Awe-inspiring Ambiance\r\n</b></p><p>Ethnic exteriors of Summit Noring Resort and Spa\r\n</p><p>Image Source\r\n</p><p>This beautiful resort is located close to the mouth of a valley and hence, commands amazing views. It has been designed in a manner that guests enjoy utmost comfortable and relaxation during their holiday. The resort has a beautiful waterfall inside the premises that lends a sense of calm and peace to the resort. Use of bamboo grove makes the d-cor quite exclusive; plus the long list of modern facilities and amenities making Summit Norling a preferred resort in Gangtok. If you are fond of luxurious getaways, dont miss this one.\r\n</p><p>What’s special: Bamboo interiors, Metta Spa for a relaxing Spa experience, multi cuisine in house restaurant\r\n</p><p>Suggested suite: Chalets rooms for a stay amidst the most romantic settings\r\n</p><p>Tariff: INR 7,000 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p><b>5. Welcomheritage Denzong Regency - Cozy Stays\r\n</b></p><p>Welcomheritage Denzong Regency is a popular resort in Gangtok\r\n</p><p>Image Source\r\n</p><p>This mountain retreat is one of the best 5 star resorts in Gangtok perched at a height of 6,000 feet. The rooms of the retreat command impressive views of the natural beauty of Gangtok. The property is sprawled in an area of 10 acres and is a family owned retreat. The private balconies of the rooms are perfect excuses to enjoy a cup of cffee while admiring the natures marvels spread all around. It is a good pick for honeymooners and couples as well as families.\r\n</p><p>What’s special: Family owned heritage property, magnificent views, authentic Sikkimese dining at the inhouse restaurant Mayal\r\n</p><p>Suggested suite: Regency Suite that comes with individual private balcony\r\n</p><p>Tariff: INR 9,850 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p>48 Extraordinary Places In Sikkim That Will Leave You Spellbound\r\n</p><p><b>6. Summit Ttakshang Residency Hotel - Spectacular Vistas\r\n</b></p><p>Colorful interiors of Summit Ttakshang Residency Hotel &amp; Spa in their suite rooms\r\n</p><p>Image Source\r\n</p><p>Summit Ttakshang Residency Hotel &amp; Spa is known for its charm and typical Himalayan hospitality among all of Gangtoks best resorts. Its subtle elegance makes it quite sought after by tourists looking for a comfortable stay. The balconies attached with every suite guarantee spectacular vistas around the resort. Vibrant interiors make the rooms warm and welcoming.\r\n</p><p>What’s special: Multi-cuisine restaurant offering an impressive spread of delightful dishes, spa and a spectacular view of the Kanchenjunga peaks\r\n</p><p>Suggested suite: Suite Room\r\n</p><p>Tariff: INR 8,000 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p><b>7. Mandarin Village Resort - Heart-warming Hospitality\r\n</b></p><p>Mandarin Village resort is perched upon the greenery of the hills\r\n</p><p>Image Source\r\n</p><p>Mandarin Village Resort is a beautifully constructed resort that offers amazing views of the Kanchenjunga Range. It is situated in West Sikkim at an altitude of 5, 600 feet — the buffer zone area of famous Bersay Rhododendron Sanctuary. Warm hospitality, soft music, homely atmosphere and amazing cuisines served in its restaurant make it a nice place to stay in. The rooms are warm and welcoming decorated in soft, pastel colors.\r\n</p><p>What’s special: The surroundings (small hamlets), and lush green gardens\r\n</p><p>Suggested suite: Suite Rooms; for their open balconies to enjoy the scenic vistas and a fireplace that ensures warm ambience\r\n</p><p>Tariff: INR 3,250 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p>43 Must Visit Places When Travelling to the North East\r\n</p><p><b>8. Martam Village Resort - Traditional Decor\r\n</b></p><p>A cottage of the Martam Village amidst the greenery upon hills\r\n</p><p>Image Source\r\n</p><p>Located in Rumtek, the Martam Village offers a comfortable stay and the best of panoramic vistas of this beautiful city. The resort has 14 cottages with twin beds, designed and built in traditional style. The restaurant serves an eclectic blend of Indian, Chinese and other cuisines at its in-house restaurant and bar. If you are traveling on a limited budget, this is one of the best cottage resorts in Gangtok.\r\n</p><p>What’s special: Local drink Chang being served in the bar\r\n</p><p>Suggested suite: Cottages are a good pick owing to the luxury and privacy they offer.\r\n</p><p>Tariff: INR 3,795 onwards, per night\r\n</p><p>Reviews\r\n</p><p><b>9. The Maplewood Resort - Spellbinding Vacays\r\n</b></p><p>View from the balconies of The Maplewood Resort in Gangtok\r\n</p><p>Image Source\r\n</p><p>The Maplewood resort Gangtok is a beautiful resort located close to NH31A. It is surrounded by daunting mountains. The d-cor is quite modest and the focus is on the comfort of the guests. The rooms are spacious and replete with modern facilities and amenities.\r\n</p><p>What’s special: The beautiful terrace\r\n</p><p>Suggested suite: Standard rooms, all are fairly good\r\n</p><p>Tariff: INR 2,150 onwards, per night\r\n</p><p>Reviews\r\n</p><p>Trip To Nathula Pass: A Once In A Lifetime Vacation Worth Taking In 2022\r\n</p><p><b>10. Saramsa Resort - Magnificent Sights\r\n</b></p><p>The grand building of Saramsa Resort is a mix of traditional and modern architecture\r\n</p><p>Image Source\r\n</p><p>Located close to the majestic hills, this resort is situated at Ranipool in Gangtok. The guests can enjoy magnificent sights from the comfort of their beds while listening to the chirping of the birds. The architecture of the resort is truly unique as it encompasses a blend of Bhutia, Lepcha, Colonial and Nepal styles. Walnut finish furniture, made of teak, makes the interiors cozy and warm. This is amongst the best Gangtok resorts.\r\n</p><p>What’s special: Shamsher’s Club, where a choice of beverages are available, complimentary pickup and drop from airport or railway station, the est of Sikkimese, Indian and Continental cuisines served at The Mayas Restaurant\r\n</p><p>Suggested suite: Royal Suite Rooms, popular for their classic interiors and a mini bar\r\n</p><p>Tariff: INR 7,800 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p><b>11. Elgin Nor-Khill - Luxurious Rooms\r\n</b></p><p>The front side of The elgin Nor Khill hotel\r\n</p><p>Image Source\r\n</p><p>Locally known as house of jewels; Elgin Nor-Khill is one of the most classy and vintage boutique resorts in Gangtok. The hotel boasts of its super luxurious rooms, grand Burma teak d-cor comprising of dragon art and flame symbols to wooden floors &amp; panels and vintage furniture. The warm hospitality, antique d-cor, stunning surrounding view and premium comfort of the hotel fascinates everyone, particularly newly married couples. Undeniably, this is one of the best resorts in Gangtok for honeymoon.\r\n</p><p>Whats special: A heart-warming welcome by offering cherry liquor and silken Khada (scarf)\r\n</p><p>Suggested suite: Deluxe suites\r\n</p><p>Tariff: INR 9950 per night onwards\r\n</p><p>6 Exquisite Resorts Near Gangtok For An Opulent Stay Close To Nature In 2022\r\n</p><p><b>12. Summit Golden Crescent - Aesthetically Designed Setup\r\n</b></p><p>Two beer glasses on table at a Roof top cafe in mountains\r\n</p><p>Image Source\r\n</p><p>Summit Golden Crescent is one of the best 4 star resorts in Gangtok for honeymoon. The resort has 38 aesthetically designed rooms and suites, superb dining facilities, manicured lawns, sober d-cor and offers incredibly appealing hospitality; all of these factors help create a wonderful holiday scene. You will have the time of your life here. This is amongst the best places to stay in Gangtok.\r\n</p><p>Whats special: Try out authentic Tibetan food and local delicacies at Yuksom\r\n</p><p>Suggested suite: Presidential suite with a private Jacuzzi\r\n</p><p>Tariff: INR 5000 per night onwards\r\n</p><p>Website | Reviews\r\n</p><p><b>13. The Nettle and Fern Resort - Incomparable Hospitality\r\n</b></p><p>two beds in a wooden floor hotel room\r\n</p><p>Image Source\r\n</p><p>As one of the most popular budget resorts in Gangtok, Nettle and Fern Hotel is an ideal place for romantic and cozy honeymoon. This resort is known for incomparable hospitality and services, and its 17 spacious modern rooms offer splendid views of the distant hills and valleys. The in-house restaurant offer incredible Indian and global cuisines. You will have the best time here and will not be disappointed by the variety of things Gangtok has to offer you.\r\n</p><p>Whats special: Explore the souvenir shop and take advantage of the travel desk\r\n</p><p>Suggested suite: Super deluxe family suite (Valley-view)\r\n</p><p>Tariff: INR 2700 per night onwards\r\n</p><p>Darjeeling Vs Gangtok: Which Destination Offers Bliss At Its Best?\r\n</p><p><b>14. Chumbi Mountain Retreat And Spa - Amazing Decor\r\n</b></p><p>a breakfast table outside a resort\r\n</p><p>Image Source\r\n</p><p>What makes Chumbi Mountain Retreat and Spa one of the best resorts in Gangtok is its unrivaled hospitality and luxury. They welcome you with refreshing organic tea and sumptuous food and drinks over a bonfire during winter. The traditional palace-like building, amazing decor, authentic local food, and the most beautiful views will make you want to stay here forever. This is amongst the best hotels in Gangtok.\r\n</p><p>Whats special: Lido (in-house movie theater)\r\n</p><p>Suggested suite: Deluxe suites\r\n</p><p>Tariff: INR 9,500 per night\r\n</p><p><b>15. Norbu Ghang Resort - Exotic Ambiance\r\n</b></p><p>a red painted resort amid trees\r\n</p><p>Image Source\r\n</p><p>Norbu Ghang Resort is a private luxury resort situated amidst the verdant hills overlooking the snow-capped peaks. Sikkimese themes and flavors in food and decor, the aesthetically done up rooms, Dzongri Bar, and Silver Fir restaurant together make your holiday delightful and enchanting. It is one of the best resorts in Gangtok and will liven up your day.\r\n</p><p>Whats special: Hot stone bath at Menchu- the resort spa\r\n</p><p>Suggested suite: Family suite\r\n</p><p>Tariff: INR 5,500 per night\r\n</p><p>26 Scenic Tourist Places In Darjeeling\r\n</p><p>Anyone interested in a breathtaking journey to the North East must take a trip to Gangtok to cover the most beautiful parts of the region. And now that you know of some of the best resorts in Gangtok to stay at, the trip would be all the more comfortable and exciting! Gangtok has everything that you possibly dreamed of and will not disappoint you.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 58, '51,53', NULL, 58, NULL, 1, '2023-02-17 23:47:02', '2023-02-18 03:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Best Resorts', 'best-resorts-ismqa', '2023-02-17 23:31:58', '2023-02-17 23:31:58'),
(2, 'Travel', 'travel-bneeu', '2023-02-17 23:32:34', '2023-02-17 23:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_translations`
--

CREATE TABLE `blog_category_translations` (
  `id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_category_translations`
--

INSERT INTO `blog_category_translations` (`id`, `blog_category_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Best Resorts', 'en', '2023-02-17 23:31:58', '2023-02-17 23:31:58'),
(2, 2, 'Travel', 'en', '2023-02-17 23:32:34', '2023-02-17 23:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `blog_id`, `title`, `short_description`, `description`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, '7 Best Resorts In Oman To Experience Hospitality', 'Gangtok is a beautiful city, known for its magical, natural surroundings.', '<p>I love love love to travel. It is one of my favorite things ever. Maybe you are super passionate about traveling too, or you just want to learn as much as you can before your next trip. I totally get that. I hope these tips and tricks can help you!\r\n</p><p>My name is Carley and I like to party. That’s from Hot Rod just in case you didn’t know. Okay, anyway…\r\n</p><p>These are the best tips and tricks that I could come up with and that have helped me. If you already know these, umm just hang out with me maybe idk.\r\n</p><p>Okay, let’s go.\r\n</p><p>Use Skyscanner\r\n</p><p>Okie dokie friend. Starting in first place we have Skyscanner. This is my favorite way to book/look at flights. This is a website that allows you to compare flights from different airlines at the cheapest price.\r\n</p><p>Skyscanner\r\n</p><p>So I just plugged in a random flight from LAX to JFK in October. As you can see, Delta is the top one and then JetBlue is right after.\r\n</p><p>After you compare all the best prices, you can click select and it will direct you to that airline’s website and it will have you go through them to book it.\r\n</p><p>It is not sketchy, it’s just a place to have all the airline prices in one place.\r\n</p><p>You can also look at hotels and car rentals. I haven’t tried that out, so good luck…\r\n</p><p>I have booked a couple of flights through Skyscanner and it’s worked out quite dandy.\r\n</p><p>I think we started off pretty strong for the first one of my travel tips and tricks. Didn’t we?\r\n</p><p>Choose A Seat Smartly\r\n</p><p>This one is pretty important and I am not good at it. If you know you have a close connecting flight, be smart with your seat selection.\r\n</p><p>Don’t choose the window seat because then you are the last of your row to get out.\r\n</p><p>If you can afford it, get a seat in premium economy. This way you can get off the plane quicker. Preventing you from a lot of stress.\r\n</p><p>I’m going to Chicago in a couple of months. I did the cheaper option and I’m not going to know my seat till check-in. I’m PRAYING that it all works out good because my connecting flight is super duper close to when we land. EEEKK, it’ll be okay though I know it.\r\n</p><p>Traveling is so stressful, but if you slow down and focus on Jesus it’ll be awesome.\r\n</p><p>Are you a window seat or an aisle person? I am a window seat girly, I just stare out the window for hours. But, this comes with downsides because then I won’t go pee because I’m too scared. AND I have to wait for the people in my row.\r\n</p><p>Window seats really aren’t the move now that I think about it… Oh well.\r\n</p><p>Bring A Carry-On Suitcase\r\n</p><p>This one is quite the debate. Well for my fiancé and I at least.\r\n</p><p>I love bringing a carry-on and let me tell you why.\r\n</p><p>My FIRST reason is that you don’t have to pay to get your bag checked. It is 30 dollars to check a bag, and if you are going on a trip, that money could be used towards something else.\r\n</p><p>SECOND, your carry-on stays with you always. You don’t have to worry if your luggage gets stolen or lost. When you get off the plane, you can just go, you don’t have to wait for your bag. When you get to an exciting destination, you don’t want to be at the airport longer than you need to be.\r\n</p><p>Carry-on suitcases don’t have a lot of room, so you have to be smart with the things you pack. Don’t be an over-packer, you. I got my carry-on suitcase from Target and I love it.\r\n</p><p>Target Carry On\r\n</p><p>I got the tan color! Golden retriever does not come with suitcase:(\r\n</p><p>That’s really all I got, I’m not completely sold on the carry-on thing, but I think if possible, it is a good way to save money.\r\n</p><p>There are times when you need a checked bag and that is also nice. Checked bags are good because you can pack however much liquid stuff.\r\n</p><p>For carry-on suitcases, liquids have to be under 3 oz. But, with checked bags, you can take a whole bottle of shampoo if you want.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', 2023, 2023),
(2, 2, 'Travel Tips and Tricks To Enjoy The Tour With Pleasure', 'Hello there sister friend, today we are talking about travel tips and tricks.', '<p>I love love love to travel. It is one of my favorite things ever. Maybe you are super passionate about traveling too, or you just want to learn as much as you can before your next trip. I totally get that. I hope these tips and tricks can help you!\r\n</p><p>My name is Carley and I like to party. That’s from Hot Rod just in case you didn’t know. Okay, anyway…\r\n</p><p>These are the best tips and tricks that I could come up with and that have helped me. If you already know these, umm just hang out with me maybe idk.\r\n</p><p>Okay, let’s go.\r\n</p><p><b>Use Skyscanner\r\n</b></p><p>Okie dokie friend. Starting in first place we have Skyscanner. This is my favorite way to book/look at flights. This is a website that allows you to compare flights from different airlines at the cheapest price.\r\n</p><p>Skyscanner\r\n</p><p>So I just plugged in a random flight from LAX to JFK in October. As you can see, Delta is the top one and then JetBlue is right after.\r\n</p><p>After you compare all the best prices, you can click select and it will direct you to that airline’s website and it will have you go through them to book it.\r\n</p><p>It is not sketchy, it’s just a place to have all the airline prices in one place.\r\n</p><p>You can also look at hotels and car rentals. I haven’t tried that out, so good luck…\r\n</p><p>I have booked a couple of flights through Skyscanner and it’s worked out quite dandy.\r\n</p><p>I think we started off pretty strong for the first one of my travel tips and tricks. Didn’t we?\r\n</p><p><b>Choose A Seat Smartly\r\n</b></p><p>This one is pretty important and I am not good at it. If you know you have a close connecting flight, be smart with your seat selection.\r\n</p><p>Don’t choose the window seat because then you are the last of your row to get out.\r\n</p><p>If you can afford it, get a seat in premium economy. This way you can get off the plane quicker. Preventing you from a lot of stress.\r\n</p><p>I’m going to Chicago in a couple of months. I did the cheaper option and I’m not going to know my seat till check-in. I’m PRAYING that it all works out good because my connecting flight is super duper close to when we land. EEEKK, it’ll be okay though I know it.\r\n</p><p>Traveling is so stressful, but if you slow down and focus on Jesus it’ll be awesome.\r\n</p><p>Are you a window seat or an aisle person? I am a window seat girly, I just stare out the window for hours. But, this comes with downsides because then I won’t go pee because I’m too scared. AND I have to wait for the people in my row.\r\n</p><p>Window seats really aren’t the move now that I think about it… Oh well.\r\n</p><p><b>Bring A Carry-On Suitcase\r\n</b></p><p>This one is quite the debate. Well for my fiancé and I at least.\r\n</p><p>I love bringing a carry-on and let me tell you why.\r\n</p><p>My FIRST reason is that you don’t have to pay to get your bag checked. It is 30 dollars to check a bag, and if you are going on a trip, that money could be used towards something else.\r\n</p><p>SECOND, your carry-on stays with you always. You don’t have to worry if your luggage gets stolen or lost. When you get off the plane, you can just go, you don’t have to wait for your bag. When you get to an exciting destination, you don’t want to be at the airport longer than you need to be.\r\n</p><p>Carry-on suitcases don’t have a lot of room, so you have to be smart with the things you pack. Don’t be an over-packer, you. I got my carry-on suitcase from Target and I love it.\r\n</p><p><b>Target Carry On\r\n</b></p><p>I got the tan color! Golden retriever does not come with suitcase:(\r\n</p><p>That’s really all I got, I’m not completely sold on the carry-on thing, but I think if possible, it is a good way to save money.\r\n</p><p>There are times when you need a checked bag and that is also nice. Checked bags are good because you can pack however much liquid stuff.\r\n</p><p>For carry-on suitcases, liquids have to be under 3 oz. But, with checked bags, you can take a whole bottle of shampoo if you want.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p> \r\n</p><p>\r\n</p><p> \r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p> \r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', 2023, 2023),
(3, 3, '15 Resorts In Gangtok That You Must Stay At On Your Trip', 'Gangtok is a beautiful city, known for its magical, natural surroundings.', '<p>Are you looking for the best resorts in Gangtok? From luxurious abodes to serene escapades, Gangtok is home to numerous interesting properties offering a memorable stay. Go through our list of 15 of the most remarkable resorts in Gangtok to help you decide your stay. These are the best resorts to stay in Gangtok that are supremely comfortable and will offer you the most luxurious staying experience:\r\n</p><p><b>1. Mayfair Spa Resort And Casino - Exquisite Colonial Architecture\r\n</b></p><p>Mayfair Gangtok is the best pick among the resorts in Gangtok \r\n</p><p>Image Source\r\n</p><p>Mayfair in Gangtok has been designed in a unique Monastic theme, blended well with the Colonial architecture. This perfect blend makes the design of this resort truly remarkable. Mayfair has won a lot of accolades for its marvelous ambience and service. Visitors staying here can enjoy a tranquil environment amidst modern luxuries. This is amongst the best Gangtok resorts.\r\n</p><p>Whats special: Pavonia Spa and Casino\r\n</p><p>Suggested suite: Grand Villa, for the privacy and luxury that it offers.\r\n</p><p>Tariff: INR 14,000 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p>31 Alluring Places To Visit In Gangtok\r\n</p><p>Sikkim-Gangtok-Darjeeling Holiday Packages On TravelTriangle\r\n</p><p>Gangtok &amp; Darjeeling Tour Package 5D/4N @ Rs 13,000\r\n</p><p>Plan your trip today!\r\n</p><p>Book Now\r\n</p><p>Scintillating North-East Family Tour 6D/5N @ Rs 16,065\r\n</p><p>Get quotes from multiple travel experts.\r\n</p><p>Book Now\r\n</p><p>Fun-Filled Gangtok &amp; Darjeeling Family Tour 6D/5N @ Rs 18,000\r\n</p><p>Compare &amp; customize quotes before booking.\r\n</p><p>Book Now\r\n</p><p>Darjeeling Gangtok Family Package 7D/6N @ Rs 20,783\r\n</p><p>Have Questions? Talk to our travel experts today.\r\n</p><p>Book Now\r\n</p><p>Gangtok &amp; Darjeeling Family Tour 7D/6N @ Rs 41,265\r\n</p><p>Best prices guaranteed. EMI option available.\r\n</p><p>Book Now\r\n</p><p>See more at TRAVELTRIANGLE.COM&nbsp;</p><p><b>2. Orange Village Resort - Scenic Marvel\r\n</b></p><p>The bamboo bar at Orange Village Resort is popular among the resorts in Gangtok\r\n</p><p>Image Source\r\n</p><p>The Orange Village resort in Gangtok is a beautiful luxury resort, nestled amidst the scenic marvels of Gangtok city. Guests staying here can enjoy the fresh mountain breeze and natural marvels complemented with all essential facilities and services. Apart from the regular resort services, Orange Village has an Orchid garden, Curio shop and a large discotheque. This is one of the best places to stay in Gangtok.\r\n</p><p>What’s special: Code Orange – the popular discotheque in Sikkim, and an eclectic fusion of the national and international cuisines at the inhouse restaurant — Suntaley Chulo\r\n</p><p>Suggested suite: Suite Rooms, which have a private verandah and river view\r\n</p><p>Tariff: INR 9,500 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p><b>3. Club Mahindra Royal Demazong Gangtok - Traditional Hospitality\r\n</b></p><p>Beautiful interiors of Club Mahindra resort in Gangtok\r\n</p><p>Image Source\r\n</p><p>5 km from Bagdogra International Airport, the Club Mahindra Resort in Gangtok is a stunning property. Overlooking the daunting Chola Ranges, this resort is located in the foothills of the mountain range and offers a perfect blend of traditional Sikkim hospitality and modern luxurious amenities. Besides, it ensures a comfy stay with its choice of 19 rooms – each complemented with private balconies, Wi-Fi and modern amenities. It is one of the top resorts in Gangtok.\r\n</p><p>What’s special: Way to the resort, traditional architecture, private sit-outs for every room,  and helicopter pick up from airport\r\n</p><p>Suggested suite: Any, as all the rooms are same\r\n</p><p>Tariff: As per the membership plans\r\n</p><p>Website | Reviews\r\n</p><p>20 Most Spellbinding Places To Visit Near Gangtok In 2022\r\n</p><p><b>4. Summit Norling Resort and Spa - Awe-inspiring Ambiance\r\n</b></p><p>Ethnic exteriors of Summit Noring Resort and Spa\r\n</p><p>Image Source\r\n</p><p>This beautiful resort is located close to the mouth of a valley and hence, commands amazing views. It has been designed in a manner that guests enjoy utmost comfortable and relaxation during their holiday. The resort has a beautiful waterfall inside the premises that lends a sense of calm and peace to the resort. Use of bamboo grove makes the d-cor quite exclusive; plus the long list of modern facilities and amenities making Summit Norling a preferred resort in Gangtok. If you are fond of luxurious getaways, dont miss this one.\r\n</p><p>What’s special: Bamboo interiors, Metta Spa for a relaxing Spa experience, multi cuisine in house restaurant\r\n</p><p>Suggested suite: Chalets rooms for a stay amidst the most romantic settings\r\n</p><p>Tariff: INR 7,000 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p><b>5. Welcomheritage Denzong Regency - Cozy Stays\r\n</b></p><p>Welcomheritage Denzong Regency is a popular resort in Gangtok\r\n</p><p>Image Source\r\n</p><p>This mountain retreat is one of the best 5 star resorts in Gangtok perched at a height of 6,000 feet. The rooms of the retreat command impressive views of the natural beauty of Gangtok. The property is sprawled in an area of 10 acres and is a family owned retreat. The private balconies of the rooms are perfect excuses to enjoy a cup of cffee while admiring the natures marvels spread all around. It is a good pick for honeymooners and couples as well as families.\r\n</p><p>What’s special: Family owned heritage property, magnificent views, authentic Sikkimese dining at the inhouse restaurant Mayal\r\n</p><p>Suggested suite: Regency Suite that comes with individual private balcony\r\n</p><p>Tariff: INR 9,850 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p>48 Extraordinary Places In Sikkim That Will Leave You Spellbound\r\n</p><p><b>6. Summit Ttakshang Residency Hotel - Spectacular Vistas\r\n</b></p><p>Colorful interiors of Summit Ttakshang Residency Hotel &amp; Spa in their suite rooms\r\n</p><p>Image Source\r\n</p><p>Summit Ttakshang Residency Hotel &amp; Spa is known for its charm and typical Himalayan hospitality among all of Gangtoks best resorts. Its subtle elegance makes it quite sought after by tourists looking for a comfortable stay. The balconies attached with every suite guarantee spectacular vistas around the resort. Vibrant interiors make the rooms warm and welcoming.\r\n</p><p>What’s special: Multi-cuisine restaurant offering an impressive spread of delightful dishes, spa and a spectacular view of the Kanchenjunga peaks\r\n</p><p>Suggested suite: Suite Room\r\n</p><p>Tariff: INR 8,000 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p><b>7. Mandarin Village Resort - Heart-warming Hospitality\r\n</b></p><p>Mandarin Village resort is perched upon the greenery of the hills\r\n</p><p>Image Source\r\n</p><p>Mandarin Village Resort is a beautifully constructed resort that offers amazing views of the Kanchenjunga Range. It is situated in West Sikkim at an altitude of 5, 600 feet — the buffer zone area of famous Bersay Rhododendron Sanctuary. Warm hospitality, soft music, homely atmosphere and amazing cuisines served in its restaurant make it a nice place to stay in. The rooms are warm and welcoming decorated in soft, pastel colors.\r\n</p><p>What’s special: The surroundings (small hamlets), and lush green gardens\r\n</p><p>Suggested suite: Suite Rooms; for their open balconies to enjoy the scenic vistas and a fireplace that ensures warm ambience\r\n</p><p>Tariff: INR 3,250 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p>43 Must Visit Places When Travelling to the North East\r\n</p><p><b>8. Martam Village Resort - Traditional Decor\r\n</b></p><p>A cottage of the Martam Village amidst the greenery upon hills\r\n</p><p>Image Source\r\n</p><p>Located in Rumtek, the Martam Village offers a comfortable stay and the best of panoramic vistas of this beautiful city. The resort has 14 cottages with twin beds, designed and built in traditional style. The restaurant serves an eclectic blend of Indian, Chinese and other cuisines at its in-house restaurant and bar. If you are traveling on a limited budget, this is one of the best cottage resorts in Gangtok.\r\n</p><p>What’s special: Local drink Chang being served in the bar\r\n</p><p>Suggested suite: Cottages are a good pick owing to the luxury and privacy they offer.\r\n</p><p>Tariff: INR 3,795 onwards, per night\r\n</p><p>Reviews\r\n</p><p><b>9. The Maplewood Resort - Spellbinding Vacays\r\n</b></p><p>View from the balconies of The Maplewood Resort in Gangtok\r\n</p><p>Image Source\r\n</p><p>The Maplewood resort Gangtok is a beautiful resort located close to NH31A. It is surrounded by daunting mountains. The d-cor is quite modest and the focus is on the comfort of the guests. The rooms are spacious and replete with modern facilities and amenities.\r\n</p><p>What’s special: The beautiful terrace\r\n</p><p>Suggested suite: Standard rooms, all are fairly good\r\n</p><p>Tariff: INR 2,150 onwards, per night\r\n</p><p>Reviews\r\n</p><p>Trip To Nathula Pass: A Once In A Lifetime Vacation Worth Taking In 2022\r\n</p><p><b>10. Saramsa Resort - Magnificent Sights\r\n</b></p><p>The grand building of Saramsa Resort is a mix of traditional and modern architecture\r\n</p><p>Image Source\r\n</p><p>Located close to the majestic hills, this resort is situated at Ranipool in Gangtok. The guests can enjoy magnificent sights from the comfort of their beds while listening to the chirping of the birds. The architecture of the resort is truly unique as it encompasses a blend of Bhutia, Lepcha, Colonial and Nepal styles. Walnut finish furniture, made of teak, makes the interiors cozy and warm. This is amongst the best Gangtok resorts.\r\n</p><p>What’s special: Shamsher’s Club, where a choice of beverages are available, complimentary pickup and drop from airport or railway station, the est of Sikkimese, Indian and Continental cuisines served at The Mayas Restaurant\r\n</p><p>Suggested suite: Royal Suite Rooms, popular for their classic interiors and a mini bar\r\n</p><p>Tariff: INR 7,800 onwards, per night\r\n</p><p>Website | Reviews\r\n</p><p><b>11. Elgin Nor-Khill - Luxurious Rooms\r\n</b></p><p>The front side of The elgin Nor Khill hotel\r\n</p><p>Image Source\r\n</p><p>Locally known as house of jewels; Elgin Nor-Khill is one of the most classy and vintage boutique resorts in Gangtok. The hotel boasts of its super luxurious rooms, grand Burma teak d-cor comprising of dragon art and flame symbols to wooden floors &amp; panels and vintage furniture. The warm hospitality, antique d-cor, stunning surrounding view and premium comfort of the hotel fascinates everyone, particularly newly married couples. Undeniably, this is one of the best resorts in Gangtok for honeymoon.\r\n</p><p>Whats special: A heart-warming welcome by offering cherry liquor and silken Khada (scarf)\r\n</p><p>Suggested suite: Deluxe suites\r\n</p><p>Tariff: INR 9950 per night onwards\r\n</p><p>6 Exquisite Resorts Near Gangtok For An Opulent Stay Close To Nature In 2022\r\n</p><p><b>12. Summit Golden Crescent - Aesthetically Designed Setup\r\n</b></p><p>Two beer glasses on table at a Roof top cafe in mountains\r\n</p><p>Image Source\r\n</p><p>Summit Golden Crescent is one of the best 4 star resorts in Gangtok for honeymoon. The resort has 38 aesthetically designed rooms and suites, superb dining facilities, manicured lawns, sober d-cor and offers incredibly appealing hospitality; all of these factors help create a wonderful holiday scene. You will have the time of your life here. This is amongst the best places to stay in Gangtok.\r\n</p><p>Whats special: Try out authentic Tibetan food and local delicacies at Yuksom\r\n</p><p>Suggested suite: Presidential suite with a private Jacuzzi\r\n</p><p>Tariff: INR 5000 per night onwards\r\n</p><p>Website | Reviews\r\n</p><p><b>13. The Nettle and Fern Resort - Incomparable Hospitality\r\n</b></p><p>two beds in a wooden floor hotel room\r\n</p><p>Image Source\r\n</p><p>As one of the most popular budget resorts in Gangtok, Nettle and Fern Hotel is an ideal place for romantic and cozy honeymoon. This resort is known for incomparable hospitality and services, and its 17 spacious modern rooms offer splendid views of the distant hills and valleys. The in-house restaurant offer incredible Indian and global cuisines. You will have the best time here and will not be disappointed by the variety of things Gangtok has to offer you.\r\n</p><p>Whats special: Explore the souvenir shop and take advantage of the travel desk\r\n</p><p>Suggested suite: Super deluxe family suite (Valley-view)\r\n</p><p>Tariff: INR 2700 per night onwards\r\n</p><p>Darjeeling Vs Gangtok: Which Destination Offers Bliss At Its Best?\r\n</p><p><b>14. Chumbi Mountain Retreat And Spa - Amazing Decor\r\n</b></p><p>a breakfast table outside a resort\r\n</p><p>Image Source\r\n</p><p>What makes Chumbi Mountain Retreat and Spa one of the best resorts in Gangtok is its unrivaled hospitality and luxury. They welcome you with refreshing organic tea and sumptuous food and drinks over a bonfire during winter. The traditional palace-like building, amazing decor, authentic local food, and the most beautiful views will make you want to stay here forever. This is amongst the best hotels in Gangtok.\r\n</p><p>Whats special: Lido (in-house movie theater)\r\n</p><p>Suggested suite: Deluxe suites\r\n</p><p>Tariff: INR 9,500 per night\r\n</p><p><b>15. Norbu Ghang Resort - Exotic Ambiance\r\n</b></p><p>a red painted resort amid trees\r\n</p><p>Image Source\r\n</p><p>Norbu Ghang Resort is a private luxury resort situated amidst the verdant hills overlooking the snow-capped peaks. Sikkimese themes and flavors in food and decor, the aesthetically done up rooms, Dzongri Bar, and Silver Fir restaurant together make your holiday delightful and enchanting. It is one of the best resorts in Gangtok and will liven up your day.\r\n</p><p>Whats special: Hot stone bath at Menchu- the resort spa\r\n</p><p>Suggested suite: Family suite\r\n</p><p>Tariff: INR 5,500 per night\r\n</p><p>26 Scenic Tourist Places In Darjeeling\r\n</p><p>Anyone interested in a breathtaking journey to the North East must take a trip to Gangtok to cover the most beautiful parts of the region. And now that you know of some of the best resorts in Gangtok to stay at, the trip would be all the more comfortable and exciting! Gangtok has everything that you possibly dreamed of and will not disappoint you.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', 2023, 2023),
(4, 1, '৭ টি বেস্ট রিসোর্ট থাকার জন্য সবার সাথে মিলে', 'জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন।', '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', 2023, 2023),
(5, 3, '১৫ টি বেস্ট রিসোর্ট থাকার জন্য সবার সাথে মিলে', 'মিলেমিশে থাকুন, সবাই মিলে ঘোরার মধ্যেই জীবনের আনন্দ।', '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', 2023, 2023),
(6, 2, 'যে যে জায়গাগুলো আপনি অবশ্যই দেখবেন ঘুরতে গেলে', 'মিলেমিশে থাকুন, সবাই মিলে ঘোরার মধ্যেই জীবনের আনন্দ।', '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p> \r\n</p><p>\r\n</p><p> \r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p> \r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', 2023, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `cottage_id` int(11) NOT NULL,
  `check_in_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_out_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` double(20,2) NOT NULL DEFAULT 0.00,
  `user_id` int(11) DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additional_info` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `staying_nights` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending' COMMENT 'pending,confirmed,cancelled',
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid' COMMENT 'paid,unpaid',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `cottage_id`, `check_in_date`, `check_out_date`, `cost`, `user_id`, `address`, `phone`, `additional_info`, `adults`, `children`, `staying_nights`, `status`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 5, '1676570400', '1676829600', 666.00, 70, 'New Elephant Road, Dhaka-1205', '01234567891', NULL, 1, 1, 3, 'pending', 'unpaid', '2023-02-18 01:42:57', 2023),
(2, 8, '1676570400', '1676829600', 1797.00, 70, 'New Elephant Road, Dhaka-1205', '01234567891', NULL, 1, 1, 3, 'confirmed', 'unpaid', '2023-02-18 01:44:00', 2023),
(3, 7, '1676570400', '1676829600', 690.00, 70, 'Eskaton, Polton Dhaka', '01234567891', NULL, 1, 1, 3, 'pending', 'unpaid', '2023-02-18 01:44:25', 2023),
(4, 6, '1676570400', '1676829600', 336.00, 70, 'Gulshan 2, Dhaka', '01234567891', NULL, 1, 1, 3, 'cancelled', 'unpaid', '2023-02-18 01:44:43', 2023),
(5, 3, '1676570400', '1676829600', 675.00, 70, 'Road 105, Dhaka 2023', '01234567891', NULL, 1, 1, 3, 'pending', 'unpaid', '2023-02-18 01:45:15', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `cottages`
--

CREATE TABLE `cottages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `timeline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `num_of_rooms` int(11) DEFAULT NULL,
  `num_of_beds` int(11) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_images` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'youtube',
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `is_best` tinyint(11) NOT NULL DEFAULT 0,
  `meta_title` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` int(20) DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cottages`
--

INSERT INTO `cottages` (`id`, `name`, `price`, `timeline`, `num_of_rooms`, `num_of_beds`, `size`, `gallery_images`, `thumbnail_image`, `description`, `video_link`, `video_provider`, `is_published`, `is_best`, `meta_title`, `meta_description`, `meta_image`, `slug`, `rating`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hill Lodge Premium', 299.00, '', 5, 4, '775 sft', '22,21', '20', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'https://www.youtube.com/watch?v=ReoKOylEeXg', 'youtube', 1, 1, 'Water Lodge Premium', '', 12, 'water-lodge-premium-s9au4', 5, '2023-02-17 07:04:52', '2023-02-17 20:15:13', NULL),
(2, 'Classic Villa Suite', 199.00, 'night', 2, 1, '455 sft', '21,22', '13', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'https://www.youtube.com/watch?v=ReoKOylEeXg', 'youtube', 1, 1, 'Classic Villa Suite', '', 13, 'classic-villa-suite-dtflk', 4, '2023-02-17 07:09:10', '2023-02-17 07:12:35', NULL),
(3, 'Ancient Mud House', 225.00, 'night', 2, 2, '418 sft', '22,21', '14', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'https://www.youtube.com/watch?v=ReoKOylEeXg', 'youtube', 1, 1, 'Ancient Mud House', '', 14, 'ancient-mud-house-svq2k', 5, '2023-02-17 07:09:54', '2023-02-17 07:12:34', NULL),
(4, 'Bhawal Cottage', 220.00, 'night', 4, 2, '350 sft', '21,22', '15', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'https://www.youtube.com/watch?v=ReoKOylEeXg', 'youtube', 1, 1, 'Bhawal Cottage', '', 15, 'bhawal-cottage-n3blx', 5, '2023-02-17 07:10:53', '2023-02-17 07:12:34', NULL),
(5, 'Premium Duplex Villa', 222.00, '', 3, 2, '250 sft', '22,21', '19', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'https://www.youtube.com/watch?v=ReoKOylEeXg', 'youtube', 1, 1, 'Premium Duplex Villa', '', 16, 'premium-duplex-villa-hhb6r', 5, '2023-02-17 07:11:32', '2023-02-17 20:04:14', NULL),
(6, 'Oitijjo Cottage', 112.00, '', 2, 2, '220 sft', '22,21', '18', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'https://www.youtube.com/watch?v=ReoKOylEeXg', 'youtube', 1, 1, 'Oitijjo Cottage', '', 17, 'oitijjo-cottage-yxwth', 5, '2023-02-17 07:12:25', '2023-02-17 20:16:14', NULL),
(7, 'Presidential Villa', 230.00, 'night', 1, 2, '250 sft', '22,21', '15', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'https://www.youtube.com/watch?v=ReoKOylEeXg', 'youtube', 1, 0, 'Presidential Villa', '', 15, 'presidential-villa-df21u', 4, '2023-02-17 22:38:58', '2023-02-17 22:38:58', NULL),
(8, 'Lake View Tower', 599.00, '', 8, 10, '650sq/f', '21,22', '12', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'https://www.youtube.com/watch?v=ReoKOylEeXg', 'youtube', 1, 0, 'Lake View Tower', 'The Origins of the Cottage Style\r\nThe word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.\r\nSimilar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n5 Types of Cottage Styles\r\nNearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\nCottage vs. Bungalow: What’s the Difference?\r\nThe word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\nThe square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\nLearn More\r\nGet the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.', 12, 'lake-view-tower', 5, '2023-02-17 22:40:52', '2023-02-21 06:09:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cottage_translations`
--

CREATE TABLE `cottage_translations` (
  `id` bigint(20) NOT NULL,
  `cottage_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timeline` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cottage_translations`
--

INSERT INTO `cottage_translations` (`id`, `cottage_id`, `name`, `timeline`, `description`, `size`, `lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Hill Lodge Premium', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '775 sft', 'en', '2023-02-17 07:04:52', '2023-02-17 20:12:21', NULL),
(2, 2, 'Classic Villa Suite', 'night', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '455 sft', 'en', '2023-02-17 07:09:10', '2023-02-17 07:09:10', NULL),
(3, 3, 'Ancient Mud House', 'night', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '418 sft', 'en', '2023-02-17 07:09:54', '2023-02-17 07:09:54', NULL),
(4, 4, 'Bhawal Cottage', 'night', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '350 sft', 'en', '2023-02-17 07:10:53', '2023-02-17 07:10:53', NULL),
(5, 5, 'Premium Duplex Villa', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '250 sft', 'en', '2023-02-17 07:11:32', '2023-02-17 20:02:17', NULL),
(6, 6, 'Oitijjo Cottage', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '220 sft', 'en', '2023-02-17 07:12:25', '2023-02-17 20:15:53', NULL),
(7, 7, 'Presidential Villa', 'night', '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '250 sft', 'en', '2023-02-17 22:38:58', '2023-02-17 22:38:58', NULL),
(8, 8, 'Lake View Tower', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '650sq/f', 'en', '2023-02-17 22:40:52', '2023-02-21 06:09:21', NULL),
(9, 8, 'লেক ভিউ টাওয়ার', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '650 স/ফিট', 'bn', '2023-02-21 06:12:22', '2023-02-21 06:18:21', NULL),
(10, 7, 'প্রেসিডেন্সিয়াল ভিলা', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '250 স/ফিট', 'bn', '2023-02-21 06:22:12', '2023-02-21 06:22:12', NULL),
(11, 6, 'ঐতিহ্য কটেজ', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '220 স/ফিট', 'bn', '2023-02-21 06:22:41', '2023-02-21 06:22:41', NULL),
(12, 5, 'প্রিমিয়াম ডুপ্লেক্স ভিলা', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '250 স/ফিট', 'bn', '2023-02-21 06:23:04', '2023-02-21 06:23:04', NULL),
(13, 4, 'ভাওয়াল কটেজ', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '350 স/ফিট', 'bn', '2023-02-21 06:23:25', '2023-02-21 06:23:25', NULL),
(14, 3, 'ঐতিহাসিক মাটির ঘর', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '418 স/ফিট', 'bn', '2023-02-21 06:23:58', '2023-02-21 06:23:58', NULL),
(15, 2, 'ক্লাসিক ভিলা স্যুইট', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '455 স/ফিট', 'bn', '2023-02-21 06:24:40', '2023-02-21 06:24:40', NULL),
(16, 1, 'হিল লজ প্রিমিয়াম', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '775 স/ফিট', 'bn', '2023-02-21 06:25:08', '2023-02-21 06:25:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alignment` tinyint(11) NOT NULL DEFAULT 0,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `alignment`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'U.S. Dollar', '$', 0, 1.00000, 1, 'USD', '2022-12-30 15:27:53', '2022-12-30 15:39:43', NULL),
(2, 'TAKA', '/-', 1, 10.00000, 1, 'BDT', '2022-12-30 15:31:40', '2023-02-18 01:33:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_date` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee` double(20,2) NOT NULL DEFAULT 0.00,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_images` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start_date`, `end_date`, `time`, `fee`, `location`, `thumbnail_image`, `slug`, `short_description`, `description`, `gallery_images`, `meta_image`, `meta_title`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anneversay Of Resort Celebration', '1681408800', '1682877599', '10:00AM - 04:00PM', 180.00, 'New Elephant Road, Dhaka - 1205', '59', 'anneversay-of-resort-celebration-3j96d', 'Small, local events allow you to connect with customers one-on-one. You only get to see your audience once a year and need to make an impression to move the needle. In 2023, more brands are investing in communities.', '<p>The world can’t agree on whether in-person or virtual events are better. Virtual events were a COVID-era necessity, but plenty of people are ready for in-person connections again. Fortunately, you don’t have to choose: hybrid events offer a happy medium.<br></p><p>With hybrid events, attendees can choose between attending in-person or online. You can host the event in a smaller (and cheaper) space, which is a bonus. You just need to hook up sound and audio to your event technology platform and share your content virtually. As long as virtual and in-person attendees get the same experience, hybrid events can be very effective.\r\n</p><p><b>Event Workspaces\r\n</b></p><p>It’s unlikely that event attendees will completely unplug from work to attend an in-person event. Work emails, Slack chats, and phone calls still happen while attendees are at an event, so why do event planners pretend that people don’t need to work? \r\n</p><p>Embrace the fact that busy professionals are at your event. Make it as comfortable as possible for attendees to work at your venue with event workspaces. They allow attendees to tackle work in a comfortable space with fewer distractions — no need to sit cross-legged on an expo hall floor with their laptops. \r\n</p><p><b>Local Events\r\n</b></p><p>Logically, it makes sense to host just one big event every year. You only have to book one venue and deal with one set of dates. Simple, right? \r\n</p><p>Maybe, but that isn’t on par with what we see for 2023. This year, companies are taking a different approach. Instead of hosting one big event, they’re hosting smaller events around the country. They’re taking their event on tour, bringing the event to attendees instead of asking attendees to come to a single major event. \r\n</p><p>The switch to local events is better for sustainability because attendees don’t have to travel as much. That makes it more affordable for attendees to go to your event, too: there’s no need to buy a cross-country plane ticket or a hotel if they can drive to a local event instead. \r\n</p><p>Yes, localized events have more moving parts, but they put your brand in front of more people. There are fewer barriers to attendees registering for your event, which can boost attendance and engagement in one fell swoop.&nbsp;</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '38', '59', 'Anneversay Of Resort Celebration', 'The world can’t agree on whether in-person or virtual events are better. Virtual events were a COVID-era necessity, but plenty of people are ready for in-person connections again. Fortunately, you don’t have to choose: hybrid events offer a happy medium.With hybrid events, attendees can choose between attending in-person or online. You can host the event in a smaller (and cheaper) space, which is a bonus. You just need to hook up sound and audio to your event technology platform and share your content virtually. As long as virtual and in-person attendees get the same experience, hybrid events can be very effective.\r\nEvent Workspaces\r\nIt’s unlikely that event attendees will completely unplug from work to attend an in-person event. Work emails, Slack chats, and phone calls still happen while attendees are at an event, so why do event planners pretend that people don’t need to work? \r\nEmbrace the fact that busy professionals are at your event. Make it as comfortable as possible for attendees to work at your venue with event workspaces. They allow attendees to tackle work in a comfortable space with fewer distractions — no need to sit cross-legged on an expo hall floor with their laptops. \r\nLocal Events\r\nLogically, it makes sense to host just one big event every year. You only have to book one venue and deal with one set of dates. Simple, right? \r\nMaybe, but that isn’t on par with what we see for 2023. This year, companies are taking a different approach. Instead of hosting one big event, they’re hosting smaller events around the country. They’re taking their event on tour, bringing the event to attendees instead of asking attendees to come to a single major event. \r\nThe switch to local events is better for sustainability because attendees don’t have to travel as much. That makes it more affordable for attendees to go to your event, too: there’s no need to buy a cross-country plane ticket or a hotel if they can drive to a local event instead. \r\nYes, localized events have more moving parts, but they put your brand in front of more people. There are fewer barriers to attendees registering for your event, which can boost attendance and engagement in one fell swoop.&nbsp;\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2023-02-18 01:16:34', '2023-02-18 01:16:34', NULL),
(2, 'Cultural Fest of The Year 2023', '1682877600', '1683741599', '10AM - 6PM', 110.00, 'Kamarpara, Uttara, Dhaka - 1230', '61', 'cultural-fest-of-the-year-2023-rkafy', 'Small, local events allow you to connect with customers one-on-one. You only get to see your audience once a year and need to make an impression to move the needle. In 2023, more brands are investing in communities.', '<p>The world can’t agree on whether in-person or virtual events are better. Virtual events were a COVID-era necessity, but plenty of people are ready for in-person connections again. Fortunately, you don’t have to choose: hybrid events offer a happy medium.\r\n</p><p>With hybrid events, attendees can choose between attending in-person or online. You can host the event in a smaller (and cheaper) space, which is a bonus. You just need to hook up sound and audio to your event technology platform and share your content virtually. As long as virtual and in-person attendees get the same experience, hybrid events can be very effective.\r\n</p><p><b>Event Workspaces\r\n</b></p><p>It’s unlikely that event attendees will completely unplug from work to attend an in-person event. Work emails, Slack chats, and phone calls still happen while attendees are at an event, so why do event planners pretend that people don’t need to work?\r\n</p><p>Embrace the fact that busy professionals are at your event. Make it as comfortable as possible for attendees to work at your venue with event workspaces. They allow attendees to tackle work in a comfortable space with fewer distractions — no need to sit cross-legged on an expo hall floor with their laptops.\r\n</p><p><b>Local Events\r\n</b></p><p>Logically, it makes sense to host just one big event every year. You only have to book one venue and deal with one set of dates. Simple, right?\r\n</p><p>Maybe, but that isn’t on par with what we see for 2023. This year, companies are taking a different approach. Instead of hosting one big event, they’re hosting smaller events around the country. They’re taking their event on tour, bringing the event to attendees instead of asking attendees to come to a single major event.\r\n</p><p>The switch to local events is better for sustainability because attendees don’t have to travel as much. That makes it more affordable for attendees to go to your event, too: there’s no need to buy a cross-country plane ticket or a hotel if they can drive to a local event instead.\r\n</p><p>Yes, localized events have more moving parts, but they put your brand in front of more people. There are fewer barriers to attendees registering for your event, which can boost attendance and engagement in one fell swoop.&nbsp;</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '34', '61', 'Cultural Fest of The Year 2023', 'The world can’t agree on whether in-person or virtual events are better. Virtual events were a COVID-era necessity, but plenty of people are ready for in-person connections again. Fortunately, you don’t have to choose: hybrid events offer a happy medium.\r\nWith hybrid events, attendees can choose between attending in-person or online. You can host the event in a smaller (and cheaper) space, which is a bonus. You just need to hook up sound and audio to your event technology platform and share your content virtually. As long as virtual and in-person attendees get the same experience, hybrid events can be very effective.\r\nEvent Workspaces\r\nIt’s unlikely that event attendees will completely unplug from work to attend an in-person event. Work emails, Slack chats, and phone calls still happen while attendees are at an event, so why do event planners pretend that people don’t need to work?\r\nEmbrace the fact that busy professionals are at your event. Make it as comfortable as possible for attendees to work at your venue with event workspaces. They allow attendees to tackle work in a comfortable space with fewer distractions — no need to sit cross-legged on an expo hall floor with their laptops.\r\nLocal Events\r\nLogically, it makes sense to host just one big event every year. You only have to book one venue and deal with one set of dates. Simple, right?\r\nMaybe, but that isn’t on par with what we see for 2023. This year, companies are taking a different approach. Instead of hosting one big event, they’re hosting smaller events around the country. They’re taking their event on tour, bringing the event to attendees instead of asking attendees to come to a single major event.\r\nThe switch to local events is better for sustainability because attendees don’t have to travel as much. That makes it more affordable for attendees to go to your event, too: there’s no need to buy a cross-country plane ticket or a hotel if they can drive to a local event instead.\r\nYes, localized events have more moving parts, but they put your brand in front of more people. There are fewer barriers to attendees registering for your event, which can boost attendance and engagement in one fell swoop.&nbsp;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2023-02-18 01:21:07', '2023-02-18 01:21:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_translations`
--

CREATE TABLE `event_translations` (
  `id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_translations`
--

INSERT INTO `event_translations` (`id`, `event_id`, `title`, `short_description`, `description`, `lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Anneversay Of Resort Celebration', 'Small, local events allow you to connect with customers one-on-one. You only get to see your audience once a year and need to make an impression to move the needle. In 2023, more brands are investing in communities.', '<p>The world can’t agree on whether in-person or virtual events are better. Virtual events were a COVID-era necessity, but plenty of people are ready for in-person connections again. Fortunately, you don’t have to choose: hybrid events offer a happy medium.<br></p><p>With hybrid events, attendees can choose between attending in-person or online. You can host the event in a smaller (and cheaper) space, which is a bonus. You just need to hook up sound and audio to your event technology platform and share your content virtually. As long as virtual and in-person attendees get the same experience, hybrid events can be very effective.\r\n</p><p><b>Event Workspaces\r\n</b></p><p>It’s unlikely that event attendees will completely unplug from work to attend an in-person event. Work emails, Slack chats, and phone calls still happen while attendees are at an event, so why do event planners pretend that people don’t need to work? \r\n</p><p>Embrace the fact that busy professionals are at your event. Make it as comfortable as possible for attendees to work at your venue with event workspaces. They allow attendees to tackle work in a comfortable space with fewer distractions — no need to sit cross-legged on an expo hall floor with their laptops. \r\n</p><p><b>Local Events\r\n</b></p><p>Logically, it makes sense to host just one big event every year. You only have to book one venue and deal with one set of dates. Simple, right? \r\n</p><p>Maybe, but that isn’t on par with what we see for 2023. This year, companies are taking a different approach. Instead of hosting one big event, they’re hosting smaller events around the country. They’re taking their event on tour, bringing the event to attendees instead of asking attendees to come to a single major event. \r\n</p><p>The switch to local events is better for sustainability because attendees don’t have to travel as much. That makes it more affordable for attendees to go to your event, too: there’s no need to buy a cross-country plane ticket or a hotel if they can drive to a local event instead. \r\n</p><p>Yes, localized events have more moving parts, but they put your brand in front of more people. There are fewer barriers to attendees registering for your event, which can boost attendance and engagement in one fell swoop.&nbsp;</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-18 01:16:34', '2023-02-18 01:16:34', NULL),
(2, 2, 'Cultural Fest of The Year 2023', 'Small, local events allow you to connect with customers one-on-one. You only get to see your audience once a year and need to make an impression to move the needle. In 2023, more brands are investing in communities.', '<p>The world can’t agree on whether in-person or virtual events are better. Virtual events were a COVID-era necessity, but plenty of people are ready for in-person connections again. Fortunately, you don’t have to choose: hybrid events offer a happy medium.\r\n</p><p>With hybrid events, attendees can choose between attending in-person or online. You can host the event in a smaller (and cheaper) space, which is a bonus. You just need to hook up sound and audio to your event technology platform and share your content virtually. As long as virtual and in-person attendees get the same experience, hybrid events can be very effective.\r\n</p><p><b>Event Workspaces\r\n</b></p><p>It’s unlikely that event attendees will completely unplug from work to attend an in-person event. Work emails, Slack chats, and phone calls still happen while attendees are at an event, so why do event planners pretend that people don’t need to work?\r\n</p><p>Embrace the fact that busy professionals are at your event. Make it as comfortable as possible for attendees to work at your venue with event workspaces. They allow attendees to tackle work in a comfortable space with fewer distractions — no need to sit cross-legged on an expo hall floor with their laptops.\r\n</p><p><b>Local Events\r\n</b></p><p>Logically, it makes sense to host just one big event every year. You only have to book one venue and deal with one set of dates. Simple, right?\r\n</p><p>Maybe, but that isn’t on par with what we see for 2023. This year, companies are taking a different approach. Instead of hosting one big event, they’re hosting smaller events around the country. They’re taking their event on tour, bringing the event to attendees instead of asking attendees to come to a single major event.\r\n</p><p>The switch to local events is better for sustainability because attendees don’t have to travel as much. That makes it more affordable for attendees to go to your event, too: there’s no need to buy a cross-country plane ticket or a hotel if they can drive to a local event instead.\r\n</p><p>Yes, localized events have more moving parts, but they put your brand in front of more people. There are fewer barriers to attendees registering for your event, which can boost attendance and engagement in one fell swoop.&nbsp;</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-18 01:21:07', '2023-02-18 01:21:07', NULL),
(3, 1, 'রিসোর্ট এর জন্মদিন উৎযাপন', 'জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।', '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', '2023-02-21 15:44:54', '2023-02-21 15:44:54', NULL),
(4, 2, 'কালচারাল ফেস্ট ২০২৩', 'জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।', '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', '2023-02-21 15:45:24', '2023-02-21 15:45:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `image` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `order`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 39, '2023-02-17 22:44:34', '2023-02-17 22:44:34'),
(2, 3, 40, '2023-02-17 22:44:48', '2023-02-17 22:48:02'),
(3, 5, 41, '2023-02-17 22:44:57', '2023-02-17 22:47:47'),
(4, 2, 43, '2023-02-17 22:45:06', '2023-02-17 22:46:59'),
(5, 6, 44, '2023-02-17 22:45:16', '2023-02-17 22:47:50'),
(6, 4, 42, '2023-02-17 22:45:27', '2023-02-17 22:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `flag` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `flag`, `code`, `rtl`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', 'en', 'en', 0, 1, '2019-01-20 12:13:20', '2019-01-20 12:13:20', NULL),
(8, 'Bangla', 'bd', 'bn', 0, 1, '2021-10-14 06:38:08', '2023-01-30 18:05:36', NULL),
(9, 'Hindi', 'in', 'hi', 0, 0, '2021-10-25 06:42:53', '2023-02-18 01:35:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(6, '2016_06_01_000004_create_oauth_clients_table', 3),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(8, '2021_10_27_093231_create_permission_tables', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 73);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('191da092fb7d812ec1af8aa536df15de32c0c38121dec77033b27a8bdaa7e1a70b1e4916eb479021', 70, 1, 'Personal Access Token', '[]', 0, '2023-02-20 19:51:49', '2023-02-20 19:51:49', '2025-01-20 14:51:49'),
('28577289d25a699b404104fc543d44eaf1aff3ab7ce299e429af89bb1dca25edba4e4e6e207ab425', 70, 1, 'Personal Access Token', '[]', 0, '2023-02-20 06:12:41', '2023-02-20 06:12:41', '2025-01-20 01:12:41'),
('35999f2cb4116dd1244a7eb085f17cffb4820333b12f5f2cc9b6a91c82b7d9ae6084c4977fb870e9', 70, 1, 'Personal Access Token', '[]', 0, '2023-02-21 04:46:54', '2023-02-21 04:46:54', '2025-01-20 23:46:54'),
('6c942eef551d52062b4092ecaa9f12232bc5a0acc5642a9b56949bfd30457f17a22fe242572d89fb', 70, 1, 'Personal Access Token', '[]', 0, '2023-02-15 15:16:49', '2023-02-15 15:16:49', '2025-01-15 10:16:49'),
('b5f5b8897d84bd490f32b7acf3e9426fe4c36e901a87e90ab01fada7a41206beabcada75a91e554d', 70, 1, 'Personal Access Token', '[]', 0, '2023-02-18 06:00:34', '2023-02-18 06:00:34', '2025-01-18 01:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Yesort - PWA & SPA Resort Web Application with Booking Management Personal Access Client', '1rSUefjjvoG2Mtt9jSKYN8WERMKMNMYroGT015Y7', NULL, 'http://localhost', 1, 0, 0, '2023-02-14 22:05:07', '2023-02-14 22:05:07'),
(2, NULL, 'Yesort - PWA & SPA Resort Web Application with Booking Management Password Grant Client', 'LyHZmgnZzzsWdmpcpA8HmGCtSiEqpq7RLku8bUMB', 'users', 'http://localhost', 0, 1, 0, '2023-02-14 22:05:07', '2023-02-14 22:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-14 22:05:07', '2023-02-14 22:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` int(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'custom_page', 'About Us', 'about-us', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting & workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, NULL, NULL, NULL, '2023-02-10 13:34:41', '2023-02-10 14:41:16', NULL),
(2, 'custom_page', 'FAQ\'s', 'faq', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, NULL, NULL, NULL, '2023-02-10 13:37:10', '2023-02-10 13:37:10', NULL),
(3, 'custom_page', 'Terms Of Service', 'Terms-Of-Service', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, NULL, NULL, NULL, '2023-02-10 14:39:56', '2023-02-10 14:39:56', NULL),
(4, 'custom_page', 'Privacy policy', 'Privacy-policy', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, NULL, NULL, NULL, '2023-02-10 14:40:16', '2023-02-10 14:40:16', NULL),
(5, 'custom_page', 'Our Services', 'Our-Services', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', NULL, NULL, NULL, NULL, '2023-02-10 14:40:37', '2023-02-10 14:40:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `title`, `content`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'About Us', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting & workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-10 13:34:41', '2023-02-10 14:41:16'),
(2, 2, 'FAQ\'s', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-10 13:37:10', '2023-02-10 13:37:10'),
(3, 3, 'Terms Of Service', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-10 14:39:56', '2023-02-10 14:39:56'),
(4, 4, 'Privacy policy', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-10 14:40:16', '2023-02-10 14:40:16'),
(5, 5, 'Our Services', '<p>Yesor Resort, eighteen kilometers from Dhaka Airport which is easily accessible by road and it takes only one hour and thirty minutes to reach, lies in a rural environment of Sukundi village of Gazipur on 54 bigha of land which is near to the heritage site “Bhawal Rajbari” and “Bhawal National Park”. Breathtaking views of surrounding lake water and wildlife in amazing natural beauty of land covered with dense green blanket of flora makes anyone feel like enjoying the country’s natural heritage.\r\n</p><p>In this peaceful and tranquil environment, you can have the glimpse of wildlife, firefly processions at night and according to the rules of the resort, during moonlight no light is lit in outside. It is one of the best holiday destination to enjoy the full moon and rain in the rainy season; also to breathe in the fresh air.\r\n</p><p>Eco-Friendly Boutique Resort\r\n</p><p>Eco-Resort: Chuti lodges facility that takes steps to reduce its carbon footprint while giving back to its local community. Some of the best ways that we practice to make our resort more eco -friendly and sustainable like maintain energy saving, limit water waste, have guests reuse linens, equip staff with eco-friendly cleaning staff, serve local and organic food, consider composting etc.\r\n</p><p>Boutique Resort: This 50 room’s unique boutique resort with a relaxing and quiet lawn of Chuti have relaxing atmosphere that would absolutely amaze the guests with its vibrant landscaping and modern amenities. From the very moment of arrival guest will feel embraced with nature.&amp;\r\n</p><p>We Offer\r\n</p><p>Pleasant for couples and families.\r\n</p><p>Suitable for corporate meeting &amp; workshop.\r\n</p><p>Cottages and suites to accommodate.\r\n</p><p>Modern restaurant serving delicious foods.\r\n</p><p>Authentic recreation in a village environment.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-10 14:40:37', '2023-02-10 14:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `parent`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'show_dashboard', 'dashboard', 'web', NULL, NULL),
(2, 'show_cottages', 'cottages', 'web', NULL, NULL),
(3, 'add_cottages', 'cottages', 'web', NULL, NULL),
(4, 'edit_cottages', 'cottages', 'web', NULL, NULL),
(5, 'show_bookings', 'bookings', 'web', NULL, NULL),
(6, 'show_services', 'services', 'web', NULL, NULL),
(7, 'add_services', 'services', 'web', NULL, NULL),
(8, 'edit_services', 'services', 'web', NULL, NULL),
(9, 'delete_services', 'services', 'web', NULL, NULL),
(10, 'show_events', 'events', 'web', NULL, NULL),
(11, 'add_events', 'events', 'web', NULL, NULL),
(12, 'edit_events', 'events', 'web', NULL, NULL),
(13, 'delete_events', 'events', 'web', NULL, NULL),
(14, 'show_staffs', 'staffs', 'web', NULL, NULL),
(15, 'add_staffs', 'staffs', 'web', NULL, NULL),
(16, 'edit_staffs', 'staffs', 'web', NULL, NULL),
(17, 'delete_staffs', 'staffs', 'web', NULL, NULL),
(18, 'show_roles', 'staffs', 'web', NULL, NULL),
(19, 'add_roles', 'staffs', 'web', NULL, NULL),
(20, 'edit_roles', 'staffs', 'web', NULL, NULL),
(21, 'delete_roles', 'staffs', 'web', NULL, NULL),
(22, 'show_guests', 'guests', 'web', NULL, NULL),
(23, 'ban_guests', 'guests', 'web', NULL, NULL),
(24, 'show_subscribers', 'promotions', 'web', NULL, NULL),
(25, 'delete_subscribers', 'promotions', 'web', NULL, NULL),
(26, 'send_emails', 'promotions', 'web', NULL, NULL),
(27, 'show_blogs', 'blogs', 'web', NULL, NULL),
(28, 'add_blogs', 'blogs', 'web', NULL, NULL),
(29, 'edit_blogs', 'blogs', 'web', NULL, NULL),
(30, 'publish_blogs', 'blogs', 'web', NULL, NULL),
(31, 'delete_blogs', 'blogs', 'web', NULL, NULL),
(32, 'show_blog_categories', 'blogs', 'web', NULL, NULL),
(33, 'add_blog_categories', 'blogs', 'web', NULL, NULL),
(34, 'edit_blog_categories', 'blogs', 'web', NULL, NULL),
(35, 'delete_blog_categories', 'blogs', 'web', NULL, NULL),
(36, 'show_media', 'media_gallery', 'web', NULL, NULL),
(38, 'delete_media', 'media_gallery', 'web', NULL, NULL),
(39, 'manage_header', 'manage_website', 'web', NULL, NULL),
(40, 'manage_homepage', 'manage_website', 'web', NULL, NULL),
(41, 'manage_gallery', 'manage_website', 'web', NULL, NULL),
(42, 'manage_pages', 'manage_website', 'web', NULL, NULL),
(43, 'manage_footer', 'manage_website', 'web', NULL, NULL),
(44, 'manage_general_settings', 'manage_system', 'web', NULL, NULL),
(45, 'manage_language_settings', 'manage_system', 'web', NULL, NULL),
(46, 'manage_currency_settings', 'manage_system', 'web', NULL, NULL),
(47, 'manage_smtp_settings', 'manage_system', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2021-10-27 09:37:56', '2021-10-27 09:37:59'),
(10, 'Manager', 'web', '2023-01-31 15:56:40', '2023-01-31 15:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(8, 10),
(9, 10),
(10, 10),
(11, 10),
(12, 10),
(13, 10),
(14, 10),
(15, 10),
(16, 10),
(17, 10),
(18, 10),
(19, 10),
(20, 10),
(21, 10),
(22, 10),
(23, 10),
(24, 10),
(25, 10),
(26, 10),
(27, 10),
(28, 10),
(29, 10),
(30, 10),
(31, 10),
(32, 10),
(33, 10),
(34, 10),
(35, 10),
(36, 10),
(38, 10),
(39, 10),
(40, 10),
(41, 10),
(42, 10),
(43, 10),
(44, 10),
(45, 10),
(46, 10),
(47, 10);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_images` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_best` tinyint(4) NOT NULL DEFAULT 0,
  `meta_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `thumbnail_image`, `slug`, `short_description`, `description`, `gallery_images`, `is_best`, `meta_image`, `meta_title`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Indoor Games', '23', 'indor-games-sztrg', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '31', 1, '23', 'Indor Games', '', '2023-02-17 20:49:35', '2023-02-17 21:04:50', NULL),
(2, 'Outdoor Sports', '25', 'outdoor-sports-yjato', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '32', 1, '25', 'Outdoor Sports', '', '2023-02-17 20:50:29', '2023-02-17 21:06:34', NULL),
(3, 'Swimming Pool', '24', 'swimming-io2bv', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '36', 0, '24', 'Swimming', '', '2023-02-17 20:51:31', '2023-02-17 21:01:46', NULL),
(4, 'Fitness', '27', 'fitness-tfsbw', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '37', 1, '27', 'Fitness', '', '2023-02-17 20:52:15', '2023-02-17 21:01:29', NULL),
(5, 'Restaurant', '26', 'restaurant-ii299', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '38', 1, '26', 'Restaurant', '', '2023-02-17 21:01:01', '2023-02-17 21:01:12', NULL),
(6, 'Yoga Session', '28', 'yoga-session-25pke', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '33', 0, '28', 'Yoga Session', '', '2023-02-17 21:03:50', '2023-02-17 21:04:23', NULL),
(7, 'Live Show', '29', 'live-show-gmfv7', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '34', 1, '29', 'Live Show', '', '2023-02-17 21:05:13', '2023-02-17 21:05:17', NULL),
(8, 'Surprise Events', '30', 'surprise-events-5uvua', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.\r\n</p><p>\r\n</p><p><br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><br></p><p>5 Types of Cottage Styles\r\n</p><p><br></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p><br></p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p><br></p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p><br></p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p><br></p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p><br></p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><br></p><p>Cottage vs. Bungalow: What’s the Difference?\r\n</p><p><br></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p><br></p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><br></p><p>Learn More\r\n</p><p><br></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', '35', 1, '30', 'Surprise Events', 'The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.\r\n\r\nSimilar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n5 Types of Cottage Styles\r\nNearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\nCottage vs. Bungalow: What’s the Difference?\r\nThe word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\nThe square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\nLearn More\r\nGet the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.', '2023-02-17 21:07:07', '2023-02-21 15:40:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_translations`
--

CREATE TABLE `service_translations` (
  `id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_translations`
--

INSERT INTO `service_translations` (`id`, `service_id`, `name`, `short_description`, `description`, `lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Indoor Games', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-17 20:49:35', '2023-02-17 21:04:50', NULL),
(2, 2, 'Outdoor Sports', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-17 20:50:29', '2023-02-17 20:53:25', NULL),
(3, 3, 'Swimming Pool', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-17 20:51:31', '2023-02-17 20:57:31', NULL),
(4, 4, 'Fitness', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-17 20:52:15', '2023-02-17 20:53:17', NULL),
(5, 5, 'Restaurant', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-17 21:01:01', '2023-02-17 21:01:01', NULL),
(6, 6, 'Yoga Session', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-17 21:03:50', '2023-02-17 21:03:50', NULL),
(7, 7, 'Live Show', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.<br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><b>5 Types of Cottage Styles\r\n</b></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><b>Cottage vs. Bungalow: What’s the Difference?\r\n</b></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><b>Learn More\r\n</b></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-17 21:05:13', '2023-02-17 21:05:13', NULL),
(8, 8, 'Surprise Events', NULL, '<p>The word \"cottage\" traces back to the Middle Ages, where it was adapted from the Latin word cotagium. An old English cottage was the home of a cotter, a person who lived on the property of a nobleman\'s manor. These old English cottages tended to have a thatched roof and stone or wood walls. Thatched-roof cottages were built throughout many eras of English architecture, including the Tudor and Victorian eras.\r\n</p><p>\r\n</p><p><br></p><p>Similar cottage house plan styles developed in Norway (the Norwegian word for such buildings is hytte), Finland (the Finnish word is mökki), and Sweden (the Swedish word is stuga), and little cottages also dot the landscapes of nations such as South Africa, Chile, Russia, Canada, the United Kingdom, and the United States.\r\n</p><p><br></p><p>5 Types of Cottage Styles\r\n</p><p><br></p><p>Nearly all modern cottage floor plans feature traditional home living spaces including a master bedroom, a living room, a dining room (or a cottage kitchen with a dining area), and bathrooms. Cottage design can also vary depending on location and the period in which it was built.\r\n</p><p><br></p><p>1. English cottages: Cottages on the English countryside often have thatched roofs, which were built as an economical form of weatherproofing. These English structures often feature cottage gardens that grow up against the buildings.\r\n</p><p><br></p><p>2. Nordic cottages: In Nordic countries, cottages tend to be built from wood and are often painted red, which helps them stand out from the summer greens and winter whites of the surrounding countryside. These cottages often serve as holiday getaways for Swedish, Danish, or Norwegian families.\r\n</p><p><br></p><p>3. Canadian cottages: Many Canadian cottages have two stories and are small vacation home designs built near a body of water.\r\n</p><p><br></p><p>4. American cottages: American cottages on Cape Cod, Martha\'s Vineyard, and Nantucket often feature wood shingles that turn gray in the salty air.\r\n</p><p><br></p><p>5. South African cottages: In South Africa, langhuis (Afrikaans for \"long cottage\") are built with stucco walls and a thatched roof.\r\n</p><p><br></p><p>Cottage vs. Bungalow: What’s the Difference?\r\n</p><p><br></p><p>The word “cottage” can refer to any type of small house regardless of style. By contrast, a bungalow is a specific architectural style that evolved in the Bengal region of India. By definition, small bungalows can be cottages, but not all cottages are bungalows. Bungalows tend to be characterized by sloping roofs, dormer windows on the second floor, overhanging porches, and a large first floor and smaller second floor.\r\n</p><p><br></p><p>The square footage and external appearance of bungalows can vary from region to region. For instance, Craftsman-style bungalows are often built in a post-and-beam style with exposed framing and overhanging eaves. By contrast, the Chicago bungalow style features brick exteriors and second story gables parallel to the street.\r\n</p><p><br></p><p>Learn More\r\n</p><p><br></p><p>Get the MasterClass Annual Membership for exclusive access to video lessons taught by masters, including Frank Gehry, Will Wright, Annie Leibovitz, Kelly Wearstler, Ron Finley, and more.</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'en', '2023-02-17 21:07:07', '2023-02-21 15:40:44', NULL),
(9, 8, 'সারপ্রাইজ ইভেন্ট', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', '2023-02-21 15:40:49', '2023-02-21 15:40:49', NULL),
(10, 7, 'লাইভ শো', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', '2023-02-21 15:41:58', '2023-02-21 15:41:58', NULL),
(11, 6, 'ইয়োগা সেশান', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', '2023-02-21 15:42:12', '2023-02-21 15:42:12', NULL),
(12, 5, 'রেস্টুরেন্ট', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', '2023-02-21 15:42:36', '2023-02-21 15:42:36', NULL),
(13, 4, 'ফিটনেস', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', '2023-02-21 15:42:48', '2023-02-21 15:42:48', NULL),
(14, 3, 'সুইমিং পুল', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', '2023-02-21 15:43:03', '2023-02-21 15:43:03', NULL),
(15, 2, 'আউটডোর স্পোর্টস', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', '2023-02-21 15:43:25', '2023-02-21 15:43:25', NULL),
(16, 1, 'ইন্ডোর গেমস', NULL, '<p>\'ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল\' বলে ডাকা হচ্ছে একে। এবার অনলাইনে প্রকাশিত হল তার প্রথম ঝলক। শেবারাহ রিসর্টটিকেই বলা হচ্ছে ভবিষ্যতের সবচেয়ে উপযুক্ত হোটেল।\r\n</p><p>জনবসতিহীন শায়বারা দ্বীপে অবস্থিত শেবারাহ রিসোর্ট। ২০২৪ সালের মধ্যে জনসাধারণের জন্য এটি খুলে দেওয়া হবে। কিলা ডিজাইন কোম্পানি ডিজাইন করা হয়েছে এই বিলাসবহুল অত্যাধুনিক হোটেলের।\r\n</p><p>সৌদি আরবের মূল ভূখণ্ড থেকে একটি মাত্র ৪৫ মিনিটের নৌকা যাত্রায় পৌঁছানো যাবে এই দ্বীপে। সৌদি আরবের একটি প্রতিবেদনে অনুযায়ী, রিসোর্টে পৌঁছাতে এটুকুই সময় লাগবে।\r\n</p><p>ভবিষ্যতের \'অরবস\'(গোলাকার স্থান) এই হোটেলের অন্যতম প্রধান আকর্ষণ। এটি \'জলের উপর ভাসমান অবস্থায়\' আকাশ এবং সমুদ্র উভয়কেই প্রতিফলিত করবে । এমনকী জলের নীচের প্রবাল প্রাচীরের দৃশ্যও দেখা যাবে এর মাধ্যমে।\r\n</p><p>এছাড়াও অতিথিদের প্রাকৃতিক পরিবেশের মধ্যে রাখতে \'অরব\'গুলি সমুদ্রতীরের এলাকায় থাকবে। চারপাশের বিস্তীর্ণ অঞ্চল ঘন ম্যানগ্রোভ, মরুভূমির উদ্ভিদ, সাদা বালির টিলা ও সৈকত নানারম বৈচিত্র্যে ভরপুর। এছাড়াও প্রবাল প্রাচীরের অপরূপ দৃশ্যও দেখতে পাবেন অতিথিরা। শায়বারাহ রিসোর্টে একসঙ্গে মোট ১৪০ জন অতিথি থাকতে পারবেন‌। এছাড়াও তাদের পরিষেবা দিতে ২৬০ জন কর্মী থাকবেন।\r\n</p><p>সম্পূর্ণ পরিবেশবান্ধব উপায়ে তৈরি করা হয়েছে এই রিসর্ট। বিদ্যুৎ উৎপাদনের জন্য একটি সোলার ফার্মের মাধ্যমে নিজস্ব বিদ্যুৎ তৈরি করার ব্যবস্থাও রয়েছে ।এছাড়া একটি ডিস্যালিনেশন প্ল্যান্টের সাহায্যে পরিষ্কার জল সহজে সরবরাহ করার পরিকল্পনাও করা হয়েছে। এটি সমুদ্রের জলকে মিষ্টি জলে পরিণত করবে।\r\n</p><p>তবে এতেই সব শেষ নয়। সুইমিংপুল ও ব্যায়ামের সুবিধা সহ একটি \'দুর্দান্তের স্পা\'-এর অভিজ্ঞতাও হবে আপনার। এছাড়া অতিথিদের জন্য বেশ কিছু বিনোদনের সুবিধাও থাকবে।\r\n</p><p>ডিজাইনারদের মতে, এমন প্রকল্পের প্রাথমিক লক্ষ্য হল আশেপাশের আবাসস্থলের জীববৈচিত্র্যের সংরক্ষণ এবং তা উন্নত করা।\r\n</p><p>রেড সি গ্লোবালের সিইও জন প্যাগানো বলেছেন, আমরা সৌদি আরবে ভরিষ্যতের পর্যটনকে ভবিষ্যতকে স্বাগত জানাচ্ছি। তাঁর কথায়, এই অরবগুলি আইকনিক শেবারাহ রিসোর্টের জন্য ৭৩টি ওভারওয়াটার ভিলার প্রথম ব্যাচ।\r\n</p><p>কীভাবে দর্শক পৌঁছাবেন এই হোটেলে?\r\n</p><p>জানানো হয়, তাঁরা নৌকা বা একটি প্লেনের মাধ্যমে এখানে আসতে পারবেন। এছাড়াও একবার নামার পর চালকবিহীন গাড়ি তাদের হোটেলের ভিতরে নিয়ে যাবে।</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p><p>\r\n</p>', 'bn', '2023-02-21 15:43:41', '2023-02-21 15:43:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `type` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'topbar_helpline_number', '+12 345 678 969', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(2, 'topbar_email', 'yesort@example.com', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(3, 'topbar_facebook_link', 'https://www.facebook.com/', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(4, 'topbar_twitter_link', 'https://www.twitter.com/', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(5, 'topbar_instagram_link', 'https://www.instagram.com/', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(6, 'topbar_linked_in_link', 'https://www.linkedin.com/', '2023-02-05 18:07:32', '2023-02-05 18:07:32', NULL),
(7, 'header_logo', '76', '2023-02-05 18:07:32', '2023-02-20 04:05:02', NULL),
(8, 'site_name', 'Yesort - PWA Resort Website & Booking Management Web Application', '2023-02-06 14:09:30', '2023-02-10 15:54:33', NULL),
(9, 'admin_logo', '77', '2023-02-06 14:09:30', '2023-02-20 04:07:04', NULL),
(10, 'hero_sliders', '[{\"id\":624344,\"title\":\"Choose The Best Resort For Weekend\",\"link\":\"https:\\/\\/www.youtube.com\\/watch?v=mZ77D66ZYtw\",\"image\":\"52\"},{\"id\":638147,\"title\":\"We Are Waiting To Make You Feel Special\",\"link\":\"https:\\/\\/www.youtube.com\\/watch?v=mZ77D66ZYtw\",\"image\":\"53\"}]', '2023-02-06 14:58:28', '2023-02-17 23:18:23', NULL),
(11, 'header_logo_dark', '77', '2023-02-06 18:33:57', '2023-02-20 04:05:02', NULL),
(12, 'top_features', '[{\"id\":618432,\"title\":\"Free Wifi\",\"image\":\"3\"},{\"id\":831179,\"title\":\"Highly Secured\",\"image\":\"1\"},{\"id\":379255,\"title\":\"Smart Tv\",\"image\":\"2\"},{\"id\":687962,\"title\":\"Air Conditioner\",\"image\":\"4\"}]', '2023-02-07 16:53:15', '2023-02-15 04:12:33', NULL),
(13, 'testimonials', '[{\"id\":149157,\"name\":\"Stella Duncombe\",\"image\":\"54\",\"rating\":\"5\",\"remark\":\"We had a wonderful stay at Yesort. The environment and the atmosphere helped us to relax. We had a very good stay.\"},{\"id\":304021,\"name\":\"Mr. Deol Abhay\",\"image\":\"55\",\"rating\":\"5\",\"remark\":\"Had a very relaxed stay. Great service amazing Spa. Lovely building, calming greenery, serene lake. What more could one ask for?\"}]', '2023-02-09 14:29:13', '2023-02-17 23:29:29', NULL),
(14, 'partners', '[{\"id\":880517,\"image\":\"49\"},{\"id\":907768,\"image\":\"48\"},{\"id\":234914,\"image\":\"47\"},{\"id\":273813,\"image\":\"46\"},{\"id\":112032,\"image\":\"45\"},{\"id\":478333,\"image\":\"50\"}]', '2023-02-10 11:42:20', '2023-02-17 22:50:58', NULL),
(15, 'footer_about', 'Yesort is a Professional resort & hotel booking Platform. Here we will provide you only interesting content, which you will like very much.', '2023-02-10 13:05:25', '2023-02-10 13:05:25', NULL),
(16, 'contact_address', 'New Elephant Road, Dhaka-1205', '2023-02-10 13:05:25', '2023-02-10 13:07:46', NULL),
(17, 'contact_phone', '+212345678', '2023-02-10 13:05:25', '2023-02-10 13:07:46', NULL),
(18, 'contact_email', 'yesort@example.com', '2023-02-10 13:05:25', '2023-02-10 13:07:46', NULL),
(19, 'frontend_copyright_text', '© Copyright Yesort. All Rights Reserved.', '2023-02-10 13:05:25', '2023-02-10 13:20:23', NULL),
(20, 'customer_login_with', 'email', '2023-02-12 18:43:30', '2023-02-12 18:43:38', NULL),
(21, 'customer_verification_with', 'disabled', '2023-02-12 18:43:30', '2023-02-12 18:43:38', NULL),
(22, 'system_default_currency', '1', '2023-02-18 01:31:58', '2023-02-18 01:31:58', NULL),
(23, 'check_in_time', '10:10 AM', '2023-02-18 01:35:38', '2023-02-18 01:35:38', NULL),
(24, 'check_out_time', '10:10 AM', '2023-02-18 01:35:38', '2023-02-18 01:35:38', NULL),
(25, 'booking_code_prefix', 'Yesort', '2023-02-18 01:35:42', '2023-02-18 01:35:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test@publisher.com', '2023-02-15 07:16:05', '2023-02-15 07:16:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_key` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 'en', 'verification_has_been_successful', 'Verification has been successful\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(2, 'en', 'login', 'Login\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(3, 'en', 'profile', 'Profile\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(4, 'en', 'home', 'Home\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(5, 'en', 'about', 'About\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(6, 'en', 'my_profile', 'My profile\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(7, 'en', 'update_profile', 'Update profile\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(8, 'en', 'my_bookings', 'My bookings\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(9, 'en', 'bookings', 'Bookings\r\n', '2023-02-13 18:14:16', '2023-02-13 18:14:16'),
(10, 'en', 'wishlist', 'Wishlist\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(11, 'en', 'enter_name', 'Enter name\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(12, 'en', 'enter_email', 'Enter email\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(13, 'en', 'name', 'Name\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(14, 'en', 'email', 'Email\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(15, 'en', 'phone', 'Phone\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(16, 'en', 'address', 'Address\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(17, 'en', 'your_address', 'Your Address\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(18, 'en', 'your_name', 'Your Name\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(19, 'en', 'your_email', 'Your Email\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(20, 'en', 'your_phone', 'Your Phone\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(21, 'en', 'enter_phone_no', 'Enter phone no\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(22, 'en', 'update', 'Update\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(23, 'en', 'update_password', 'Update Password\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(24, 'en', 'your_password', 'Your Password\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(25, 'en', 'password_confirmation', 'Password Confirmation\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(26, 'en', 'avatar', 'Avatar\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(27, 'en', 'update_avatar', 'Update Avatar\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(28, 'en', 'discover_more', 'Discover More\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(29, 'en', 'rooms', 'Rooms\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(30, 'en', 'beds', 'Beds\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(31, 'en', 'book_now', 'Book Now\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(32, 'en', 'check_in', 'Check In\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(33, 'en', 'adults', 'Adults\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(34, 'en', 'search', 'Search\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(35, 'en', 'children', 'Children\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(36, 'en', 'night', 'Night\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(37, 'en', 'load_more', 'Load More\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(38, 'en', 'room_description', 'Room Description\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(39, 'en', 'check_availability', 'Check Availability\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(40, 'en', 'check_out', 'Check Out\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(41, 'en', 'out', 'Out\r\n', '2023-02-13 18:14:17', '2023-02-13 18:14:17'),
(42, 'en', 'other_cottages', 'Other Cottages\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(43, 'en', 'this_cottage_is_unavailable_in_selected_dates', 'This cottage is unavailable in selected dates\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(44, 'en', 'this_cottage_is_available_for_booking', 'This cottage is available for booking\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(45, 'en', 'additional_info', 'Additional Info\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(46, 'en', 'booking_summary', 'Booking Summary\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(47, 'en', 'order_info', 'Order Info\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(48, 'en', 'order_pay_summary', 'Order Pay Summary\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(49, 'en', 'stay', 'Stay\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(50, 'en', 'nights', 'Nights\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(51, 'en', 'back', 'Back\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(52, 'en', 'your_details', 'Your Details\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(53, 'en', 'thanks_for_your_booking_we_have_successfully_listed_it_and_will_contact_you_soon', 'Thanks for your booking. We have successfully listed it and will contact you soon.\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(54, 'en', 'cottage_details', 'Cottage Details\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(55, 'en', 'our_other_cottages', 'Our Other Cottages\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(56, 'en', 'best_cottages', 'Best Cottages\r\n', '2023-02-13 18:14:18', '2023-02-20 06:23:20'),
(57, 'en', 'our_best_cottages', 'Our Best Cottages\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(58, 'en', 'cottages', 'Cottages\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(59, 'en', 'we_have_some_wonderful_cottages_ready_for_you_here_are_plenty_of_options_when_it_comes_to_cottages_to_rent_for_a_weekend_break_or_a_healthy_vacation', 'We have some wonderful cottages ready for you. Here are plenty of options when it comes to cottages to rent for a weekend break or a healthy vacation.\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(60, 'en', 'please_login_to_continue', 'Please login to continue\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(61, 'en', 'welcome_to_customer_dashboard', 'Welcome to Customer Dashboard\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(62, 'en', 'recent_bookings', 'Recent Bookings\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(63, 'en', 'log_out', 'Log out\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(64, 'en', 'updated_profile', 'Updated Profile\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(65, 'en', 'my_wishlist', 'My Wishlist\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(66, 'en', 'dashboard', 'Dashboard\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(67, 'en', 'booking_date', 'Booking Date\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(68, 'en', 'staying_nights', 'Staying Nights\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(69, 'en', 'total_cost', 'Total Cost\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(70, 'en', 'status', 'Status\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(71, 'en', 'sl', 'S/L\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(72, 'en', 'action', 'Action\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(73, 'en', 'booking_code', 'Booking Code\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(74, 'en', 'learn_more', 'Learn More\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(75, 'en', 'best_services', 'Best Services\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(76, 'en', 'service_details', 'Service Details\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(77, 'en', 'services', 'Services\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(78, 'en', 'forgot_password', 'Forgot Password\r\n', '2023-02-13 18:14:18', '2023-02-13 18:14:18'),
(79, 'en', 'reset_your_account', 'Reset your account\r\n', '2023-02-13 18:14:19', '2023-02-20 06:23:20'),
(80, 'en', 'send_reset_code', 'Send Reset Code\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(81, 'en', 'email_address', 'Email Address\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(82, 'en', 'back_to_login_', 'Back to login \r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(83, 'en', 'registration', 'Registration\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(84, 'en', 'create_your_account', 'Create your account\r\n', '2023-02-13 18:14:19', '2023-02-20 06:23:20'),
(85, 'en', 'full_name', 'Full Name\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(86, 'en', 'password', 'Password\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(87, 'en', 'remember_me', 'Remember Me\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(88, 'en', 'dont_have_an_account', 'Don\'t have an account?\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(89, 'en', 'register', 'Register\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(90, 'en', 'confirm_password', 'Confirm Password\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(91, 'en', 'i_agree_with_the_terms__services', 'I agree with the Terms & Services.\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(92, 'en', 'already_have_an_account', 'Already have an account?\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(93, 'en', 'set_new_password', 'Set New Password\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(94, 'en', 'set_new_password_for_your_account', 'Set New Password for your account\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(95, 'en', 'verification_code', 'Verification Code\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(96, 'en', 'verification', 'Verification\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(97, 'en', 'verify_your_account', 'verify your account\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(98, 'en', 'did_not_get_a_code', 'Did not get a code?\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(99, 'en', 'resend', 'Resend\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(100, 'en', 'verify', 'Verify\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(101, 'en', 'events', 'Events\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(102, 'en', 'event_details', 'Event Details\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(103, 'en', 'event_information', 'Event Information\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(104, 'en', 'event_date', 'Event Date\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(105, 'en', 'event_time', 'Event Time\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(106, 'en', 'event_location', 'Event Location\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(107, 'en', 'event_cost', 'Event Cost\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(108, 'en', 'read_more', 'Read More\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(109, 'en', 'blogs', 'Blogs\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(110, 'en', 'gallery', 'Gallery\r\n', '2023-02-13 18:14:19', '2023-02-13 18:14:19'),
(111, 'en', 'blog_details', 'Blog Details\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(112, 'en', 'category_list', 'Category List\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(113, 'en', 'recent_post', 'Recent Post\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(114, 'en', 'login_with_your_account', 'Login with your account\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(115, 'en', 'features', 'Features\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(116, 'en', 'our_top_features', 'Our Top Features\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(117, 'en', 'all_cottages', 'All Cottages\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(118, 'en', 'all_services', 'All Services\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(119, 'en', 'our_best_services', 'Our Best Services\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(120, 'en', 'see_more', 'See More\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(121, 'en', 'testimonials', 'Testimonials\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(122, 'en', 'what_client_says', 'What Client Say\'s\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(123, 'en', 'browse_our_gallery', 'Browse Our Gallery\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(124, 'en', 'all_blogs', 'All Blogs\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(125, 'en', 'latest_news__blogs', 'Latest News & Blogs\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(126, 'en', 'our_blogs', 'Our Blogs\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(127, 'en', 'partners', 'Partners\r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(128, 'en', 'our_awesome_', 'Our Awesome \r\n', '2023-02-13 18:14:20', '2023-02-13 18:14:20'),
(129, 'en', 'quick_links', 'Quick Links\r\n', '2023-02-13 18:14:21', '2023-02-13 18:14:21'),
(130, 'en', 'contact_us', 'Contact Us\r\n', '2023-02-13 18:14:21', '2023-02-13 18:14:21'),
(131, 'en', 'add_new_files', 'Add new files', '2023-02-13 18:15:42', '2023-02-13 18:15:42'),
(132, 'en', 'media_files', 'Media files', '2023-02-13 18:15:42', '2023-02-13 18:15:42'),
(133, 'en', 'search_by_name', 'Search by name', '2023-02-13 18:15:42', '2023-02-13 18:15:42'),
(134, 'en', 'are_you_sure', 'Are you sure?', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(135, 'en', 'all_data_related_to_this_may_get_deleted', 'All data related to this may get deleted.', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(136, 'en', 'still_want_to_delete', 'Still want to delete!', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(137, 'en', 'yes_delete', 'Yes, Delete', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(138, 'en', 'file_info', 'File Info', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(139, 'en', 'nothing_selected', 'Nothing selected', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(140, 'en', 'please_choose_options', 'Please choose options', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(141, 'en', 'no_data_found', 'No data found', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(142, 'en', 'choose_file', 'Choose file', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(143, 'en', 'browse', 'Browse', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(144, 'en', 'upload_complete', 'Upload complete', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(145, 'en', 'processing', 'Processing', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(146, 'en', 'complete', 'Complete', '2023-02-13 18:15:43', '2023-02-13 18:15:43'),
(147, 'en', 'file', 'File', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(148, 'en', 'files', 'Files', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(149, 'en', 'upload_paused', 'Upload paused', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(150, 'en', 'uploading', 'Uploading', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(151, 'en', 'adding_more_files', 'Adding more files', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(152, 'en', 'drop_files_here', 'Drop files here', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(153, 'en', 'resume_upload', 'Resume upload', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(154, 'en', 'pause_upload', 'Pause upload', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(155, 'en', 'file_selected', 'File selected', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(156, 'en', 'files_selected', 'Files selected', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(157, 'en', 'add_more_files', 'Add more files', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(158, 'en', 'retry_upload', 'Retry upload', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(159, 'en', 'cancel_upload', 'Cancel upload', '2023-02-13 18:15:44', '2023-02-13 18:15:44'),
(160, 'en', 'add_new_cottage', 'Add New Cottage', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(161, 'en', 'new', 'new', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(162, 'en', 'add_new_service', 'Add New Service', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(163, 'en', 'add_new_event', 'Add New Event', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(164, 'en', 'all_events', 'All Events', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(165, 'en', 'manage_staffs', 'Manage Staffs', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(166, 'en', 'all_staffs', 'All Staffs', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(167, 'en', 'roles', 'Roles', '2023-02-13 18:15:45', '2023-02-13 18:15:45'),
(168, 'en', 'manage_guests', 'Manage Guests', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(169, 'en', 'promotions', 'Promotions', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(170, 'en', 'suscribers', 'Suscribers', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(171, 'en', 'send_emails', 'Send Emails', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(172, 'en', 'blog_system', 'Blog System', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(173, 'en', 'add_new_blog', 'Add New Blog', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(174, 'en', 'blog_categories', 'Blog Categories', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(175, 'en', 'media_gallery', 'Media Gallery', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(176, 'en', 'manage_website', 'Manage Website', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(177, 'en', 'header', 'Header', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(178, 'en', 'homepage', 'Homepage', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(179, 'en', 'pages', 'Pages', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(180, 'en', 'footer', 'Footer', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(181, 'en', 'seo', 'SEO', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(182, 'en', 'manage_system', 'Manage System', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(183, 'en', 'general_settings', 'General Settings', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(184, 'en', 'languages', 'Languages', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(185, 'en', 'currency', 'Currency', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(186, 'en', 'smtp_settings', 'SMTP Settings', '2023-02-13 18:15:46', '2023-02-13 18:15:46'),
(187, 'en', 'search_guest_by_name', 'Search guest by name..', '2023-02-13 18:15:47', '2023-02-13 18:15:47'),
(188, 'en', 'logout', 'Logout', '2023-02-13 18:15:47', '2023-02-13 18:15:47'),
(189, 'en', 'header_setting', 'Header Setting', '2023-02-13 18:23:32', '2023-02-13 18:23:32'),
(190, 'en', 'helpline_number', 'Helpline number', '2023-02-13 18:23:32', '2023-02-13 18:23:32'),
(191, 'en', 'facebook_link', 'Facebook Link', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(192, 'en', 'twitter_link', 'Twitter Link', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(193, 'en', 'instagram_link', 'Instagram Link', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(194, 'en', 'linkedin_link', 'LinkedIn Link', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(195, 'en', 'header_logo', 'Header Logo', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(196, 'en', 'header_logo_dark', 'Header Logo Dark', '2023-02-13 18:23:33', '2023-02-13 18:23:33'),
(197, 'en', 'guests', 'Guests', '2023-02-13 18:33:15', '2023-02-13 18:33:15'),
(198, 'en', 'events__meetings', 'Events & Meetings', '2023-02-13 18:33:16', '2023-02-13 18:33:16'),
(199, 'en', 'smtp_configuration', 'SMTP Configuration', '2023-02-13 18:33:16', '2023-02-13 18:33:16'),
(200, 'en', 'language_settings', 'Language Settings', '2023-02-13 18:33:16', '2023-02-13 18:33:16'),
(201, 'en', 'currency_configuration', 'Currency Configuration', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(202, 'en', 'cost', 'Cost', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(203, 'en', 'total_booking', 'Total Booking', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(204, 'en', 'options', 'Options', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(205, 'en', 'rating', 'Rating', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(206, 'en', 'view', 'View', '2023-02-13 18:33:17', '2023-02-13 18:33:17'),
(207, 'en', 'new_password', 'New Password', '2023-02-13 18:33:50', '2023-02-13 18:33:50'),
(208, 'en', 'save', 'Save', '2023-02-13 18:33:50', '2023-02-13 18:33:50'),
(209, 'en', 'your_profile_has_been_updated_successfully', 'Your Profile has been updated successfully!', '2023-02-13 18:34:02', '2023-02-13 18:34:02'),
(210, 'en', 'login__registration_configuration', 'Login & Registration Configuration', '2023-02-14 15:58:45', '2023-02-14 15:58:45'),
(211, 'en', 'loginregistration_with', 'Login/Registration with', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(212, 'en', 'verify_registration_with', 'Verify Registration with', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(213, 'en', 'disabled', 'Disabled', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(214, 'en', 'system_name', 'System Name', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(215, 'en', 'admin_panel_logo', 'Admin Panel Logo', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(216, 'en', 'choose_files', 'Choose Files', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(217, 'en', 'system_timezone', 'System Timezone', '2023-02-14 15:58:52', '2023-02-14 15:58:52'),
(218, 'en', 'check_in__check_out_time', 'Check In - Check Out Time', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(219, 'en', 'check_in_time', 'Check in time', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(220, 'en', 'check_out_time', 'Check out time', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(221, 'en', 'booking_code_prefix', 'Booking Code Prefix', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(222, 'en', 'features_activation', 'Features Activation', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(223, 'en', 'forcefully_https_redirection', 'Forcefully HTTPS redirection', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(224, 'en', 'settings_updated_successfully', 'Settings updated successfully', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(225, 'en', 'something_went_wrong', 'Something went wrong', '2023-02-14 15:58:53', '2023-02-14 15:58:53'),
(226, 'en', 'upload_or_choose_files', 'Upload or choose files', '2023-02-14 16:00:08', '2023-02-14 16:00:08'),
(227, 'en', '0_file_selected', '0 File selected', '2023-02-14 16:00:09', '2023-02-14 16:00:09'),
(228, 'en', 'uploaded_files', 'Uploaded Files', '2023-02-14 16:00:09', '2023-02-14 16:00:09'),
(229, 'en', 'no_files_found', 'No files found', '2023-02-14 16:00:09', '2023-02-14 16:00:09'),
(230, 'en', 'select', 'Select', '2023-02-14 16:00:09', '2023-02-14 16:00:09'),
(231, 'en', 'best', 'Best', '2023-02-14 16:13:11', '2023-02-14 16:13:11'),
(232, 'en', 'published', 'Published', '2023-02-14 16:13:12', '2023-02-14 16:13:12'),
(233, 'en', 'status_updated_successfully', 'Status updated successfully', '2023-02-14 16:13:13', '2023-02-14 16:13:13'),
(234, 'en', 'all_bookings', 'All Bookings', '2023-02-14 16:13:24', '2023-02-14 16:13:24'),
(235, 'en', 'pending', 'Pending', '2023-02-14 16:13:25', '2023-02-14 16:13:25'),
(236, 'en', 'confirmed', 'Confirmed', '2023-02-14 16:13:25', '2023-02-14 16:13:25'),
(237, 'en', 'cancelled', 'Cancelled', '2023-02-14 16:13:25', '2023-02-14 16:13:25'),
(238, 'en', 'cottage', 'Cottage', '2023-02-14 16:13:25', '2023-02-14 16:13:25'),
(239, 'en', 'user', 'User', '2023-02-14 16:13:25', '2023-02-14 16:13:25'),
(240, 'en', 'login_to_your_account', 'Login to your account.', '2023-02-15 03:54:42', '2023-02-15 03:54:42'),
(241, 'en', 'sorry_for_the_inconvenience_but_were_working_on_it', 'Sorry for the inconvenience, but we\'re working on it.', '2023-02-15 03:54:42', '2023-02-15 03:54:42'),
(242, 'en', 'error_code', 'Error code', '2023-02-15 03:54:43', '2023-02-15 03:54:43'),
(243, 'en', 'cottage_name', 'Cottage Name', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(244, 'en', 'price', 'Price', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(245, 'en', 'timeline', 'Timeline', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(246, 'en', 'number_of_rooms', 'Number of Rooms', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(247, 'en', 'number_of_beds', 'Number of Beds', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(248, 'en', 'size', 'Size', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(249, 'en', 'eg_250_square_feet', 'e.g. 250 Square Feet', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(250, 'en', 'unpublished', 'Unpublished', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(251, 'en', 'youtube_video_link', 'Youtube Video Link', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(252, 'en', 'httpsyoutubecomabcde', 'https:///youtube.com/abcde', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(253, 'en', 'thumbnail_image', 'Thumbnail Image', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(254, 'en', 'gallery_images', 'Gallery Images', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(255, 'en', 'description', 'Description', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(256, 'en', 'meta_title', 'Meta Title', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(257, 'en', 'meta_image', 'Meta Image', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(258, 'en', 'save_cottage', 'Save Cottage', '2023-02-15 04:00:09', '2023-02-15 04:00:09'),
(259, 'en', 'general_information', 'General Information', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(260, 'en', 'service_name', 'Service Name', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(261, 'en', 'short_description', 'Short Description', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(262, 'en', 'service_images', 'Service Images', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(263, 'en', 'service_description', 'Service Description', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(264, 'en', 'seo_meta_tags', 'SEO Meta Tags', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(265, 'en', 'meta_description', 'Meta Description', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(266, 'en', 'save_service', 'Save Service', '2023-02-15 04:00:22', '2023-02-15 04:00:22'),
(267, 'en', 'image', 'Image', '2023-02-15 04:00:30', '2023-02-15 04:00:30'),
(268, 'en', 'event_title', 'Event Title', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(269, 'en', 'select_dates', 'Select Dates', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(270, 'en', '10am__6pm', '10AM - 6PM', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(271, 'en', 'fee', 'Fee', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(272, 'en', 'event_images', 'Event Images', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(273, 'en', 'event_description', 'Event Description', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(274, 'en', 'save_event', 'Save Event', '2023-02-15 04:00:33', '2023-02-15 04:00:33'),
(275, 'en', 'search_by_title', 'Search by title', '2023-02-15 04:00:36', '2023-02-15 04:00:36'),
(276, 'en', 'title', 'Title', '2023-02-15 04:00:36', '2023-02-15 04:00:36'),
(277, 'en', 'start_date', 'Start Date', '2023-02-15 04:00:36', '2023-02-15 04:00:36'),
(278, 'en', 'end_date', 'End Date', '2023-02-15 04:00:36', '2023-02-15 04:00:36'),
(279, 'en', 'hero_section', 'Hero Section', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(280, 'en', 'top_features', 'Top Features', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(281, 'en', 'add_slider', 'Add Slider', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(282, 'en', 'ttile', 'Ttile', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(283, 'en', 'choose_the_best_resort_for_weekend', 'Choose the best resort for weekend', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(284, 'en', 'slider_image', 'Slider Image', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(285, 'en', 'hero_sliders', 'Hero Sliders', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(286, 'en', 'slider', 'Slider', '2023-02-15 04:00:49', '2023-02-15 04:00:49'),
(287, 'en', 'add_top_feature', 'Add Top Feature', '2023-02-15 04:00:52', '2023-02-15 04:00:52'),
(288, 'en', 'free_wifi', 'Free Wifi', '2023-02-15 04:00:52', '2023-02-15 04:00:52'),
(289, 'en', 'feature_image', 'Feature Image', '2023-02-15 04:00:52', '2023-02-15 04:00:52'),
(290, 'en', 'add_partner', 'Add Partner', '2023-02-15 04:00:55', '2023-02-15 04:00:55'),
(291, 'en', 'our_partners', 'Our Partners', '2023-02-15 04:00:55', '2023-02-15 04:00:55'),
(292, 'en', 'add_user_feedback', 'Add User Feedback', '2023-02-15 04:00:56', '2023-02-15 04:00:56'),
(293, 'en', 'type_user_name', 'Type user name', '2023-02-15 04:00:56', '2023-02-15 04:00:56'),
(294, 'en', 'remark', 'Remark', '2023-02-15 04:00:56', '2023-02-15 04:00:56'),
(295, 'en', 'type_remark', 'Type remark', '2023-02-15 04:00:56', '2023-02-15 04:00:56'),
(296, 'en', 'add_gallery_image', 'Add Gallery Image', '2023-02-15 04:00:58', '2023-02-15 04:00:58'),
(297, 'en', 'order', 'Order', '2023-02-15 04:00:58', '2023-02-15 04:00:58'),
(298, 'en', 'lower_orders_will_be_shown_first', 'Lower orders will be shown first', '2023-02-15 04:00:58', '2023-02-15 04:00:58'),
(299, 'en', 'galleries', 'Galleries', '2023-02-15 04:00:58', '2023-02-15 04:00:58'),
(300, 'en', 'all_pages', 'All Pages', '2023-02-15 04:01:00', '2023-02-15 04:01:00'),
(301, 'en', 'add_new_page', 'Add New Page', '2023-02-15 04:01:00', '2023-02-15 04:01:00'),
(302, 'en', 'url', 'URL', '2023-02-15 04:01:00', '2023-02-15 04:01:00'),
(303, 'en', 'actions', 'Actions', '2023-02-15 04:01:00', '2023-02-15 04:01:00'),
(304, 'en', 'footer_info', 'Footer Info', '2023-02-15 04:01:02', '2023-02-15 04:01:02'),
(305, 'en', 'about_text', 'About Text', '2023-02-15 04:01:02', '2023-02-15 04:01:02'),
(306, 'en', 'copyright_text', 'Copyright Text', '2023-02-15 04:01:02', '2023-02-15 04:01:02'),
(307, 'en', 'default_language', 'Default Language', '2023-02-15 04:01:29', '2023-02-15 04:01:29'),
(308, 'en', 'language_list', 'Language List', '2023-02-15 04:01:29', '2023-02-15 04:01:29'),
(309, 'en', 'add_language', 'Add Language', '2023-02-15 04:01:29', '2023-02-15 04:01:29'),
(310, 'en', 'code', 'Code', '2023-02-15 04:01:29', '2023-02-15 04:01:29'),
(311, 'en', 'default_language_can_not_be_disbaled', 'Default language can not be disbaled', '2023-02-15 04:01:32', '2023-02-15 04:01:32'),
(312, 'en', 'default_currency', 'Default Currency', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(313, 'en', 'currency_list', 'Currency List', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(314, 'en', 'add_currency', 'Add Currency', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(315, 'en', 'currency_name', 'Currency name', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(316, 'en', 'alignment', 'Alignment', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(317, 'en', '1_usd__', '1 USD = ?', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(318, 'en', 'currency_status_updated_successfully', 'Currency Status updated successfully', '2023-02-15 04:01:37', '2023-02-15 04:01:37'),
(319, 'en', 'add_new_currency', 'Add New Currency', '2023-02-15 04:01:39', '2023-02-15 04:01:39'),
(320, 'en', 'rate', 'Rate', '2023-02-15 04:01:39', '2023-02-15 04:01:39'),
(321, 'en', 'symbol', 'Symbol', '2023-02-15 04:01:39', '2023-02-15 04:01:39'),
(322, 'en', 'cancel', 'Cancel', '2023-02-15 04:01:39', '2023-02-15 04:01:39'),
(323, 'en', 'type', 'Type', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(324, 'en', 'sendmail', 'Sendmail', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(325, 'en', 'smtp', 'SMTP', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(326, 'en', 'mail_host', 'MAIL HOST', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(327, 'en', 'mail_port', 'MAIL PORT', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(328, 'en', 'mail_username', 'MAIL USERNAME', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(329, 'en', 'mail_password', 'MAIL PASSWORD', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(330, 'en', 'mail_encryption', 'MAIL ENCRYPTION', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(331, 'en', 'mail_from_address', 'MAIL FROM ADDRESS', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(332, 'en', 'mail_from_name', 'MAIL FROM NAME', '2023-02-15 04:01:44', '2023-02-15 04:01:44'),
(333, 'en', 'successfully_logged_in', 'Successfully logged in', '2023-02-15 04:07:33', '2023-02-15 04:07:33'),
(334, 'en', 'successfully_logged_out', 'Successfully logged out', '2023-02-15 04:08:00', '2023-02-15 04:08:00'),
(335, 'en', 'feature_added_successfully', 'Feature added successfully', '2023-02-15 04:10:20', '2023-02-15 04:10:20'),
(336, 'en', 'feature_deleted_successfully', 'Feature deleted successfully', '2023-02-15 04:11:27', '2023-02-15 04:11:27'),
(337, 'en', 'slider_image_deleted_successfully', 'Slider image deleted successfully', '2023-02-15 04:55:38', '2023-02-15 04:55:38'),
(338, 'en', 'slider_image_added_successfully', 'Slider image added successfully', '2023-02-15 04:56:40', '2023-02-15 04:56:40'),
(339, 'en', 'our_awesome_partners', 'Our Awesome Partners\r\n', '2023-02-15 06:34:14', '2023-02-15 06:34:14'),
(340, 'en', 'you_have_subscribed_successfully', 'You have subscribed successfully.', '2023-02-15 07:16:05', '2023-02-15 07:16:05'),
(341, 'en', 'link', 'Link', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(342, 'en', 'slug', 'Slug', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(343, 'en', 'use_character_number_hypen_only', 'Use character, number, hypen only', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(344, 'en', 'add_content', 'Add Content', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(345, 'en', 'add_page_contents', 'Add page contents', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(346, 'en', 'save_page', 'Save Page', '2023-02-15 19:11:23', '2023-02-15 19:11:23'),
(347, 'en', 'file_deleted_successfully', 'File deleted successfully', '2023-02-16 04:48:49', '2023-02-16 04:48:49'),
(348, 'en', 'cottage_has_been_inserted_successfully', 'Cottage has been inserted successfully', '2023-02-17 07:04:52', '2023-02-17 07:04:52'),
(349, 'en', 'edit_cottage_for', 'Edit Cottage for', '2023-02-17 20:01:57', '2023-02-17 20:01:57'),
(350, 'en', 'update_cottage', 'Update Cottage', '2023-02-17 20:01:58', '2023-02-17 20:01:58'),
(351, 'en', 'cottage_has_been_updated_successfully', 'Cottage has been updated successfully', '2023-02-17 20:02:17', '2023-02-17 20:02:17'),
(352, 'en', 'all_blog_posts', 'All blog posts', '2023-02-17 20:13:49', '2023-02-17 20:13:49'),
(353, 'en', 'category', 'Category', '2023-02-17 20:13:49', '2023-02-17 20:13:49'),
(354, 'en', 'service_has_been_inserted_successfully', 'Service has been inserted successfully', '2023-02-17 20:49:35', '2023-02-17 20:49:35'),
(355, 'en', 'edit_service_for', 'Edit service for', '2023-02-17 20:53:06', '2023-02-17 20:53:06'),
(356, 'en', 'update_service', 'Update service', '2023-02-17 20:53:06', '2023-02-17 20:53:06'),
(357, 'en', 'service_has_been_updated_successfully', 'Service has been updated successfully', '2023-02-17 20:53:17', '2023-02-17 20:53:17'),
(358, 'en', 'image_added_successfully', 'Image added successfully', '2023-02-17 22:44:34', '2023-02-17 22:44:34'),
(359, 'en', 'update_gallery_image', 'Update Gallery Image', '2023-02-17 22:46:56', '2023-02-17 22:46:56'),
(360, 'en', 'image_updated_successfully', 'Image updated successfully', '2023-02-17 22:46:59', '2023-02-17 22:46:59'),
(361, 'en', 'partner_deleted_successfully', 'Partner deleted successfully', '2023-02-17 22:49:19', '2023-02-17 22:49:19'),
(362, 'en', 'partner_added_successfully', 'Partner added successfully', '2023-02-17 22:50:22', '2023-02-17 22:50:22'),
(363, 'en', 'feedback_added_successfully', 'Feedback added successfully', '2023-02-17 23:25:08', '2023-02-17 23:25:08'),
(364, 'en', 'feedback_deleted_successfully', 'Feedback deleted successfully', '2023-02-17 23:25:14', '2023-02-17 23:25:14'),
(365, 'en', 'add_new_blog_category', 'Add New Blog Category', '2023-02-17 23:30:55', '2023-02-17 23:30:55'),
(366, 'en', 'blog_category_has_been_created_successfully', 'Blog category has been created successfully', '2023-02-17 23:31:58', '2023-02-17 23:31:58'),
(367, 'en', 'delete', 'Delete', '2023-02-17 23:31:58', '2023-02-17 23:31:58'),
(368, 'en', 'blog_information', 'Blog Information', '2023-02-17 23:32:55', '2023-02-17 23:32:55'),
(369, 'en', 'blog_title', 'Blog Title', '2023-02-17 23:32:55', '2023-02-17 23:32:55'),
(370, 'en', 'select_a_category', 'Select a category', '2023-02-17 23:32:55', '2023-02-17 23:32:55'),
(371, 'en', 'blog_images', 'Blog Images', '2023-02-17 23:32:55', '2023-02-17 23:32:55'),
(372, 'en', 'seo_information', 'SEO Information', '2023-02-17 23:32:55', '2023-02-17 23:32:55'),
(373, 'en', 'blog_has_been_created_successfully', 'Blog has been created successfully', '2023-02-17 23:35:58', '2023-02-17 23:35:58'),
(374, 'en', 'edit_blog_for', 'Edit blog for', '2023-02-17 23:40:55', '2023-02-17 23:40:55'),
(375, 'en', 'blog_has_been_updated_successfully', 'Blog has been updated successfully', '2023-02-17 23:41:17', '2023-02-17 23:41:17'),
(376, 'en', 'event_has_been_inserted_successfully', 'Event has been inserted successfully', '2023-02-18 01:16:34', '2023-02-18 01:16:34'),
(377, 'en', 'edit_event_for', 'Edit Event for', '2023-02-18 01:17:56', '2023-02-18 01:17:56'),
(378, 'en', 'update_event', 'Update event', '2023-02-18 01:17:56', '2023-02-18 01:17:56'),
(379, 'en', 'edit_page_for', 'Edit Page for', '2023-02-18 01:22:46', '2023-02-18 01:22:46'),
(380, 'en', 'update_content', 'Update Content', '2023-02-18 01:22:46', '2023-02-18 01:22:46'),
(381, 'en', 'update_page_contents', 'Update page contents', '2023-02-18 01:22:46', '2023-02-18 01:22:46'),
(382, 'en', 'update_page', 'Update Page', '2023-02-18 01:22:46', '2023-02-18 01:22:46'),
(383, 'en', 'update_currency', 'Update Currency', '2023-02-18 01:33:21', '2023-02-18 01:33:21'),
(384, 'en', 'exchange_rate', 'Exchange Rate', '2023-02-18 01:33:21', '2023-02-18 01:33:21'),
(385, 'en', 'currency_updated_successfully', 'Currency updated successfully', '2023-02-18 01:33:28', '2023-02-18 01:33:28'),
(386, 'en', 'all_subscribers', 'All Subscribers', '2023-02-18 01:38:25', '2023-02-18 01:38:25'),
(387, 'en', 'search_by_email', 'Search by email', '2023-02-18 01:38:25', '2023-02-18 01:38:25'),
(388, 'en', 'subscribed_at', 'Subscribed At', '2023-02-18 01:38:25', '2023-02-18 01:38:25'),
(389, 'en', 'subject', 'Subject', '2023-02-18 01:38:31', '2023-02-18 01:38:31'),
(390, 'en', 'email_subject_here', 'Email Subject here', '2023-02-18 01:38:32', '2023-02-18 01:38:32'),
(391, 'en', 'select_subscribers', 'Select subscribers', '2023-02-18 01:38:32', '2023-02-18 01:38:32'),
(392, 'en', 'content', 'Content', '2023-02-18 01:38:32', '2023-02-18 01:38:32'),
(393, 'en', 'send', 'Send', '2023-02-18 01:38:32', '2023-02-18 01:38:32'),
(394, 'en', 'staff_list', 'Staff List', '2023-02-18 01:38:35', '2023-02-18 01:38:35'),
(395, 'en', 'add_new_staff', 'Add New Staff', '2023-02-18 01:38:35', '2023-02-18 01:38:35'),
(396, 'en', 'role', 'Role', '2023-02-18 01:38:35', '2023-02-18 01:38:35'),
(397, 'en', 'role_list', 'Role List', '2023-02-18 01:38:39', '2023-02-18 01:38:39'),
(398, 'en', 'add_new_role', 'Add New Role', '2023-02-18 01:38:39', '2023-02-18 01:38:39'),
(399, 'en', 'profile_information_updated_successfully', 'Profile information updated successfully', '2023-02-18 01:41:23', '2023-02-18 01:41:23'),
(400, 'en', 'profile_avatar_updated_successfully', 'Profile avatar updated successfully', '2023-02-18 01:41:43', '2023-02-18 01:41:43'),
(401, 'en', 'your_booking_has_been_listed_please_wait_for_confirmation', 'Your booking has been listed, please wait for confirmation', '2023-02-18 01:42:57', '2023-02-18 01:42:57'),
(402, 'en', 'booking_details', 'Booking Details', '2023-02-18 01:45:31', '2023-02-18 01:45:31'),
(403, 'en', 'guest_details', 'Guest Details', '2023-02-18 01:45:31', '2023-02-18 01:45:31'),
(404, 'en', 'checkout', 'Checkout', '2023-02-18 01:45:31', '2023-02-18 01:45:31'),
(405, 'en', 'total_bill', 'Total Bill', '2023-02-18 01:45:31', '2023-02-18 01:45:31'),
(406, 'en', 'update_booking', 'Update Booking', '2023-02-18 01:45:31', '2023-02-18 01:45:31'),
(407, 'en', 'booking_update', 'Booking Update', '2023-02-18 01:45:35', '2023-02-18 01:45:35'),
(408, 'en', 'your_booking_status_has_been_updated_to__confirmed', 'Your booking status has been updated to - confirmed', '2023-02-18 01:45:36', '2023-02-18 01:45:36'),
(409, 'en', 'booking_update_yesort2', 'Booking Update: Yesort#2', '2023-02-18 01:45:36', '2023-02-18 01:45:36'),
(410, 'en', 'booking_has_been_updated_successfully', 'Booking has been updated successfully', '2023-02-18 01:45:36', '2023-02-18 01:45:36'),
(411, 'en', 'your_booking_status_has_been_updated_to__cancelled', 'Your booking status has been updated to - cancelled', '2023-02-18 01:45:44', '2023-02-18 01:45:44'),
(412, 'en', 'booking_update_yesort4', 'Booking Update: Yesort#4', '2023-02-18 01:45:44', '2023-02-18 01:45:44'),
(413, 'en', 'all_guests', 'All Guests', '2023-02-18 03:08:55', '2023-02-18 03:08:55'),
(414, 'en', 'confirmation', 'Confirmation', '2023-02-18 03:08:56', '2023-02-18 03:08:56'),
(415, 'en', 'continue_to_ban_this_guest', 'Continue to ban this guest?', '2023-02-18 03:08:56', '2023-02-18 03:08:56'),
(416, 'en', 'ban_guest', 'Ban Guest', '2023-02-18 03:08:56', '2023-02-18 03:08:56'),
(417, 'en', 'continue_to_unban_this_guest', 'Continue to unban this guest?', '2023-02-18 03:08:56', '2023-02-18 03:08:56'),
(418, 'en', 'unban_guest', 'Unban Guest', '2023-02-18 03:08:56', '2023-02-18 03:08:56'),
(419, 'en', 'update_translations', 'Update Translations', '2023-02-18 21:21:17', '2023-02-18 21:21:17'),
(420, 'en', 'search_by_key', 'Search by key', '2023-02-18 21:21:17', '2023-02-18 21:21:17'),
(421, 'en', 'language_key', 'Language Key', '2023-02-18 21:21:17', '2023-02-18 21:21:17'),
(422, 'en', 'translations', 'Translations', '2023-02-18 21:21:17', '2023-02-18 21:21:17'),
(423, 'en', 'back_to_login', 'Back to login\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(424, 'en', 'we_have', 'We Have\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(425, 'en', 'find_peace_here', 'Find Peace Here\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(426, 'en', 'appreciations', 'Appreciations\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(427, 'en', 'from_archive', 'From Archive\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(428, 'en', 'recent_posts', 'Recent Posts\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(429, 'en', 'connections', 'Connections\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(430, 'en', 'we_provide', 'We Provide\r\n', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(431, 'en', 'explore_more', 'Explore More', '2023-02-20 06:23:20', '2023-02-20 06:23:20'),
(432, 'en', 'only_customers_can_login_here', 'Only customers can login here', '2023-02-20 06:25:30', '2023-02-20 06:25:30'),
(433, 'en', 'ban_this_guest', 'Ban this guest', '2023-02-20 19:55:48', '2023-02-20 19:55:48'),
(434, 'bn', 'ban_this_guest', 'এই অতিথিকে নিষিদ্ধ করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(435, 'bn', 'only_customers_can_login_here', 'শুধুমাত্র গ্রাহকরা এখানে লগইন করতে পারেন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(436, 'bn', 'back_to_login', 'প্রবেশ করতে পেছান', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(437, 'bn', 'we_have', 'আমাদের আছে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(438, 'bn', 'find_peace_here', 'এখানে শান্তি খুঁজুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(439, 'bn', 'appreciations', 'প্রশংসা', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(440, 'bn', 'from_archive', 'আর্কাইভ থেকে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(441, 'bn', 'recent_posts', 'সাম্প্রতিক পোস্ট', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(442, 'bn', 'connections', 'সংযোগ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(443, 'bn', 'we_provide', 'আমরা প্রদান', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(444, 'bn', 'explore_more', 'আরো অন্বেষণ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(445, 'bn', 'update_translations', 'অনুবাদ আপডেট করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(446, 'bn', 'search_by_key', 'কী দ্বারা অনুসন্ধান করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(447, 'bn', 'language_key', 'ভাষা কী', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(448, 'bn', 'translations', 'অনুবাদ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(449, 'bn', 'confirmation', 'নিশ্চিতকরণ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(450, 'bn', 'continue_to_ban_this_guest', 'এই অতিথিকে নিষিদ্ধ করা চালিয়ে যেতে চান?', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(451, 'bn', 'ban_guest', 'ব্যান গেস্ট', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(452, 'bn', 'continue_to_unban_this_guest', 'এই অতিথিকে নিষিদ্ধ করা চালিয়ে যেতে চান?', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(453, 'bn', 'unban_guest', 'নিষেধাজ্ঞামুক্ত অতিথি', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(454, 'bn', 'all_guests', 'সকল অতিথি', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(455, 'bn', 'your_booking_status_has_been_updated_to__cancelled', 'আপনার বুকিং স্থিতি আপডেট করা হয়েছে - বাতিল করা হয়েছে৷', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(456, 'bn', 'booking_update_yesort4', 'বুকিং আপডেট: Yesort#4', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(457, 'bn', 'your_booking_status_has_been_updated_to__confirmed', 'আপনার বুকিং স্ট্যাটাস আপডেট করা হয়েছে - নিশ্চিত করা হয়েছে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(458, 'bn', 'booking_update_yesort2', 'বুকিং আপডেট: Yesort#2', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(459, 'bn', 'booking_has_been_updated_successfully', 'বুকিং সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(460, 'bn', 'booking_update', 'বুকিং আপডেট', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(461, 'bn', 'booking_details', 'বুকিং বিবরণ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(462, 'bn', 'guest_details', 'অতিথির বিবরণ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(463, 'bn', 'checkout', 'চেকআউট', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(464, 'bn', 'total_bill', 'মোট বিল', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(465, 'bn', 'update_booking', 'বুকিং আপডেট করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(466, 'bn', 'your_booking_has_been_listed_please_wait_for_confirmation', 'আপনার বুকিং তালিকাভুক্ত করা হয়েছে, নিশ্চিতকরণের জন্য অপেক্ষা করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(467, 'bn', 'profile_avatar_updated_successfully', 'প্রোফাইল অবতার সফলভাবে আপডেট করা হয়েছে৷', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(468, 'bn', 'profile_information_updated_successfully', 'প্রোফাইল তথ্য সফলভাবে আপডেট করা হয়েছে৷', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(469, 'bn', 'role_list', 'ভূমিকা তালিকা', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(470, 'bn', 'add_new_role', 'নতুন ভূমিকা যোগ করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(471, 'bn', 'staff_list', 'কর্মীদের তালিকা', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(472, 'bn', 'add_new_staff', 'নতুন স্টাফ যোগ করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(473, 'bn', 'role', 'ভূমিকা', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(474, 'bn', 'email_subject_here', 'ইমেল বিষয় এখানে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(475, 'bn', 'select_subscribers', 'গ্রাহক নির্বাচন করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(476, 'bn', 'content', 'বিষয়বস্তু', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(477, 'bn', 'send', 'পাঠান', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(478, 'bn', 'subject', 'বিষয়', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(479, 'bn', 'all_subscribers', 'সকল সদস্য', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(480, 'bn', 'search_by_email', 'ইমেল দ্বারা অনুসন্ধান করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(481, 'bn', 'subscribed_at', 'সদস্যতা এ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(482, 'bn', 'currency_updated_successfully', 'মুদ্রা সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(483, 'bn', 'update_currency', 'কারেন্সি আপডেট করুন', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(484, 'en', 'translations_updated_for_', 'Translations updated for ', '2023-02-21 06:32:06', '2023-02-21 06:32:06'),
(485, 'bn', 'exchange_rate', 'বিনিময় হার', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(486, 'bn', 'edit_page_for', 'জন্য পৃষ্ঠা সম্পাদনা করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(487, 'bn', 'update_content', 'বিষয়বস্তু আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(488, 'bn', 'update_page_contents', 'পৃষ্ঠা বিষয়বস্তু আপডেট', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(489, 'bn', 'update_page', 'পৃষ্ঠা আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(490, 'bn', 'edit_event_for', 'এর জন্য ইভেন্ট সম্পাদনা করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(491, 'bn', 'update_event', 'ইভেন্ট আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(492, 'bn', 'event_has_been_inserted_successfully', 'ইভেন্ট সফলভাবে সন্নিবেশ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(493, 'bn', 'blog_has_been_updated_successfully', 'ব্লগ সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(494, 'bn', 'edit_blog_for', 'জন্য ব্লগ সম্পাদনা করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(495, 'bn', 'blog_has_been_created_successfully', 'ব্লগ সফলভাবে তৈরি করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(496, 'bn', 'blog_information', 'ব্লগ তথ্য', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(497, 'bn', 'blog_title', 'ব্লগ শিরোনাম', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(498, 'bn', 'select_a_category', 'একটি বিভাগ নির্বাচন করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(499, 'bn', 'blog_images', 'ব্লগ ইমেজ', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(500, 'bn', 'seo_information', 'এসইও তথ্য', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(501, 'bn', 'blog_category_has_been_created_successfully', 'ব্লগ বিভাগ সফলভাবে তৈরি করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(502, 'bn', 'delete', 'মুছে ফেলা', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(503, 'bn', 'add_new_blog_category', 'নতুন ব্লগ বিভাগ যোগ করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(504, 'bn', 'feedback_deleted_successfully', 'প্রতিক্রিয়া সফলভাবে মুছে ফেলা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(505, 'bn', 'feedback_added_successfully', 'প্রতিক্রিয়া সফলভাবে যোগ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(506, 'bn', 'partner_added_successfully', 'অংশীদার সফলভাবে যোগ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(507, 'bn', 'partner_deleted_successfully', 'অংশীদার সফলভাবে মুছে ফেলা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(508, 'bn', 'image_updated_successfully', 'ছবি সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(509, 'bn', 'update_gallery_image', 'গ্যালারি ইমেজ আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(510, 'bn', 'image_added_successfully', 'ছবি সফলভাবে যোগ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(511, 'bn', 'service_has_been_updated_successfully', 'পরিষেবা সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(512, 'bn', 'edit_service_for', 'এর জন্য পরিষেবা সম্পাদনা করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(513, 'bn', 'update_service', 'পরিষেবা আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(514, 'bn', 'service_has_been_inserted_successfully', 'পরিষেবা সফলভাবে সন্নিবেশ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(515, 'bn', 'all_blog_posts', 'সব ব্লগ পোস্ট', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(516, 'bn', 'category', 'শ্রেণী', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(517, 'bn', 'cottage_has_been_updated_successfully', 'কুটির সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(518, 'bn', 'update_cottage', 'কটেজ আপডেট করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(519, 'bn', 'edit_cottage_for', 'জন্য কটেজ সম্পাদনা করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(520, 'bn', 'cottage_has_been_inserted_successfully', 'কুটির সফলভাবে ঢোকানো হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(521, 'bn', 'file_deleted_successfully', 'ফাইল সফলভাবে মুছে ফেলা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(522, 'bn', 'link', 'লিঙ্ক', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(523, 'bn', 'slug', 'স্লাগ', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(524, 'bn', 'use_character_number_hypen_only', 'শুধুমাত্র অক্ষর, সংখ্যা, হাইপেন ব্যবহার করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(525, 'bn', 'add_content', 'বিষয়বস্তু যোগ করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(526, 'bn', 'add_page_contents', 'পৃষ্ঠা বিষয়বস্তু যোগ করুন', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(527, 'bn', 'save_page', 'পাতা সংরক্ষণ', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(528, 'bn', 'you_have_subscribed_successfully', 'আপনি সফলভাবে সদস্যতা নিয়েছেন।', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(529, 'bn', 'our_awesome_partners', 'আমাদের দুর্দান্ত অংশীদার', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(530, 'bn', 'slider_image_added_successfully', 'স্লাইডার ছবি সফলভাবে যোগ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(531, 'bn', 'slider_image_deleted_successfully', 'স্লাইডার ছবি সফলভাবে মুছে ফেলা হয়েছে৷', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(532, 'bn', 'feature_deleted_successfully', 'বৈশিষ্ট্য সফলভাবে মুছে ফেলা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(533, 'bn', 'feature_added_successfully', 'বৈশিষ্ট্য সফলভাবে যোগ করা হয়েছে', '2023-02-21 06:32:18', '2023-02-21 06:32:18'),
(534, 'bn', 'successfully_logged_out', 'সফলভাবে লগ আউট', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(535, 'bn', 'successfully_logged_in', 'সফলভাবে লগ ইন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(536, 'bn', 'type', 'টাইপ', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(537, 'bn', 'sendmail', 'মেইল পাঠাও', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(538, 'bn', 'smtp', 'SMTP', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(539, 'bn', 'mail_host', 'মেল হোস্ট', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(540, 'bn', 'mail_port', 'মেইল পোর্ট', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(541, 'bn', 'mail_username', 'ব্যবহারকারীর নাম মেইল ​​করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(542, 'bn', 'mail_password', 'মেইল পাসওয়ার্ড', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(543, 'bn', 'mail_encryption', 'মেল এনক্রিপশন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(544, 'bn', 'mail_from_address', 'ঠিকানা থেকে মেইল', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(545, 'bn', 'mail_from_name', 'নাম থেকে মেল', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(546, 'bn', 'add_new_currency', 'নতুন মুদ্রা যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(547, 'bn', 'rate', 'হার', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(548, 'bn', 'symbol', 'প্রতীক', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(549, 'bn', 'cancel', 'বাতিল করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(550, 'bn', 'default_currency', 'ডিফল্ট মুদ্রা', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(551, 'bn', 'currency_list', 'মুদ্রা তালিকা', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(552, 'bn', 'add_currency', 'মুদ্রা যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(553, 'bn', 'currency_name', 'মুদ্রার নাম', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(554, 'bn', 'alignment', 'প্রান্তিককরণ', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(555, 'bn', '1_usd__', '1 USD =?', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(556, 'bn', 'currency_status_updated_successfully', 'মুদ্রার স্থিতি সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(557, 'bn', 'default_language_can_not_be_disbaled', 'ডিফল্ট ভাষা নিষ্ক্রিয় করা যাবে না', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(558, 'bn', 'default_language', 'নির্ধারিত ভাষা', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(559, 'bn', 'language_list', 'ভাষার তালিকা', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(560, 'bn', 'add_language', 'ভাষা যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(561, 'bn', 'code', 'কোড', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(562, 'bn', 'footer_info', 'পাদচরণ তথ্য', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(563, 'bn', 'about_text', 'টেক্সট সম্পর্কে', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(564, 'bn', 'copyright_text', 'কপিরাইট টেক্সট', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(565, 'bn', 'all_pages', 'সমস্ত পৃষ্ঠা', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(566, 'bn', 'add_new_page', 'নতুন পৃষ্ঠা যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(567, 'bn', 'url', 'URL', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(568, 'bn', 'actions', 'কর্ম', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(569, 'bn', 'add_gallery_image', 'গ্যালারি ছবি যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(570, 'bn', 'order', 'অর্ডার', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(571, 'bn', 'lower_orders_will_be_shown_first', 'নিম্ন আদেশ প্রথম দেখানো হবে', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(572, 'bn', 'galleries', 'গ্যালারি', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(573, 'bn', 'add_user_feedback', 'ব্যবহারকারীর প্রতিক্রিয়া যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(574, 'bn', 'type_user_name', 'ব্যবহারকারীর নাম টাইপ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(575, 'bn', 'remark', 'মন্তব্য', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(576, 'bn', 'type_remark', 'টাইপ মন্তব্য', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(577, 'bn', 'add_partner', 'অংশীদার যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(578, 'bn', 'our_partners', 'আমাদের অংশীদারদের', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(579, 'bn', 'add_top_feature', 'শীর্ষ বৈশিষ্ট্য যোগ করুন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(580, 'bn', 'free_wifi', 'বিনামূল্যে ওয়াইফাই', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(581, 'bn', 'feature_image', 'ফিচার ইমেজ', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(582, 'bn', 'hero_section', 'হিরো সেকশন', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(583, 'bn', 'top_features', 'শীর্ষ বৈশিষ্ট্য', '2023-02-21 06:32:42', '2023-02-21 06:32:42'),
(584, 'bn', 'add_slider', 'স্লাইডার যোগ করুন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(585, 'bn', 'ttile', 'টালি', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(586, 'bn', 'choose_the_best_resort_for_weekend', 'উইকএন্ডের জন্য সেরা রিসর্ট বেছে নিন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(587, 'bn', 'slider_image', 'স্লাইডার ইমেজ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(588, 'bn', 'hero_sliders', 'হিরো স্লাইডার', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(589, 'bn', 'slider', 'স্লাইডার', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(590, 'bn', 'search_by_title', 'শিরোনাম দ্বারা অনুসন্ধান করুন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(591, 'bn', 'title', 'শিরোনাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(592, 'bn', 'start_date', 'শুরুর তারিখ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(593, 'bn', 'end_date', 'শেষ তারিখ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(594, 'bn', 'event_title', 'ইভেন্ট শিরোনাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(595, 'bn', 'select_dates', 'তারিখ নির্বাচন করুন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(596, 'bn', '10am__6pm', 'সকাল ১০টা থেকে সন্ধ্যা ৬টা', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(597, 'bn', 'fee', 'ফি', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(598, 'bn', 'event_images', 'ইভেন্ট ইমেজ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(599, 'bn', 'event_description', 'ঘটনা বিবরণী', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(600, 'bn', 'save_event', 'ইভেন্ট সংরক্ষণ করুন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(601, 'bn', 'image', 'ছবি', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(602, 'bn', 'general_information', 'সাধারণ জ্ঞাতব্য', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(603, 'bn', 'service_name', 'কাজের নাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(604, 'bn', 'short_description', 'ছোট বিবরণ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(605, 'bn', 'service_images', 'সেবা ইমেজ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(606, 'bn', 'service_description', 'সেবা বর্ণনা', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(607, 'bn', 'seo_meta_tags', 'এসইও মেটা ট্যাগ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(608, 'bn', 'meta_description', 'মেটা বর্ণনা', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(609, 'bn', 'save_service', 'সেভ সার্ভিস', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(610, 'bn', 'meta_title', 'মেটা শিরোনাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(611, 'bn', 'meta_image', 'মেটা ইমেজ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(612, 'bn', 'save_cottage', 'কটেজ সংরক্ষণ করুন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(613, 'bn', 'cottage_name', 'কুটির নাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(614, 'bn', 'price', 'দাম', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(615, 'bn', 'timeline', 'টাইমলাইন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(616, 'bn', 'number_of_rooms', 'আমি আজ খুশি', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(617, 'bn', 'number_of_beds', 'শয্যা সংখ্যা', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(618, 'bn', 'size', 'আকার', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(619, 'bn', 'eg_250_square_feet', 'যেমন 250 বর্গফুট', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(620, 'bn', 'unpublished', 'অপ্রকাশিত', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(621, 'bn', 'youtube_video_link', 'ইউটিউব ভিডিও লিংক', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(622, 'bn', 'httpsyoutubecomabcde', 'https:///youtube.com/abcde', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(623, 'bn', 'thumbnail_image', 'থাম্বনেইল ছবি', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(624, 'bn', 'gallery_images', 'গ্যালারি ইমেজ', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(625, 'bn', 'description', 'বর্ণনা', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(626, 'bn', 'error_code', 'ভুল সংকেত', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(627, 'bn', 'login_to_your_account', 'আপনার অ্যাকাউন্টে লগ ইন করুন.', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(628, 'bn', 'sorry_for_the_inconvenience_but_were_working_on_it', 'অসুবিধার জন্য দুঃখিত, কিন্তু আমরা এটা নিয়ে কাজ করছি।', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(629, 'bn', 'pending', 'বিচারাধীন', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(630, 'bn', 'confirmed', 'নিশ্চিত করা হয়েছে', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(631, 'bn', 'cancelled', 'বাতিল', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(632, 'bn', 'cottage', 'কুটির', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(633, 'bn', 'user', 'ব্যবহারকারী', '2023-02-21 06:33:05', '2023-02-21 06:33:05'),
(634, 'bn', 'all_bookings', 'সব বুকিং', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(635, 'bn', 'status_updated_successfully', 'স্থিতি সফলভাবে আপডেট করা হয়েছে', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(636, 'bn', 'published', 'প্রকাশিত হয়েছে', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(637, 'bn', 'best', 'সেরা', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(638, 'bn', '0_file_selected', '0 ফাইল নির্বাচন করা হয়েছে৷', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(639, 'bn', 'uploaded_files', 'আপলোড করা ফাইল', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(640, 'bn', 'no_files_found', 'কোন ফাইল পাওয়া যায়নি', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(641, 'bn', 'select', 'নির্বাচন করুন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(642, 'bn', 'upload_or_choose_files', 'আপলোড বা ফাইল নির্বাচন করুন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(643, 'bn', 'check_in__check_out_time', 'চেক ইন - চেক আউট সময়', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(644, 'bn', 'check_in_time', 'সময় পরীক্ষা', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(645, 'bn', 'check_out_time', 'উচ্চ স্বরে পড়া', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(646, 'bn', 'booking_code_prefix', 'বুকিং কোড উপসর্গ', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(647, 'bn', 'features_activation', 'বৈশিষ্ট্য সক্রিয়করণ', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(648, 'bn', 'forcefully_https_redirection', 'জোরপূর্বক HTTPS পুনর্নির্দেশ', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(649, 'bn', 'settings_updated_successfully', 'সেটিংস সফলভাবে আপডেট হয়েছে৷', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(650, 'bn', 'something_went_wrong', 'কিছু ভুল হয়েছে', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(651, 'bn', 'loginregistration_with', 'সাথে লগইন/নিবন্ধন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(652, 'bn', 'verify_registration_with', 'দিয়ে নিবন্ধন যাচাই করুন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(653, 'bn', 'disabled', 'অক্ষম', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(654, 'bn', 'system_name', 'সিস্টেমের নাম', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(655, 'bn', 'admin_panel_logo', 'অ্যাডমিন প্যানেল লোগো', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(656, 'bn', 'choose_files', 'ফাইল বেছে নিন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(657, 'bn', 'system_timezone', 'সিস্টেম টাইমজোন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(658, 'bn', 'login__registration_configuration', 'লগইন এবং রেজিস্ট্রেশন কনফিগারেশন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(659, 'bn', 'your_profile_has_been_updated_successfully', 'আপনার প্রোফাইল সফলভাবে আপডেট করা হয়েছে!', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(660, 'bn', 'new_password', 'নতুন পাসওয়ার্ড', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(661, 'bn', 'save', 'সংরক্ষণ', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(662, 'bn', 'currency_configuration', 'মুদ্রা কনফিগারেশন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(663, 'bn', 'cost', 'খরচ', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(664, 'bn', 'total_booking', 'মোট বুকিং', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(665, 'bn', 'options', 'অপশন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(666, 'bn', 'rating', 'রেটিং', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(667, 'bn', 'view', 'দেখুন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(668, 'bn', 'events__meetings', 'ইভেন্ট এবং মিটিং', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(669, 'bn', 'smtp_configuration', 'SMTP কনফিগারেশন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(670, 'bn', 'language_settings', 'ভাষা ব্যাবস্থা', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(671, 'bn', 'guests', 'অতিথিরা', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(672, 'bn', 'facebook_link', 'ফেসবুক লিংক', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(673, 'bn', 'twitter_link', 'টুইটার লিঙ্ক', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(674, 'bn', 'instagram_link', 'ইনস্টাগ্রাম লিঙ্ক', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(675, 'bn', 'linkedin_link', 'লিঙ্কডইন লিঙ্ক', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(676, 'bn', 'header_logo', 'হেডার লোগো', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(677, 'bn', 'header_logo_dark', 'হেডার লোগো গাঢ়', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(678, 'bn', 'header_setting', 'হেডার সেটিং', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(679, 'bn', 'helpline_number', 'হেল্পলাইন নম্বর', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(680, 'bn', 'search_guest_by_name', 'নাম দ্বারা অতিথি খুঁজুন..', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(681, 'bn', 'logout', 'প্রস্থান', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(682, 'bn', 'manage_guests', 'অতিথিদের পরিচালনা করুন', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(683, 'bn', 'promotions', 'প্রচার', '2023-02-21 06:33:24', '2023-02-21 06:33:24'),
(684, 'bn', 'suscribers', 'সাবস্ক্রাইবার', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(685, 'bn', 'send_emails', 'ইমেইল পাঠান', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(686, 'bn', 'blog_system', 'ব্লগ সিস্টেম', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(687, 'bn', 'add_new_blog', 'নতুন ব্লগ যোগ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(688, 'bn', 'blog_categories', 'ব্লগ বিভাগ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(689, 'bn', 'media_gallery', 'মিডিয়া গ্যালারি', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(690, 'bn', 'manage_website', 'ওয়েবসাইট পরিচালনা করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(691, 'bn', 'header', 'হেডার', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(692, 'bn', 'homepage', 'হোমপেজ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(693, 'bn', 'pages', 'পাতা', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(694, 'bn', 'footer', 'ফুটার', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(695, 'bn', 'seo', 'এসইও', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(696, 'bn', 'manage_system', 'সিস্টেম পরিচালনা করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(697, 'bn', 'general_settings', 'সাধারণ সেটিংস', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(698, 'bn', 'languages', 'ভাষা', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(699, 'bn', 'currency', 'মুদ্রা', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(700, 'bn', 'smtp_settings', 'SMTP সেটিংস', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(701, 'bn', 'add_new_cottage', 'নতুন কটেজ যোগ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(702, 'bn', 'new', 'নতুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(703, 'bn', 'add_new_service', 'নতুন পরিষেবা যোগ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(704, 'bn', 'add_new_event', 'নতুন ইভেন্ট যোগ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(705, 'bn', 'all_events', 'সমস্ত ইভেন্ট', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(706, 'bn', 'manage_staffs', 'স্টাফ পরিচালনা করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(707, 'bn', 'all_staffs', 'সকল স্টাফ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(708, 'bn', 'roles', 'ভূমিকা', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(709, 'bn', 'file', 'ফাইল', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(710, 'bn', 'files', 'নথি পত্র', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(711, 'bn', 'upload_paused', 'আপলোড বিরাম দেওয়া হয়েছে৷', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(712, 'bn', 'uploading', 'আপলোড হচ্ছে', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(713, 'bn', 'adding_more_files', 'আরো ফাইল যোগ করা হচ্ছে', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(714, 'bn', 'drop_files_here', 'এখানে ফাইল ড্রপ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(715, 'bn', 'resume_upload', 'আপলোড পুনরায় শুরু করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(716, 'bn', 'pause_upload', 'আপলোড বিরতি', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(717, 'bn', 'file_selected', 'ফাইল নির্বাচন করা হয়েছে', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(718, 'bn', 'files_selected', 'ফাইল নির্বাচন করা হয়েছে', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(719, 'bn', 'add_more_files', 'আরো ফাইল যোগ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(720, 'bn', 'retry_upload', 'আপলোড পুনরায় চেষ্টা করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(721, 'bn', 'cancel_upload', 'আপলোড বাতিল করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(722, 'bn', 'are_you_sure', 'তুমি কি নিশ্চিত?', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(723, 'bn', 'all_data_related_to_this_may_get_deleted', 'এর সাথে সম্পর্কিত সমস্ত ডেটা মুছে যেতে পারে।', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(724, 'bn', 'still_want_to_delete', 'তবুও মুছতে চাই!', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(725, 'bn', 'yes_delete', 'হ্যাঁ, মুছুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(726, 'bn', 'file_info', 'ফাইল তথ্য', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(727, 'bn', 'nothing_selected', 'কিছুই নির্বাচন করা হয়নি', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(728, 'bn', 'please_choose_options', 'অনুগ্রহ করে বিকল্প বেছে নিন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(729, 'bn', 'no_data_found', 'কোন তথ্য পাওয়া যায়নি', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(730, 'bn', 'choose_file', 'ফাইল পছন্দ কর', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(731, 'bn', 'browse', 'ব্রাউজ করুন', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(732, 'bn', 'upload_complete', 'আপলোড সম্পূর্ণ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(733, 'bn', 'processing', 'প্রক্রিয়াকরণ', '2023-02-21 06:33:40', '2023-02-21 06:33:40'),
(734, 'bn', 'complete', 'সম্পূর্ণ', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(735, 'bn', 'add_new_files', 'নতুন ফাইল যোগ করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(736, 'bn', 'media_files', 'মিডিয়া ফাইল', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(737, 'bn', 'search_by_name', 'নাম দ্বারা অনুসন্ধান', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(738, 'bn', 'quick_links', 'দ্রুত লিঙ্ক', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(739, 'bn', 'contact_us', 'যোগাযোগ করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(740, 'bn', 'blog_details', 'ব্লগ বিস্তারিত', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(741, 'bn', 'category_list', 'বিভাগ তালিকা', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(742, 'bn', 'recent_post', 'সাম্প্রতিক পোস্ট', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(743, 'bn', 'login_with_your_account', 'আপনার অ্যাকাউন্ট দিয়ে লগইন করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(744, 'bn', 'features', 'বৈশিষ্ট্য', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(745, 'bn', 'our_top_features', 'আমাদের শীর্ষ বৈশিষ্ট্য', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(746, 'bn', 'all_cottages', 'সমস্ত কটেজ', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(747, 'bn', 'all_services', 'সমস্ত পরিষেবা', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(748, 'bn', 'our_best_services', 'আমাদের সেরা সেবা', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(749, 'bn', 'see_more', 'আরো দেখুন', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(750, 'bn', 'testimonials', 'প্রশংসাপত্র', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(751, 'bn', 'what_client_says', 'ক্লায়েন্ট কি বলে', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(752, 'bn', 'browse_our_gallery', 'আমাদের গ্যালারি ব্রাউজ করুন', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(753, 'bn', 'all_blogs', 'সমস্ত ব্লগ', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(754, 'bn', 'latest_news__blogs', 'সর্বশেষ খবর এবং ব্লগ', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(755, 'bn', 'our_blogs', 'আমাদের ব্লগ', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(756, 'bn', 'partners', 'অংশীদার', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(757, 'bn', 'our_awesome_', 'আমাদের অসাধারণ', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(758, 'bn', 'reset_your_account', 'আপনার অ্যাকাউন্ট রিসেট করুন', '2023-02-21 06:33:54', '2023-02-21 06:41:11'),
(759, 'bn', 'send_reset_code', 'রিসেট কোড পাঠান', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(760, 'bn', 'email_address', 'ইমেইল ঠিকানা', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(761, 'bn', 'back_to_login_', 'প্রবেশ করতে পেছান', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(762, 'bn', 'registration', 'নিবন্ধন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(763, 'bn', 'create_your_account', 'আপনার একাউন্ট তৈরী করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(764, 'bn', 'full_name', 'পুরো নাম', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(765, 'bn', 'password', 'পাসওয়ার্ড', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(766, 'bn', 'remember_me', 'আমাকে মনে কর', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(767, 'bn', 'dont_have_an_account', 'একটি অ্যাকাউন্ট নেই?', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(768, 'bn', 'register', 'নিবন্ধন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(769, 'bn', 'confirm_password', 'পাসওয়ার্ড নিশ্চিত করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(770, 'bn', 'i_agree_with_the_terms__services', 'আমি শর্তাবলী এবং পরিষেবার সাথে একমত।', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(771, 'bn', 'already_have_an_account', 'ইতিমধ্যে একটি সদস্যপদ আছে?', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(772, 'bn', 'set_new_password', 'নতুন পাসওয়ার্ড সেট করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(773, 'bn', 'set_new_password_for_your_account', 'আপনার অ্যাকাউন্টের জন্য নতুন পাসওয়ার্ড সেট করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(774, 'bn', 'verification_code', 'যাচাইকরণ কোড', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(775, 'bn', 'verification', 'প্রতিপাদন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(776, 'bn', 'verify_your_account', 'আপনার অ্যাকাউন্ট যাচাই করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(777, 'bn', 'did_not_get_a_code', 'একটা কোড পাননি?', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(778, 'bn', 'resend', 'আবার পাঠান', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(779, 'bn', 'verify', 'যাচাই করুন', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(780, 'bn', 'events', 'ঘটনা', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(781, 'bn', 'event_details', 'অনুষ্ঠানের বিবরণ', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(782, 'bn', 'event_information', 'ইভেন্ট তথ্য', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(783, 'bn', 'event_date', 'ইভেন্ট তারিখ', '2023-02-21 06:33:54', '2023-02-21 06:33:54'),
(784, 'bn', 'event_time', 'ইভেন্ট সময়', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(785, 'bn', 'event_location', 'ইভেন্টের অবস্থান', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(786, 'bn', 'event_cost', 'ইভেন্ট খরচ', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(787, 'bn', 'read_more', 'আরও পড়ুন', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(788, 'bn', 'blogs', 'ব্লগ', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(789, 'bn', 'gallery', 'গ্যালারি', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(790, 'bn', 'other_cottages', 'অন্যান্য কটেজ', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(791, 'bn', 'this_cottage_is_unavailable_in_selected_dates', 'এই কটেজটি নির্বাচিত তারিখে অনুপলব্ধ', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(792, 'bn', 'this_cottage_is_available_for_booking', 'এই কটেজ বুকিং জন্য উপলব্ধ', '2023-02-21 06:34:10', '2023-02-21 06:34:10'),
(793, 'bn', 'additional_info', 'অতিরিক্ত তথ্য', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(794, 'bn', 'booking_summary', 'বুকিং সারাংশ', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(795, 'bn', 'order_info', 'অর্ডার তথ্য', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(796, 'bn', 'order_pay_summary', 'অর্ডার পে সারাংশ', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(797, 'bn', 'stay', 'থাকা', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(798, 'bn', 'nights', 'রাত্রি', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(799, 'bn', 'back', 'পেছনে', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(800, 'bn', 'your_details', 'আপনার বিবরণ', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(801, 'bn', 'thanks_for_your_booking_we_have_successfully_listed_it_and_will_contact_you_soon', 'আপনার বুকিং জন্য ধন্যবাদ. আমরা এটি সফলভাবে তালিকাভুক্ত করেছি এবং শীঘ্রই আপনার সাথে যোগাযোগ করব৷', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(802, 'bn', 'cottage_details', 'কুটির বিবরণ', '2023-02-21 06:34:10', '2023-02-21 06:38:56'),
(803, 'bn', 'our_other_cottages', 'আমাদের অন্যান্য কটেজ', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(804, 'bn', 'best_cottages', 'সেরা কটেজ', '2023-02-21 06:34:10', '2023-02-21 06:41:28'),
(805, 'bn', 'our_best_cottages', 'আমাদের সেরা কটেজ', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(806, 'bn', 'cottages', 'কটেজ', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(807, 'bn', 'we_have_some_wonderful_cottages_ready_for_you_here_are_plenty_of_options_when_it_comes_to_cottages_to_rent_for_a_weekend_break_or_a_healthy_vacation', 'আমরা আপনার জন্য কিছু চমৎকার কটেজ প্রস্তুত আছে. সপ্তাহান্তে বিরতি বা স্বাস্থ্যকর অবকাশের জন্য কটেজ ভাড়া করার জন্য এখানে প্রচুর বিকল্প রয়েছে।', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(808, 'bn', 'please_login_to_continue', 'অবিরত লগ ইন করুন', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(809, 'bn', 'welcome_to_customer_dashboard', 'গ্রাহক ড্যাশবোর্ডে স্বাগতম', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(810, 'bn', 'recent_bookings', 'সাম্প্রতিক বুকিং', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(811, 'bn', 'log_out', 'প্রস্থান', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(812, 'bn', 'updated_profile', 'আপডেট করা প্রোফাইল', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(813, 'bn', 'my_wishlist', 'আমার ইচ্ছাগুলি', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(814, 'bn', 'dashboard', 'ড্যাশবোর্ড', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(815, 'bn', 'booking_date', 'বুকিং তারিখ', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(816, 'bn', 'staying_nights', 'রাত্রি যাপন', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(817, 'bn', 'total_cost', 'মোট খরচ', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(818, 'bn', 'status', 'স্ট্যাটাস', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(819, 'bn', 'sl', 'S/L', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(820, 'bn', 'action', 'কর্ম', '2023-02-21 06:34:11', '2023-02-21 06:41:28'),
(821, 'bn', 'booking_code', 'সংরক্ষন কোড', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(822, 'bn', 'learn_more', 'আরও জানুন', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(823, 'bn', 'best_services', 'সেরা সেবা', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(824, 'bn', 'service_details', 'পরিষেবার বিবরণ', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(825, 'bn', 'services', 'সেবা', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(826, 'bn', 'forgot_password', 'পাসওয়ার্ড ভুলে গেছেন', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(827, 'bn', 'wishlist', 'ইচ্ছেতালিকা', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(828, 'bn', 'enter_name', 'নাম লিখুন', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(829, 'bn', 'enter_email', 'ইমেইল প্রদান করুন', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(830, 'bn', 'name', 'নাম', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(831, 'bn', 'email', 'ইমেইল', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(832, 'bn', 'phone', 'ফোন', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(833, 'bn', 'address', 'ঠিকানা', '2023-02-21 06:34:11', '2023-02-21 06:34:11'),
(834, 'bn', 'your_address', 'আপনার ঠিকানা', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(835, 'bn', 'your_name', 'তোমার নাম', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(836, 'bn', 'your_email', 'তোমার ইমেইল', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(837, 'bn', 'your_phone', 'তোমার ফোন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(838, 'bn', 'enter_phone_no', 'ফোন নম্বর লিখুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(839, 'bn', 'update', 'হালনাগাদ', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(840, 'bn', 'update_password', 'পাসওয়ার্ড আপডেট করুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(841, 'bn', 'your_password', 'আপনার পাসওয়ার্ড', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(842, 'bn', 'password_confirmation', 'পাসওয়ার্ড নিশ্চিতকরণ', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(843, 'bn', 'avatar', 'অবতার', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(844, 'bn', 'update_avatar', 'অবতার আপডেট করুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(845, 'bn', 'discover_more', 'আরও আবিষ্কার কর', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(846, 'bn', 'rooms', 'রুম', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(847, 'bn', 'beds', 'শয্যা', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(848, 'bn', 'book_now', 'এখন বুক করুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(849, 'bn', 'check_in', 'চেক ইন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(850, 'bn', 'adults', 'প্রাপ্তবয়স্কদের', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(851, 'bn', 'search', 'অনুসন্ধান করুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(852, 'bn', 'children', 'শিশুরা', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(853, 'bn', 'night', 'রাত্রি', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(854, 'bn', 'load_more', 'আর ঢুকাও', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(855, 'bn', 'room_description', 'রুম বিবরণ', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(856, 'bn', 'check_availability', 'গ্রহণযোগ্যতা যাচাই', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(857, 'bn', 'check_out', 'চেক আউট', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(858, 'bn', 'out', 'আউট', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(859, 'bn', 'verification_has_been_successful', 'যাচাইকরণ সফল হয়েছে', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(860, 'bn', 'login', 'প্রবেশ করুন', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(861, 'bn', 'profile', 'প্রোফাইল', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(862, 'bn', 'home', 'বাড়ি', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(863, 'bn', 'about', 'সম্পর্কিত', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(864, 'bn', 'my_profile', 'আমার প্রোফাইল', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(865, 'bn', 'update_profile', 'প্রফাইল হালনাগাদ', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(866, 'bn', 'my_bookings', 'আমার বুকিং', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(867, 'bn', 'bookings', 'বুকিং', '2023-02-21 06:34:25', '2023-02-21 06:34:25'),
(868, 'bn', 'translations_updated_for_', 'এর জন্য অনুবাদ আপডেট করা হয়েছে', '2023-02-21 06:39:15', '2023-02-21 06:39:15'),
(869, 'en', 'language_changed_to_', 'Language changed to ', '2023-02-21 06:48:33', '2023-02-21 06:48:33'),
(870, 'hi', 'language_changed_to_', 'Language changed to', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(871, 'hi', 'translations_updated_for_', 'Translations updated for', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(872, 'hi', 'ban_this_guest', 'Ban this guest', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(873, 'hi', 'only_customers_can_login_here', 'Only customers can login here', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(874, 'hi', 'back_to_login', 'Back to login', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(875, 'hi', 'we_have', 'We Have', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(876, 'hi', 'find_peace_here', 'Find Peace Here', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(877, 'hi', 'appreciations', 'Appreciations', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(878, 'hi', 'from_archive', 'From Archive', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(879, 'hi', 'recent_posts', 'Recent Posts', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(880, 'hi', 'connections', 'Connections', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(881, 'hi', 'we_provide', 'We Provide', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(882, 'hi', 'explore_more', 'Explore More', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(883, 'hi', 'update_translations', 'Update Translations', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(884, 'hi', 'search_by_key', 'Search by key', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(885, 'hi', 'language_key', 'Language Key', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(886, 'hi', 'translations', 'Translations', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(887, 'hi', 'confirmation', 'Confirmation', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(888, 'hi', 'continue_to_ban_this_guest', 'Continue to ban this guest?', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(889, 'hi', 'ban_guest', 'Ban Guest', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(890, 'hi', 'continue_to_unban_this_guest', 'Continue to unban this guest?', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(891, 'hi', 'unban_guest', 'Unban Guest', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(892, 'hi', 'all_guests', 'All Guests', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(893, 'hi', 'your_booking_status_has_been_updated_to__cancelled', 'Your booking status has been updated to - cancelled', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(894, 'hi', 'booking_update_yesort4', 'Booking Update: Yesort#4', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(895, 'hi', 'your_booking_status_has_been_updated_to__confirmed', 'Your booking status has been updated to - confirmed', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(896, 'hi', 'booking_update_yesort2', 'Booking Update: Yesort#2', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(897, 'hi', 'booking_has_been_updated_successfully', 'Booking has been updated successfully', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(898, 'hi', 'booking_update', 'Booking Update', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(899, 'hi', 'booking_details', 'Booking Details', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(900, 'hi', 'guest_details', 'Guest Details', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(901, 'hi', 'checkout', 'Checkout', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(902, 'hi', 'total_bill', 'Total Bill', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(903, 'hi', 'update_booking', 'Update Booking', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(904, 'hi', 'your_booking_has_been_listed_please_wait_for_confirmation', 'Your booking has been listed, please wait for confirmation', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(905, 'hi', 'profile_avatar_updated_successfully', 'Profile avatar updated successfully', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(906, 'hi', 'profile_information_updated_successfully', 'Profile information updated successfully', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(907, 'hi', 'role_list', 'Role List', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(908, 'hi', 'add_new_role', 'Add New Role', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(909, 'hi', 'staff_list', 'Staff List', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(910, 'hi', 'add_new_staff', 'Add New Staff', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(911, 'hi', 'role', 'Role', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(912, 'hi', 'email_subject_here', 'Email Subject here', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(913, 'hi', 'select_subscribers', 'Select subscribers', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(914, 'hi', 'content', 'Content', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(915, 'hi', 'send', 'Send', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(916, 'hi', 'subject', 'Subject', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(917, 'hi', 'all_subscribers', 'All Subscribers', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(918, 'hi', 'search_by_email', 'Search by email', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(919, 'hi', 'subscribed_at', 'Subscribed At', '2023-02-21 06:59:12', '2023-02-21 06:59:12'),
(920, 'en', 'event_has_been_updated_successfully', 'Event has been updated successfully', '2023-02-21 15:44:54', '2023-02-21 15:44:54'),
(921, 'en', 'admin', 'Admin', '2023-02-21 16:17:15', '2023-02-21 16:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'security-camera', 'uploads/media/Os6tMBhcIUdhq533xjuqrBG5RNQES7DPEot8j3gB.svg', 1, 1387, 'svg', 'image', '2023-02-15 04:09:53', '2023-02-15 04:09:53', NULL),
(2, 'tv', 'uploads/media/V9WWo8tBZSUFg24OpdYvX5u1u03Iex7RsGxQ46Us.svg', 1, 1095, 'svg', 'image', '2023-02-15 04:09:53', '2023-02-15 04:09:53', NULL),
(3, 'wifi', 'uploads/media/IByRq6YaItrDPQBe1Y0adtNHwkmR96Y17OJTTAXc.svg', 1, 1267, 'svg', 'image', '2023-02-15 04:09:53', '2023-02-15 04:09:53', NULL),
(4, 'air-conditioner', 'uploads/media/VhxscmjVfYWnegBvrvZipC3PwcFnoOg0xrUsjT3n.svg', 1, 1316, 'svg', 'image', '2023-02-15 04:09:53', '2023-02-15 04:09:53', NULL),
(10, 'header-logo', 'uploads/media/MKruJoEX8l4YgkE2SkHpstWgecn95R1HWkd165Qk.png', 1, 4283, 'png', 'image', '2023-02-16 05:23:32', '2023-02-16 05:23:32', NULL),
(11, 'header-logo-dark', 'uploads/media/ZzRgSvYtUaooGA4jztMbFTXLGxlcEcgHN8PxAF9u.png', 1, 4205, 'png', 'image', '2023-02-16 05:23:51', '2023-02-16 05:23:51', NULL),
(12, 'cottage-1', 'uploads/media/r3wfsLb7PuzRXF3CSOPdI1Us0sYQkZztr8kYYmNG.jpg', 1, 93426, 'jpg', 'image', '2023-02-17 07:02:03', '2023-02-17 07:02:03', NULL),
(13, 'cottage-2', 'uploads/media/1vTdlhgGROPwJEC1bBNYmV89TkCp5OSx18O84pWx.jpg', 1, 161935, 'jpg', 'image', '2023-02-17 07:02:03', '2023-02-17 07:02:03', NULL),
(14, 'cottage-3', 'uploads/media/65CLg7YzLO61RNdiFEtTdy9Fnj54ZI2jOB9l03QH.jpg', 1, 169713, 'jpg', 'image', '2023-02-17 07:02:04', '2023-02-17 07:02:04', NULL),
(15, 'cottage-4', 'uploads/media/QmvDtYIkqhFA0xVzn6HwjMzUdgxo2tapadoc2aYX.jpg', 1, 306125, 'jpg', 'image', '2023-02-17 07:02:04', '2023-02-17 07:02:04', NULL),
(16, 'cottage-5', 'uploads/media/pZVZf5qBb1xDXVkhI4uhT265VMNgz5BYEwIpxYpl.jpg', 1, 369477, 'jpg', 'image', '2023-02-17 07:02:05', '2023-02-17 07:02:05', NULL),
(17, 'cottage-6', 'uploads/media/tR6UClM5otefRTXIzjoIoSTYrhwIAhmJMrdZgAPd.jpg', 1, 363107, 'jpg', 'image', '2023-02-17 07:02:05', '2023-02-17 07:02:05', NULL),
(18, 'cottage-7', 'uploads/media/AEwudUT6cGX2GSIEGAHW0eCJWeAPQgFqiEUbvCcf.jpg', 1, 247101, 'jpg', 'image', '2023-02-17 07:02:05', '2023-02-17 07:02:05', NULL),
(19, 'cottage-8', 'uploads/media/mVtV2ngVzKkkkSIDH9JMpJogZO8sLefQOlTyIIe8.jpg', 1, 328262, 'jpg', 'image', '2023-02-17 07:02:06', '2023-02-17 07:02:06', NULL),
(20, 'cottage-9', 'uploads/media/dm5wQKyhMS98d9CzdbKwHHDap77jOvSaLKJUFg72.jpg', 1, 205547, 'jpg', 'image', '2023-02-17 07:02:06', '2023-02-17 07:02:06', NULL),
(21, 'cottage-details-2', 'uploads/media/vpkT0OCW3STcDPxa0zLEnoK5yPvZa2zyKzlqHaEs.jpg', 1, 331787, 'jpg', 'image', '2023-02-17 07:02:39', '2023-02-17 07:02:39', NULL),
(22, 'cottage-details-1', 'uploads/media/jvtWb7tHMzlppMhXAXo5bUbA74x7fKVDc3jiojGe.jpg', 1, 493000, 'jpg', 'image', '2023-02-17 07:02:40', '2023-02-17 07:02:40', NULL),
(23, 'thumb-1', 'uploads/media/li6FNmwkgiAxAMqukGSVTfVPirUqLQo2Kzd7404U.jpg', 1, 178593, 'jpg', 'image', '2023-02-17 20:45:56', '2023-02-17 20:45:56', NULL),
(24, 'thumb-3', 'uploads/media/fJtw7Lu7JIo9uI06kJkzsuour77OWuzwbDFvfY4Y.jpg', 1, 107726, 'jpg', 'image', '2023-02-17 20:45:56', '2023-02-17 20:45:56', NULL),
(25, 'thumb-2', 'uploads/media/mjj11JngigjCEuWKk9QVbM4aUs6WXVHnQksOUSNS.jpg', 1, 184885, 'jpg', 'image', '2023-02-17 20:45:58', '2023-02-17 20:45:58', NULL),
(26, 'thumb-5', 'uploads/media/44xzHIvR3ADwLfIbZGA1CwXIqXTE24ClQoC0h9Zr.jpg', 1, 163847, 'jpg', 'image', '2023-02-17 20:45:59', '2023-02-17 20:45:59', NULL),
(27, 'thumb-4', 'uploads/media/I4UUbBfLX5zw6lVhpHt05gX924JE9EhBRPZkkqz0.jpg', 1, 182226, 'jpg', 'image', '2023-02-17 20:46:00', '2023-02-17 20:46:00', NULL),
(28, 'thumb-6', 'uploads/media/klIq9JCzzG9fWmSmXLHb2z34C3E8i6XfkU9V3NIH.jpg', 1, 138511, 'jpg', 'image', '2023-02-17 20:46:06', '2023-02-17 20:46:06', NULL),
(29, 'thumb-7', 'uploads/media/i0ueKlT6y6yjXrTm44cxlPK4vDFsk6XBV2BKpKer.jpg', 1, 192334, 'jpg', 'image', '2023-02-17 20:46:07', '2023-02-17 20:46:07', NULL),
(30, 'thumb-8', 'uploads/media/QcMSRbc6jN8SwgYmGz3WUKGMu3r4GlDcJuCM21OL.jpg', 1, 171003, 'jpg', 'image', '2023-02-17 20:46:07', '2023-02-17 20:46:07', NULL),
(31, 'service-details-1', 'uploads/media/GF4LMQAAU9t8a5W1wTYALBdmEA9REoMpTq0GtJOm.jpg', 1, 302560, 'jpg', 'image', '2023-02-17 20:47:43', '2023-02-17 20:47:43', NULL),
(32, 'service-details-2', 'uploads/media/i5DlvQICRN5ruOo7hyGEEYmuobqJmzFOchGk1Pt5.jpg', 1, 356819, 'jpg', 'image', '2023-02-17 20:47:48', '2023-02-17 20:47:48', NULL),
(33, 'service-details-6', 'uploads/media/a9yjPu7pycsznrHFJDLw3Tp4XmlByZxWS51HgoA1.jpg', 1, 354045, 'jpg', 'image', '2023-02-17 20:47:56', '2023-02-17 20:47:56', NULL),
(34, 'service-details-7', 'uploads/media/Zs5cOfMzGbH0VGZ6x07deccGFCydPIOz62Dgs3T1.jpg', 1, 347700, 'jpg', 'image', '2023-02-17 20:47:56', '2023-02-17 20:47:56', NULL),
(35, 'service-details-8', 'uploads/media/DYwrXqiwTvEkhlh8LxShHcNi8XKQJrDTnSBwSVHn.jpg', 1, 472473, 'jpg', 'image', '2023-02-17 20:48:07', '2023-02-17 20:48:07', NULL),
(36, 'service-details-3', 'uploads/media/K94IGMyiX8RRod1RfsckNWTMh4x6VrdkKkzznBGr.jpg', 1, 314433, 'jpg', 'image', '2023-02-17 20:48:10', '2023-02-17 20:48:10', NULL),
(37, 'service-details-4', 'uploads/media/nHju1WUYUkj8JAZDpP911lsywxPkc8zoTGml1dqz.jpg', 1, 432993, 'jpg', 'image', '2023-02-17 20:48:13', '2023-02-17 20:48:13', NULL),
(38, 'service-details-5', 'uploads/media/A4SbB7gn2Y4YHe1j4fK2mcKYVxy97XAhkpslgrHL.jpg', 1, 337712, 'jpg', 'image', '2023-02-17 20:48:14', '2023-02-17 20:48:14', NULL),
(39, 'gallery-1', 'uploads/media/xOpaS1yckYaepb7H8HWxCp5fktePG5C32NVNAJ2N.jpg', 1, 43588, 'jpg', 'image', '2023-02-17 22:43:51', '2023-02-17 22:43:51', NULL),
(40, 'gallery-2', 'uploads/media/PQ8k76OCOzkqgA86R6V2fRfDGykeVRMSRpPEQatu.jpg', 1, 79937, 'jpg', 'image', '2023-02-17 22:44:11', '2023-02-17 22:44:11', NULL),
(41, 'gallery-3', 'uploads/media/5teGcwEUdp9mLp2LJv34SFK4jiZG3naXmXkfXIyY.jpg', 1, 74582, 'jpg', 'image', '2023-02-17 22:44:11', '2023-02-17 22:44:11', NULL),
(42, 'gallery-6', 'uploads/media/hme8Bv6ZWp9mK1BQKV7Kn4VjKeMb256KGka7VSXA.jpg', 1, 51664, 'jpg', 'image', '2023-02-17 22:44:12', '2023-02-17 22:44:12', NULL),
(43, 'gallery-4', 'uploads/media/3XymOcj1KE6mRbZC8a6BMfSw1qu8x82Z5ohTKCtr.jpg', 1, 88241, 'jpg', 'image', '2023-02-17 22:44:12', '2023-02-17 22:44:12', NULL),
(44, 'gallery-5', 'uploads/media/P1hr5MJfNblhJlZxWdiWIM9gjSrHZe7yD8c1lyyl.jpg', 1, 89504, 'jpg', 'image', '2023-02-17 22:44:12', '2023-02-17 22:44:12', NULL),
(45, '2', 'uploads/media/LWkWAkpqbiIhdoOeS37EyLokZ8vuNuXjaZ6Oktv6.png', 1, 2342, 'png', 'image', '2023-02-17 22:50:09', '2023-02-17 22:50:09', NULL),
(46, '1', 'uploads/media/YqKLDXpZKxFvnAa0n6IHe3tVUZrGlBSDjMB2v0g6.png', 1, 1770, 'png', 'image', '2023-02-17 22:50:09', '2023-02-17 22:50:09', NULL),
(47, '5', 'uploads/media/YCYm6vo83A841fUsjCy0uErYMLkqMlncZzRt4Sbm.png', 1, 1592, 'png', 'image', '2023-02-17 22:50:09', '2023-02-17 22:50:09', NULL),
(48, '3', 'uploads/media/rKdjjjC1QwFwCYZSKZ4zlnolZuaCk3nR7f8N6f6H.png', 1, 1491, 'png', 'image', '2023-02-17 22:50:09', '2023-02-17 22:50:09', NULL),
(49, '4', 'uploads/media/jllo0l2kQ8FCBdxIejXZX3kpmCpn7ypjOkNSuOOv.png', 1, 1566, 'png', 'image', '2023-02-17 22:50:09', '2023-02-17 22:50:09', NULL),
(50, '6', 'uploads/media/pTZVPsLFsQLwS781nnBLJxibye5sxsY2j3Ls4AcE.png', 1, 1363, 'png', 'image', '2023-02-17 22:50:11', '2023-02-17 22:50:11', NULL),
(51, 'yesort-slider-two', 'uploads/media/OgxXAHcwSfQmWPs1QLts8HNjaKwaVSij4eq4v24u.jpg', 1, 108710, 'jpg', 'image', '2023-02-17 23:04:09', '2023-02-17 23:04:09', NULL),
(52, 'yesort-slider-one', 'uploads/media/XxaPTiqqaPhCtknfJFH9S55dJ2smKh5J6qUuj02n.jpg', 1, 212801, 'jpg', 'image', '2023-02-17 23:04:09', '2023-02-17 23:04:09', NULL),
(53, 'yesort-slider-three', 'uploads/media/av0xiEjmzQSGiAKcH7pcg8VfDlNbl5pKeBhtR6Vw.jpg', 1, 202313, 'jpg', 'image', '2023-02-17 23:04:09', '2023-02-17 23:04:09', NULL),
(54, 'avatar-2', 'uploads/media/Zbmg6HJecVbm5zkwai4fA3sRxxaWoOTTlnCuaJjI.jpg', 1, 82295, 'jpg', 'image', '2023-02-17 23:24:46', '2023-02-17 23:24:46', NULL),
(55, 'avatar-1', 'uploads/media/mI1MLUhmpaKs9zfLFuHlkeE9KFfg5CToSTHkhCDn.jpg', 1, 97529, 'jpg', 'image', '2023-02-17 23:24:46', '2023-02-17 23:24:46', NULL),
(56, 'blog-2', 'uploads/media/rETZ1osKw8p977jzQsaXmd3y352RQWP4rLrUauPF.jpg', 1, 178450, 'jpg', 'image', '2023-02-17 23:35:35', '2023-02-17 23:35:35', NULL),
(57, 'blog-3', 'uploads/media/XoCqjzn12TyKM2CHoOU4yQwc8zsExC30SxLGnUrk.jpg', 1, 189199, 'jpg', 'image', '2023-02-17 23:39:36', '2023-02-17 23:39:36', NULL),
(58, 'cottage-4', 'uploads/media/LzRQ5lAkJqYOcrDgyr0hkpPaK9UTKsjhNDVoFFOv.jpg', 1, 256391, 'jpg', 'image', '2023-02-17 23:46:45', '2023-02-17 23:46:45', NULL),
(59, 'event-1', 'uploads/media/fdejPGVjekO5W75jpZ7JNXdXtzIVsFRiqw9IfBNE.jpg', 1, 38848, 'jpg', 'image', '2023-02-18 01:15:48', '2023-02-18 01:15:48', NULL),
(61, 'event-4', 'uploads/media/eeWIqeXxarczk4KkgeWlOzoFt3rVnrdLNxsiIwtf.jpg', 1, 33292, 'jpg', 'image', '2023-02-18 01:20:43', '2023-02-18 01:20:43', NULL),
(62, 'avatar-1', 'uploads/all/bsNH2BK4uiMHDaCi3FB0bzNvJnqy5tpGkzQAiDoK.jpg', 70, 97529, 'jpg', 'image', '2023-02-18 01:41:43', '2023-02-18 01:41:43', NULL),
(63, 'sun', 'uploads/all/VtR3iLS5RSpZKzSYVrKe9I5cw5l6cloBgrMal6zk.png', 70, 25264, 'png', 'image', '2023-02-18 01:42:22', '2023-02-18 01:42:22', NULL),
(76, 'Logo_White (2)', 'uploads/media/Lu7dw0vMBNOlPWOX9dfN3f9AwFVM7c7TPmOFyRPh.svg', 1, 928137, 'svg', 'image', '2023-02-20 04:04:34', '2023-02-20 04:04:34', NULL),
(77, 'Logo', 'uploads/media/8eu3PkmWAJQR8dM2TGVVp1MfDi5UgvA56qghoRUz.svg', 1, 260247, 'svg', 'image', '2023-02-20 04:04:51', '2023-02-20 04:04:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email_verificiation_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` int(20) DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `banned` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `provider_id`, `user_type`, `role_id`, `name`, `email`, `email_verified_at`, `phone_verified_at`, `verification_code`, `new_email_verificiation_code`, `password`, `remember_token`, `avatar`, `phone`, `balance`, `banned`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'admin', NULL, 'Admin', 'admin@example.com', '2020-11-25 04:11:28', NULL, NULL, NULL, '$2y$10$.La9wpRg/JRTpbxxvwVscevggr7T2Ava0CPAnI9Jm7FG81Kg/r9CG', '2zIiiao6YBJlkFrcIYtsMsqSmPfINAHx3l7PcQc4wduqvTKo1cCMCSk4A7CF', NULL, NULL, 0.00, 0, '2020-11-25 04:04:28', '2023-02-18 15:15:20', NULL),
(70, NULL, 'customer', NULL, 'John Doe Smith', 'customer@example.com', '2022-11-24 07:11:57', NULL, '995328', NULL, '$2y$10$PW5RIIX6EZSO2/vmspyrJ.UMM/vPzvKjvKSfIIBNXd91u5Ay3LbrO', 'UJmLmj5JmKzJGRwvyQwySocWdbrvWg6cpWwqnkwZHj7rlrTvN2rbgf5GpMca', 63, '01234567891', 0.00, 0, '2020-11-25 04:04:28', '2023-02-18 01:42:22', NULL),
(73, NULL, 'staff', 10, 'Admin Staff', 'staff@example.com', NULL, NULL, NULL, NULL, '$2y$10$HJkzn5t13ZAxESGY2IxKuO9x8ZkrC9GvO8wtlzONEy.C/jM6yHP6a', 'hsTYSw3nixCZL6oqFQKANn0V2z1P0yxvz42dCJBMQQGnykpbuovPhZDGaTKS', NULL, '12345666', 0.00, 0, '2023-02-12 15:59:03', '2023-02-12 15:59:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cottages`
--
ALTER TABLE `cottages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cottage_translations`
--
ALTER TABLE `cottage_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_translations`
--
ALTER TABLE `event_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_translations`
--
ALTER TABLE `service_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_category_translations`
--
ALTER TABLE `blog_category_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cottages`
--
ALTER TABLE `cottages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cottage_translations`
--
ALTER TABLE `cottage_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_translations`
--
ALTER TABLE `event_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service_translations`
--
ALTER TABLE `service_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=922;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
