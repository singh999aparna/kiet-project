-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 28, 2018 at 12:49 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `addtocart`
--

CREATE TABLE IF NOT EXISTS `addtocart` (
  `username` varchar(200) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_price` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addtocart`
--

INSERT INTO `addtocart` (`username`, `c_name`, `c_price`) VALUES
('Anurag7869', 'Chana Masala', 'Rs. 225/bowl'),
('Anurag7869', 'Baigun-Bhajja (Veg)', 'Rs. 240/bowl'),
('Anurag7869', 'Spring-roll...', 'Rs. 120/plate'),
('Anurag7869', 'Gol-Gappe...', 'Rs. 50/plate'),
('Anurag7869', 'Entry Gate', 'Rs. 4500/-'),
('Anurag7869', 'Garden City Resort', 'Rs. 2,50,000/-'),
('varsha123', 'Noodles...', 'Rs. 100/plate'),
('varsha123', 'Butterscotch...', 'Rs. 110/-'),
('varsha123', 'Rum...', 'Rs. 350/-'),
('varsha123', 'Flower Deco...', 'Rs. 10,000/-'),
('varsha123', 'Garden City Resort', 'Rs. 2,50,000/-'),
('Anurag7869', 'Baigun-Bhajja (Veg)', 'Rs. 240/bowl');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_password` varchar(200) NOT NULL,
  `a_contact` varchar(200) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_email`, `a_password`, `a_contact`) VALUES
(1, 'Anurag', 'anuragjain7869@gmail.com', 'jain', '9536230187');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_customername` varchar(200) NOT NULL,
  `b_email` varchar(200) NOT NULL,
  `b_mobno` varchar(200) NOT NULL,
  `b_numguest` varchar(200) NOT NULL,
  `b_edate` date NOT NULL,
  `b_event` varchar(200) NOT NULL,
  PRIMARY KEY (`b_id`),
  UNIQUE KEY `b_email` (`b_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`b_id`, `b_customername`, `b_email`, `b_mobno`, `b_numguest`, `b_edate`, `b_event`) VALUES
(9, 'Rahul Jain', 'rahul@gmail.com', '9997151698', '1000', '2018-03-31', 'Eng@gement...'),
(10, 'abc', 'abc@g.m', '9997161554', '500', '2018-09-12', 'Wedding...'),
(11, 'Saurabh', 'saurabh009@gmail.com', '9536230186', '500', '1970-03-31', 'S@ngeet...'),
(13, 'yyyy', 'yyy@gmail.com', '9992221112', '800', '2018-03-12', 'Mehendi'),
(14, 'Varsha ', 'varsha@gmail.com', '7417324124', '500', '2018-03-26', 'F@shion Show...'),
(15, 'appy', 'sweetappy.8796@gmail.com', '9719654302', '700', '2018-08-31', 'Eng@gement...'),
(16, 'mmmm', 'mm@g.m', '9536230181', '530', '2018-07-31', 'Reception...'),
(17, 'www', 'ww@g.g', '1234567890', '400', '2018-03-21', 'Eng@gement...'),
(19, 'appy', 'asweetappy.8796@gmail.com', '9536230187', '500', '2019-03-08', 'Annivers@ry'),
(20, 'rrr', 'vvv@m.m', '9536230187', '300', '2018-03-12', 'Wedding...');

-- --------------------------------------------------------

--
-- Table structure for table `catering`
--

CREATE TABLE IF NOT EXISTS `catering` (
  `c_id` int(200) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(100) NOT NULL,
  `c_image` varchar(300) NOT NULL,
  `c_descri` varchar(200) NOT NULL,
  `c_ref` varchar(200) NOT NULL,
  `c_uref` varchar(200) NOT NULL,
  `c_ingredient` varchar(500) NOT NULL,
  `c_price` varchar(2000) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `catering`
--

INSERT INTO `catering` (`c_id`, `c_name`, `c_image`, `c_descri`, `c_ref`, `c_uref`, `c_ingredient`, `c_price`) VALUES
(7, 'East Indian...', 'images/East Indian.jpg', 'Menu', 'east.php', 'usereast.php', '', ''),
(8, 'West Indian....', 'images/pavbhaji.jpg', 'Menu', 'west.php', 'userwest.php', '', ''),
(9, 'North Indian..', 'images/north indian.jpg', 'Menu', 'north.php', 'usernorth.php', '', ''),
(10, 'South Indian..', 'images/dosa.jpg', 'Menu', 'south.php', 'usersouth.php', '', ''),
(11, 'Beverages.....', 'images/Beverage.jpg', 'Menu', 'beverages.php', 'userbeverages.php', '', ''),
(12, 'Deserts.....', 'images/desert.jpg', 'Menu', 'deserts.php', 'userdeserts.php', '', ''),
(13, 'Snacks....', 'images/snacks.jpg', 'Menu', 'snacks.php', 'usersnacks.php', '', ''),
(14, 'Continental....', 'images/cocktail.jpg', 'Menu', 'continental.php', 'usercontinental.php', '', ''),
(15, 'Sweet...', 'images/qqq.jpg', 'Deserts', 'sweet.php', 'usersweet.php', 'Wallpaper', 'Wallpaper'),
(16, 'Ice-cream...', 'images/ice.jpg', 'Deserts', 'ice.php', 'userice.php', 'Wallpaper', 'Wallpaper'),
(18, 'Ras-Malai..', 'images/ban-rasgulla.jpg', 'Sweet', 'ras.php', 'userras.php', '1) Sugar,2)  water, 3) cottage cheese solids,4)  vegetable oil, 5) wheat flour, 6) rose water', 'Rs. 200/kg.'),
(19, 'Gulab Jamun..', 'images/gulab.jpg', 'Sweet', 'gulab.php', 'usergulab.php', '1)  Milk, 2) Concentrated Milk, 3) Sugar, Water, 4) Plain Flour (Gluten),5)  Paneer cheese (Milk), 6) Cornstarch, 7) Clarified Butter (Milk), 8) Cardamom', 'Rs. 220/kg.'),
(20, 'Gajar-Halwa..', 'images/halwa.jpg', 'Sweet', 'halwa.php', 'userhalwa.php', '1) 1 Kg Carrots, 2) 1 1/2 Litre Milk, 3) 8 Green cardamoms, 4) 8 Green cardamoms, 5) 5-7 Tbsp Ghee, 6) 5-7 Tbsp Sugar, 7) 2 Tbsp Raisins, 8) 1 Tbsp Almonds, shredded, 9) 2 Tbsp Dates, chopped', 'Rs. 350/kg.'),
(21, 'Kaju-Pan...', 'images/kaju-pan.jpg', 'sweet', 'pan.php', 'userpan.php', '1) 100 gm Unsweetened Khoya (Mawa) (about 1/2 cup), 2)  3 Tbsp Gulkand, 3)  2 Tsp Soft Supari, 4)  1 Tbsp Clipped Almonds (Badam), 5) 1 Cup Cashew Nuts (Kaju), 6)  1/2 Cup Sugar, 7) 1/4 Cup Water, 8) Pinch Bright Green Food Colour, 9) Silver leaf for Garnish (Optional)', 'Rs. 950/kg.'),
(22, 'Bangali-Ras..', 'images/ban-rasgulla.jpg', 'Sweet', 'bangali.php', 'userbangali.php', '1) 2 Liter Low fat milk (Refrigerated overnight, boiled), 2) 1/4 Cup Lemon juice (mixed in 1/4 cup water), 3) 1 tsp Refined flour (maida) or semolina, 4)  4 Cups Thin sugar syrup (flavored with cardamom or rosewater)', 'Rs. 250/kg.'),
(24, 'Kaju Katli..', 'images/kaju.jpg', 'sweet', 'kaju.php', 'userkaju.php', '1) 2 cup powdered cashews, 2) 2 teaspoon ghee, 3) 1/2 cup Water, 4) 4 inches Silver vark, 5) 1 cup sugar, 6) 2 tablespoon milk', 'Rs. 880/kg.'),
(25, 'Almond-ice...', 'images/almond.jpg', 'ice', 'almond.php', 'useralmond.php', '1) ALMOND MILK (WATER, ALMONDS), 2) ORGANIC DRIED CANE SYRUP, 3) COCONUT OIL, 4) VANILLA EXTRACT, 5) NATURAL FLAVOR, 6) GUM ARABIC, 7) CAROB BEAN GUM, 8) SEA SALT', 'Rs. 90/pack'),
(26, 'Choclate-ice..', 'images/choclate.jpg', 'ice', 'choclate.php', 'userchoclate.php', '1) 2 1/2 cups milk (full cream), 2) 1 Tbsp custard powder, 3) 2 Tbsp cocoa powder, 4) 1 cup sugar 5) 1/2 tsp vanilla essence, 6) 1 1/2 cups cream 7) Cherries or nuts for garnish.', 'Rs. 50/piece'),
(27, 'Cone-ice...', 'images/cone.jpg', 'ice', 'cone.php', 'usercone.php', '1) 1/4 cup (60 ml) egg whites (about 2 large egg whites), 2) 7 tablespoons (85 g) sugar, 3) 1/2 teaspoon vanilla extract, 4) 1/8 teaspoon salt 5)  2/3 cup (90 g) flour, 6) 2 tablespoons (30 g) unsalted butter 7) melted.', 'Rs. 50/piece'),
(28, 'Fruit ice...', 'images/fruit.jpg', 'ice', 'fruit.php', 'userfruit.php', '1) Fruits, 2) ORGANIC DRIED CANE SYRUP, 3) COCONUT OIL, 4) VANILLA EXTRACT, 5) NATURAL FLAVOR, 6) GUM ARABIC, 7) CAROB BEAN GUM, 8) SEA SALT', 'Rs. 60/piece'),
(29, 'Dry-fruit ice..', 'images/dry friut.jpg', 'ice', 'dry.php', 'userdry.php', '1) Dry Fruits, 2) ORGANIC DRIED CANE SYRUP, 3) COCONUT OIL, 4) VANILLA EXTRACT, 5) NATURAL FLAVOR, 6) GUM ARABIC, 7) CAROB BEAN GUM, 8) SEA SALT', 'Rs. 120/piece'),
(30, 'Strawberry ice..', 'images/strawberry.jpg', 'ice', 'straw.php', 'userstraw.php', '1) 1 pint fresh strawberries, 2) hulled and chopped, 3) 1 tablespoon fresh lemon juice, 4) 2 large eggs, 5) 1 cup sugar, divided, 6)  2 cups heavy whipping cream, 7) 1 cup milk. 1 teaspoon vanilla extract.', 'Rs. 70/piece'),
(31, 'Baigun-Bhajja (Veg)', 'images/Baigun Bhajja.jpg', 'east', 'baigun.php', 'userbaigun.php', '1) 1 Eggplant / Baingan Large one, 2) 1/2 tsp Turmeric Powder 3) 1 tsp Red Chilli Powder 4)  Salt to taste 5) 1/4 cup Rice Flour 60 Mustard Oil for frying.', 'Rs. 240/bowl'),
(32, 'Chana Masala', 'images/chana masala.jpg', 'east', 'chana.php', 'userchana.php', 'Chickpeas, Onion, Tomatoes, Coriander Seed, Garlic, Chiles, Ginger', 'Rs. 225/bowl'),
(33, 'Chicken Tikka..', 'images/chicken tikka masala.jpg', 'east', 'chicken.php', 'userchicken.php', 'Chicken, Yogurt, Cream, Tomato, Onion, Garlic, Ginger, Chili pepper, Coconut', 'Rs. 240/bowl'),
(34, 'Chicken Vindaloo', 'images/chicken vindaloo.jpg', 'east', 'vindaloo.php', 'uservindaloo.php', '250 gm boneless chicken. Salt to taste. Turmeric powder to taste. Butter to taste. For Vindaloo Masala: Fenugreek seeds and cumin seeds in equal proportions. For the Main Preparation: 4 Tbsp olive oil.', 'Rs. 270/bowl'),
(35, 'Fried Cabbage', 'images/fried cabbage.jpg', 'east', 'fried.php', 'userfried.php', 'Fry bacon until crisp and well browned. Drain and set aside. Add chopped onion to the bacon grease and stir until translucent. Add cabbage, pepper flakes, salt and pepper, stirring until all cabbage is coated. Add the crumbled bacon bits and cover. Cook over low heat until cabbage is tender.', 'Rs. 200/bowl'),
(36, 'Sabudana Khichdi', 'images/spicy sabudana khichdi.jpg', 'east', 'sabu.php', 'usersabu.php', 'Sago 2 cups. Peanuts 1/4 cup. Mustard seeds 1 teaspoon. Whole dry red chillies 4-5. Salt to taste. Lime juice 1 teaspoon. Ghee 3 tablespoons. Fresh coconut scraped 2 tablespoons', 'Rs. 230/bowl'),
(37, 'Bhrawa Bhindi', 'images/bhrawa bhindi.jpg', 'north', 'bhindi.php', 'userbhindi.php', 'Ladyfingers (bhindi) 500 grams. Red chilli powder 2 tablespoons. Coriander powder 2 tablespoons. Cumin powder 2 tablespoons. Dry mango powder (amchur) 2 tablespoons. Turmeric powder 1 teaspoon. Salt to taste. Oil 2 tablespoons.', 'Rs. 200/bowl'),
(38, 'Dal Makhni...', 'images/dal makhni.jpg', 'north', 'dal.php', 'userdal.php', 'Whole Urad (black lentils) â€“ Â½ cup Rajma (Kidney Beans) â€“ 1 tablespoon Jeera (Cumin Seeds) â€“ Â½ teaspoon Onions (finely chopped) â€“ Â½ cup Ginger-garlic paste â€“ 1 teaspoon Chilli powder â€“ 1 teaspoon Haldi (Turmeric powder) â€“ Â¼ teaspoon Dhania (Coriander powder) â€“ 2 teaspoon Tomato â€“ 1 large (finely chopped) Butter/ ghee â€“ 50 gms. Fresh Cream â€“ Â½ cup Salt to taste', 'Rs. 250/bowl'),
(39, 'Kadhai Paneer', 'images/kdhai paneer.jpg', 'north', 'kadhai.php', 'userkadhai.php', 'Paneer, Cream, Tomatoes, Spices, Dry mango powder (amchur) 2 tablespoons. Turmeric powder 1 teaspoon. Salt to taste. Oil 2 tablespoons.', 'Rs. 280/bowl'),
(40, 'Malai Kofta..', 'images/malai kofta.jpg', 'north', 'kofta.php', 'userkofta.php', '4 big potatoes, boiled. 250 gm paneer (cottage cheese) 50 gm maida. 1 Tbsp coriander leaves, chopped. 3 onions. 1 Tbsp ginger garlic paste. 2 tomatoes. 200 ml malai or cream.', 'Rs. 240/bowl'),
(41, 'Mix Veg..', 'images/mix veg.jpg', 'north', 'veg.php', 'userveg.php', 'Potatoes 2 medium Carrot 1 big/ 110 gms French beans 15-20/120 gms Cauliflower florets about 1 cup/about 120 gms Paneer 100 gms Green peas Â½ cup Corn kernels Â½ cup Onion 1 (100 gms) Green chili 1-2 Ginger 1 inch piece', 'Rs. 200/bowl'),
(42, 'Mushroom Matar...', 'images/mushroom matar.jpg', 'north', 'matar.php', 'usermatar.php', '2 Cups Peas (shelled) 200 Gram Mushrooms (cut as desired) 2 Tbsp Clarified butter. A pinch of Asafoetida. 1 tsp Cumin seeds. 1 Tbsp Ginger, sliced. 1/2 tsp Garam masala. 2 tsp Coriander powder.', 'Rs. 240/bowl'),
(43, 'Appam-Vada..', 'images/appam vada.jpg', 'south', 'vada.php', 'uservada.php', 'Idli batter - 3 cup. Tomato - 1 (chopped) Green peas - 1/4 cup. Capsicum - 1 (1/4 cup) grated. Green chilly - 2 (minced) Ginger - 1 inch piece (finely chopped) Salt - less than 1 tsp or as per taste. Green coriander - 2 tbsp (finely chopped)', 'Rs. 200/bowl'),
(44, 'Dosa....', 'images/dosa.jpg', 'south', 'dosa.php', 'userdosa.php', 'Rice, Black lentils, Green chilly - 2 (minced) Ginger - 1 inch piece (finely chopped) Salt - less than 1 tsp or as per taste. Green coriander - 2 tbsp (finely chopped)', 'Rs. 120/plate'),
(45, 'Goli bhajii..', 'images/goli bhajji.jpg', 'south', 'goli.php', 'usergoli.php', 'Maida, Curd, Rice flour, Onion, Coriander leaves, Coconut, Jeera, Green chillies', 'Rs. 120/plate'),
(46, 'Idli...', 'images/idli.jpg', 'south', 'idli.php', 'useridli.php', 'Black lentils, Rice, Green chilly - 2 (minced) Ginger - 1 inch piece (finely chopped) Salt - less than 1 tsp or as per taste. Green coriander - 2 tbsp (finely chopped)', 'Rs. 80/plate'),
(47, 'Pongal...', 'images/pangal.jpg', 'south', 'pongal.php', 'userpongal.php', 'Rice, Milk, Jaggery, Coconut pieces or Mung bean, Pepper or Tamarind', 'Rs. 150/bowl'),
(48, 'Uttapam...', 'images/uttapam.jpg', 'south', 'uttapam.php', 'useruttapam.php', 'Rice flour, White lentils, Green chilly - 2 (minced) Ginger - 1 inch piece (finely chopped) Salt - less than 1 tsp or as per taste. Green coriander - 2 tbsp (finely chopped)', 'Rs. 140/plate'),
(49, 'Bhakri...', 'images/bhakri.jpg', 'west', 'bhakri.php', 'userbhakri.php', ' Wheat flour1 1/2 cup,  Oil2 tbsp  Ghee, 1 1/2 tbsp for smearing,   Water, 1/2 cup for kneading,   Salt, 1 tsp or to taste ', 'Rs. 120/plate'),
(50, 'Veg Biryani..', 'images/biryani.jpg', 'west', 'biryani.php', 'userbiryani.php', '1 tsp cumin seeds. 1/4 cup onions-grated. 1 tsp garlic-ginger paste. 2 cups mixed vegetables-finely chopped. 2 tsp coriander powder. 1/2 tsp garam masala. 1/2 tsp turmeric powder. 2 tsp salt or to taste', 'Rs. 180/plate'),
(51, 'Chakri...', 'images/chakri.jpg', 'west', 'chakri.php', 'userchakri.php', 'Rice flour, Urad dal flour (Black gram), Salt, Oil', 'Rs. 160/plate'),
(52, 'Dhokla....', 'images/dhokla.jpg', 'west', 'dhokla.php', 'userdhokla.php', 'Rice, Chickpeas, Green chilly - 2 (minced) Ginger - 1 inch piece (finely chopped) Salt - less than 1 tsp or as per taste. Green coriander - 2 tbsp (finely chopped)', 'Rs. 120/plate'),
(53, 'Fried Chola...', 'images/fried chola.jpg', 'west', 'chola.php', 'userchola.php', '1 15 oz can of chickpeas (kable chana, Garbanzo beans) 3 tablespoons oil Pinch of asafetida (Hing) 1 teaspoon cumin seeds 1 tablespoon Besan (gram flour) (available in Indian grocery stores) 1 large tomato chopped 1 teaspoon ginger paste 1 teaspoon chopped green chilies 2 teaspoons coriander powder 1/2 teaspoon turmeric', 'Rs. 230/bowl'),
(54, 'Pav Bhaji...', 'images/pav bhaji.jpg', 'west', 'pav.php', 'userpav.php', 'Pav, Potatoes, Tomatoes, Onions, Mixed vegetables, Green chilly - 2 (minced) Ginger - 1 inch piece (finely chopped) Salt - less than 1 tsp or as per taste. Green coriander - 2 tbsp (finely chopped)', 'Rs. 120/plate'),
(55, 'Aloo-Tikki..', 'images/aloo tikki.jpg', 'snacks', 'tikki.php', 'usertikki.php', '4 potatoes, boiled and peeled. 1/2 tsp coriander seeds. 1/2 tsp pepper. 1/2 tsp cumin. 1/2 cup peas, boiled. Sea salt to taste. 2 tsp ginger paste. 100 ml refined oil.', 'Rs. 60/plate'),
(56, 'Chilli-Potato..', 'images/chili.jpg', 'snacks', 'chilli.php', 'userchilli.php', '2.5 cups potatoes (3 medium aloo) 2 tbsp corn starch / corn flour (or unbleached organic plain flour) Â¼ tsp red chilli powder or paprika powder. salt as needed. â…“ cup oil or as needed. 1 to 1.5 tbsp. garlic. 1 medium sliced onion. Â½ to Â¾ cup capsicum / bell peppers.', 'Rs. 120/plate'),
(57, 'Noodles...', 'images/chowmin.jpg', 'snacks', 'noodles.php', 'usernoodles.php', '150g pack medium egg noodle. 1 tbsp vegetable oil. 2Â½ cm piece fresh ginger. Ginger. jin-jer. ... 2 garlic cloves, finely chopped. 1 large carrot. Carrot. ka-rot. ... 1 yellow pepper, deseeded and thinly sliced. 100g mangetout. Mangetout. monj-too. ... 2 spring onions. Spring onion. sp-ring un-yun.', 'Rs. 100/plate'),
(58, 'Dahi-Bhalla..', 'images/dahi bhalla.jpg', 'snacks', 'dahi.php', 'userdahi.php', '400 gm moong dal. 1 cup urad dal. 2 tsp zeera. 1 tsp chironji. Oil, for deep frying. For the khatti chutney: 1 cup coriander leaves.', 'Rs. 80/plate'),
(59, 'Gol-Gappe...', 'images/gappa.jpg', 'snacks', 'gol.php', 'usergol.php', 'Flour, Spiced water, Onions, Potatoes, Chickpeas', 'Rs. 50/plate'),
(60, 'Paneer-Tikka...', 'images/paneer tikka.jpg', 'snacks', 'tikka.php', 'usertikka.php', 'Paneer, Spices, Salt - less than 1 tsp or as per taste. Green coriander - 2 tbsp (finely chopped)', 'Rs. 120/plate'),
(61, 'Burger...', 'images/burger.jpg', 'snacks', 'burger.php', 'userburger.php', '1 teaspoon mustard (regular or Dijon) 1 teaspoon Worcestershire sauce 1 small onion, finely grated 1 clove garlic, minced 1â„2 teaspoon salt 1â„2 teaspoon pepper 1 lb medium ground beef', 'Rs. 50/piece'),
(62, 'Raj-Chokri...', 'images/raj kachori.jpg', 'snacks', 'raj.php', 'userraj.php', 'Potato - 2-3 (boiled) (chopped) Moong or channa - 1/2 cup (boiled) Small Papadi made of maida - 20. Dahi pakodi - 10. Curd - 400 gms. ( 2 cup) (whisked) Cumin seeds - 2 tea spoon (roast and grind) Black pepper - 1 tea spoon. Red chilli powder - 1 tea spoon.', 'Rs. 100/plate'),
(63, 'Spring-roll...', 'images/spring.jpg', 'snacks', 'roll.php', 'userroll.php', 'Glass noodles 100 g. Carrot 2 each, roughly grated. White cabbage 200 g, finely grated. Bean sprout 200 g. Garlic 2 cloves, finely chopped. Sesame oil 30 ml. Soy sauce To taste. Spring roll pastry 20 sheets.', 'Rs. 120/plate'),
(64, 'blackcurrant..', 'images/blackcurrant.jpg', 'shake', 'blackcurrant.php', 'userblackcurrant.php', '1/2 cup Milk, 11/2 cup Black Currant ice cream, 3 tablespoon Black Currant crush, 1/4 cup Black Grapes ((save 2-3 pcs for garnishing), Crushed ice', 'Rs. 120/-'),
(65, 'Butterscotch...', 'images/butterscotch.jpg', 'shake', 'butterscotch.php', 'userbutterscotch.php', 'Cold Milk â€“ 2 cups, Butterscotch Essence â€“ few drops, Sugar â€“ 3 to 4 tblspn, Butterscotch Sauce â€“ 2 tblspn (Recipe here), Icecubes as needed, Icecream as needed', 'Rs. 110/-'),
(66, 'Choclate...', 'images/choclate.jpg', 'shake', 'choclates.php', 'userchoclates.php', '2 cups milk. 2 tablespoons chocolate syrup. 2 cups vanilla ice cream. 3â„4 teaspoon vanilla extract.', 'Rs. 120/-'),
(67, 'Rose-Shake..', 'images/rose.jpg', 'shake', 'rose.php', 'userrose.php', 'Milk â€“ 2 cup, Vanilla Icecream â€“ 2 big scoops, For Syrup: Sugar â€“ Â¾  cup / 150 gms, Water â€“ 100 ml, Rose Milk Essence â€“ 1 tblspn', 'Rs. 150/-'),
(68, 'Lemon...', 'images/lemon.jpg', 'shake', 'lemon.php', 'userlemon.php', '1â„2fresh lemon (or more, depending on your taste, size of lemon or how juicy it is), 12 ounces distilled water (may use tap water if you prefer that), 1â„4 cup granulated sugar', 'Rs. 100/-'),
(69, 'Vanila...', 'images/vanila.jpg', 'shake', 'vanila.php', 'uservanila.php', '4 cups quality vanilla ice cream, 2 teaspoons vanilla extract, 8 tablespoons sugar, 2 cups milk, less for thicker milkshakes.', 'Rs. 140/-'),
(70, 'Sh@kes...', 'images/shake.jpg', 'beverages', 'shake.php', 'usershake.php', 'Wallpaper', 'Wallpaper'),
(71, 'Hard Drink...', 'images/wine.jpg', 'beverages', 'hard.php', 'userhard.php', 'Wallpaper', 'Wallpaper'),
(72, 'Fruit Wine..', 'images/fruit wine.jpg', 'drink', 'fruitwine.php', 'userfruitwine.php', 'Gervin No.9 is a yeast particularly suitable for making quality white wines (German style).  Will metabolise up to 30% of malic acid. Good for dealing with fruits with high malic acid levels, such as gooseberries and rhubarb.', 'Rs. 350/-'),
(73, 'Beer..', 'images/beer.jpg', 'drink', 'beer.php', 'userbeer.php', 'Grain mostly malted barley but also other grains, Hops grown in many different varieties, Yeast responsible for fermentation - based on style-specific strains, Water accounts for up to 95 percent of beers content.', 'Rs. 250/-'),
(74, 'Rum...', 'images/rum.jpg', 'drink', 'rum.php', 'userrum.php', 'Rum is a distilled alcoholic beverage made from sugarcane byproducts, such as molasses or honeys, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels', 'Rs. 350/-'),
(75, 'Champion...', 'images/shampion.jpg', 'drink', 'champion.php', 'userchampion.php', ' 2 dashes Angostura bitters, 1/3 oz Cognac, 3 oz Champagne, 1 Sugar cube', 'Rs. 300/-'),
(76, 'Vodka....', 'images/vodka.jpg', 'drink', 'vodka.php', 'uservodka.php', 'Lemon Drop Shots. This alcoholic shot a combination of vodka and lemon juice, tastes just like the classic, Sparkling Sea Breeze, French Martini, Grilled Gazpacho Bloody Mary, Hard Lemonade.', 'Rs. 400/-'),
(77, 'Whisky...', 'images/whisky.jpg', 'drink', 'whisky.php', 'userwhisky.php', 'Old Fashioned, Whiskey sour, Ginger highball, Spiked Southern tea, Bourbon vanilla shake, Mint julep, Irish coffee', 'Rs. 350/-'),
(78, 'Coffee..', 'images/wcoff.jpg', 'beverages', 'coffee.php', 'usercoffee.php', 'Wallpaper', 'Wallpaper'),
(79, 'Cold-Coffee...', 'images/cold.jpg', 'coffee', 'cold.php', 'usercold.php', '4 teaspoons instant coffee granules. 1 cup boiling water. Sugar substitute equivalent to 4 teaspoons sugar, optional. 1 cup fat-free milk. 4 teaspoons chocolate syrup. 1/8 teaspoon vanilla extract. Ice cubes.', 'Rs. 120/cup'),
(80, 'Cappuccino-Coffee..', 'images/cappuccino.jpg', 'coffee', 'cappuccino.php', 'usercappuccino.php', 'The former follows the traditional idea of the cappuccino being prepared by â…“ espresso, â…“ steamed milk and â…“ milk foam. The latter follows the same recipe, but is served more often in smaller cups, and the textured milk', 'Rs. 150/cup'),
(81, 'Hot-Coffee..', 'images/hot.jpg', 'coffee', 'hot.php', 'userhot.php', '1 cup milk. 3 teaspoon sugar (or more for a sweeter drink) 1/8 teaspoon vanilla extract. 3 teaspoon pure cocoa. 1 teaspoon instant coffee. 1 teaspoon brown sugar. Pinch of salt.', 'Rs. 100/cup');

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE IF NOT EXISTS `decoration` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(200) NOT NULL,
  `d_image` varchar(300) NOT NULL,
  `d_descri` varchar(200) NOT NULL,
  `d_ref` varchar(200) NOT NULL,
  `d_uref` varchar(200) NOT NULL,
  `d_price` varchar(200) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`d_id`, `d_name`, `d_image`, `d_descri`, `d_ref`, `d_uref`, `d_price`) VALUES
(1, 'Entry Gate', 'images/6.jpg', 'deco', 'gate.php', 'usergate.php', 'Rs. 4500/-'),
(2, 'Mandap', 'images/4.jpg', 'deco', 'mandap.php', 'usermandap.php', 'Rs. 12000/-'),
(5, 'Corpor@te Deco..', 'images/2.jpg', 'deco', 'cordeco.php', 'usercordeco.php', 'Rs. 6500/-'),
(6, 'Baloon Deco..', 'images/10.jpg', 'deco', 'baloon.php', 'userbaloon.php', 'Rs. 3500/-'),
(7, 'Flower Deco...', 'images/1.jpg', 'deco', 'flower.php', 'userflower.php', 'Rs. 10,000/-'),
(8, 'Royal Decor...', 'images/3.jpg', 'deco', 'royal.php', 'userroyal.php', 'Rs. 12000/-');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `e_id` int(200) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(200) NOT NULL,
  `e_image` varchar(250) NOT NULL,
  `e_descri` varchar(1000) NOT NULL,
  `e_ref` varchar(200) NOT NULL,
  `e_uref` varchar(200) NOT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`e_id`, `e_name`, `e_image`, `e_descri`, `e_ref`, `e_uref`) VALUES
(1, 'Wedding...', 'images/1789.jpg', 'Wedding Info...', 'wedding.php', 'userwedding.php'),
(2, 'Roy@l Wedding....', 'images/royal.jpg', 'Roy@l Wedding....', 'royalwedding.php', 'userroyalwedding.php'),
(3, 'Eng@gement...', 'images/engage.jpg', 'Engagement Information..........', 'engagement.php', 'userengagement.php'),
(4, 'Reception...', 'images/re.jpg', 'Reception Information.....', 'reception.php', 'userreception.php'),
(5, 'S@ngeet...', 'images/Sangeet1.jpg', 'S@ngeet Information.......', 'sangeet.php', 'usersangeet.php'),
(6, 'Mehendi', 'images/mehndi.jpg', 'Mehendi Information.........', 'mehendi.php', 'usermehendi.php'),
(7, 'Annivers@ry', 'images/anii.jpeg', 'Anniversary Information.......', 'anniversary.php', 'useranniversary.php'),
(8, 'Fresher P@rty...', 'images/img5639e23173afd.jpg', 'Fresher Party Information........', 'fresher.php', 'userfresher.php'),
(9, 'Cockt@il...', 'images/397309.jpg', 'Cocktail Party Information........', 'cocktail.php', 'usercocktail.php'),
(10, 'F@shion Show...', 'images/041213_950_1.jpg', 'Fashion Show Info...', 'fashion.php', 'userfashion.php'),
(11, 'Semin@r...', 'images/1.jpg', 'Seminar Information........', 'seminar.php', 'userseminar.php'),
(12, 'St@ge Show', 'images/Musical-night-stage-show.jpg', 'Stage Show Information................', 'stage.php', 'userstage.php'),
(13, 'Bechol@r P@rty...', 'images/Aloft-Party_HD.jpg', 'Becholar Party Information.........', 'becholar.php', 'userbecholar.php'),
(14, 'Birthd@y P@rty', 'images/443976.jpg', 'Birthday Party Information.............', 'birthday.php', 'userbirthday.php'),
(15, 'Get to G@ther...', 'images/gettogether new.JPG', 'Get to Gether Party Information........', 'gather.php', 'usergather.php');

-- --------------------------------------------------------

--
-- Table structure for table `event_manager`
--

CREATE TABLE IF NOT EXISTS `event_manager` (
  `em_id` int(11) NOT NULL AUTO_INCREMENT,
  `em_username` varchar(200) NOT NULL,
  `em_name` varchar(200) NOT NULL,
  `em_password` varchar(200) NOT NULL,
  `em_email` varchar(200) NOT NULL,
  `em_mob` varchar(200) NOT NULL,
  `em_address` varchar(200) NOT NULL,
  PRIMARY KEY (`em_id`),
  UNIQUE KEY `em_username` (`em_username`,`em_password`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `event_manager`
--

INSERT INTO `event_manager` (`em_id`, `em_username`, `em_name`, `em_password`, `em_email`, `em_mob`, `em_address`) VALUES
(1, 'aayush2410', 'Aayush Gupta ', 'gupta', 'gupta24aayush@gmail.com', '9719654203', 'Kharkhoda, Meeut');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `f_username` varchar(200) NOT NULL,
  `f_email` varchar(200) NOT NULL,
  `f_subject` varchar(200) NOT NULL,
  `f_feedback` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_username`, `f_email`, `f_subject`, `f_feedback`) VALUES
('Anurag7869', 'anuragjain7869@gmail.com', 'wedding', 'Very good decoration and catering.....');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE IF NOT EXISTS `price` (
  `p_card` varchar(200) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_number` varchar(200) NOT NULL,
  `p_cvv` varchar(200) NOT NULL,
  `p_date` date NOT NULL,
  `p_amout` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`p_card`, `p_name`, `p_number`, `p_cvv`, `p_date`, `p_amout`) VALUES
('Debit Card', 'Anurag', '1234567812345678', '234', '2020-06-01', '255135'),
('Debit Card', 'Varsha', '1234123412341234', '123', '2021-10-01', '255135'),
('Debit Card', 'Appy', '3213213213213211', '432', '2020-03-01', '255135'),
('Credit Card', 'Appy', '4321432143214321', '786', '2020-05-01', '255135'),
('Debit Card', 'Arpita Srivastava', '4321786912345678', '738', '2022-05-01', '255135'),
('Debit Card', 'qqq', '1234567812345678', '123', '2020-03-01', '255135');

-- --------------------------------------------------------

--
-- Table structure for table `signupinfo`
--

CREATE TABLE IF NOT EXISTS `signupinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cpassword` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `city` varchar(200) NOT NULL,
  `mobno` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `signupinfo`
--

INSERT INTO `signupinfo` (`id`, `username`, `firstname`, `lastname`, `Email`, `password`, `cpassword`, `dob`, `city`, `mobno`, `time`) VALUES
(6, 'Anurag7869', 'Anurag', 'Jain', 'anuragjain7869@gmail.com', 'anu7869', 'anu7869', '1994-08-12', 'Meerut', '9536230187', '2018-04-18 05:00:19'),
(7, 'aayush2410', 'Aayush', 'Gupta', 'gupta24aayush@gmail.com', 'aayush24', 'aayush24', '1996-10-24', 'Meerut', '9719654203', '2018-03-07 06:50:34'),
(8, 'Shipra123', 'Shipra', 'Sharma', 'shipra@gmail.com', '123456', '123456', '1996-04-21', 'Mumbai', '7409631880', '2017-11-27 05:03:09'),
(9, 'Saurabh123', 'Saurabh', 'Sharma', 'saurabh009@gmail.com', 'saurabh009', 'saurabh009', '1990-09-12', 'Meerut', '9410228346', '2018-03-07 06:41:04'),
(10, 'varsha123', 'Varsha', 'Singh', 'varsha@gmail.com', '123456', '123456', '1994-10-01', 'Meerut', '7417324124', '2018-03-07 07:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE IF NOT EXISTS `venue` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(200) NOT NULL,
  `v_image` varchar(300) NOT NULL,
  `v_address` varchar(200) NOT NULL,
  `v_descri` varchar(200) NOT NULL,
  `v_ref` varchar(200) NOT NULL,
  `v_uref` varchar(200) NOT NULL,
  `v_price` varchar(200) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`v_id`, `v_name`, `v_image`, `v_address`, `v_descri`, `v_ref`, `v_uref`, `v_price`) VALUES
(6, 'Garden City Resort', 'images/11111.jpg', 'Rohta Flyover, N.H.- 58, Meerut ', 'venue', 'city.php', 'usercity.php', 'Rs. 2,50,000/-'),
(7, 'Red Carpet', 'images/22222.jpg', 'Vasundhra, Ghaziabad', 'venue', 'red.php', 'userred.php', 'Rs. 5,50,000/-'),
(8, 'Serven-Evelen Resort', 'images/33333.jpg', 'Garh Road, Meerut', 'venue', 'seven.php', 'userserven.php', 'Rs. 3,50,000/-'),
(10, 'Samrat-Heavens Hotel', 'images/55555.jpg', 'Pallavpuram, Meerut', 'venue', 'samrat.php', 'usersamrat.php', 'Rs. 4,75,000/-');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
