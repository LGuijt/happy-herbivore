-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 feb 2025 om 12:43
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happy_herbivore`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`) VALUES
(1, 'Breakfast', ''),
(2, 'Lunch&Dinner', ''),
(3, 'Sides', ''),
(4, 'Snacks', ''),
(5, 'Dips', ''),
(6, 'Drinks', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `images`
--

INSERT INTO `images` (`image_id`, `file_name`, `description`) VALUES
(1, 'morning_boost', ''),
(2, 'eggcelent', ''),
(3, 'power_toast', ''),
(4, 'protein_packed', ''),
(5, 'supergreen_salad', ''),
(6, 'chickpea_wrap', ''),
(7, 'sweet_potato', ''),
(8, 'quinoa_salad', ''),
(9, 'veggie_platter', ''),
(10, 'brown_rice', ''),
(11, 'roasted_chickpeas', ''),
(12, 'trail_mix', ''),
(13, 'chia_pudding', ''),
(14, 'falafel_bites', ''),
(15, 'breadsticks', ''),
(16, 'apple_sticks', ''),
(17, 'zucchini_fries', ''),
(18, 'hummus', ''),
(19, 'avocado_dip', ''),
(20, 'yoghurt_ranch', ''),
(21, 'sriracha_mayo', ''),
(22, 'tahini_sauce', ''),
(23, 'tomato_salad', ''),
(24, 'peanut_dip', ''),
(25, 'green_smoothie', ''),
(26, 'iced_latte', ''),
(27, 'fruit_water', ''),
(28, 'berry_smoothie', ''),
(29, 'citrus_cooler', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `options`
--

INSERT INTO `options` (`id`, `product_id`, `option_name`, `option_img`) VALUES
(1, 9, 'Classic Hummus', 'hummus.png'),
(2, 9, 'Avocado Lime Dip', 'avocado_dip'),
(4, 11, 'spicy paprika', NULL),
(5, 11, 'herb', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orders`
--

CREATE TABLE `orders` (
  `order_id` int(8) NOT NULL,
  `order_status_id` int(8) NOT NULL,
  `pickup_number` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `order_products`
--

CREATE TABLE `order_products` (
  `id` int(11) NOT NULL,
  `order_id` int(8) NOT NULL,
  `product_id` int(8) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `order_status`
--

CREATE TABLE `order_status` (
  `order_status_id` int(8) NOT NULL,
  `description_en` varchar(255) NOT NULL,
  `description_nl` varchar(255) NOT NULL,
  `description_fr` varchar(255) NOT NULL,
  `description_de` varchar(255) NOT NULL,
  `description_jp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `description_en`, `description_nl`, `description_fr`, `description_de`, `description_jp`) VALUES
(1, 'Started', 'Gestart', '', '', ''),
(2, 'Placed and paid', 'Geplaatst en betaald', '', '', ''),
(3, 'Preparing', 'Aan het bereiden', '', '', ''),
(4, 'Ready for pickup', 'Klaar voor ophalen', '', '', ''),
(5, 'Picked up', 'Opgehaald', '', '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `product_id` int(8) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_id` int(8) NOT NULL,
  `name_id` int(11) NOT NULL DEFAULT 1,
  `description_id` int(11) NOT NULL DEFAULT 1,
  `price` decimal(10,2) NOT NULL,
  `kcal` int(8) NOT NULL,
  `options` tinyint(1) NOT NULL DEFAULT 0,
  `availabe` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `image_id`, `name_id`, `description_id`, `price`, `kcal`, `options`, `availabe`) VALUES
(1, 1, 1, 1, 1, 4.50, 300, 0, 0),
(2, 1, 2, 2, 2, 3.50, 250, 0, 0),
(3, 1, 3, 3, 3, 2.80, 220, 0, 0),
(4, 2, 4, 4, 4, 6.00, 450, 0, 0),
(5, 2, 5, 5, 5, 5.00, 300, 0, 0),
(6, 2, 6, 6, 6, 4.50, 400, 0, 0),
(7, 3, 7, 7, 7, 3.50, 250, 0, 0),
(8, 3, 8, 8, 8, 3.00, 200, 0, 0),
(9, 3, 9, 9, 9, 3.00, 150, 0, 0),
(10, 3, 10, 10, 10, 3.50, 300, 0, 0),
(11, 3, 11, 11, 11, 2.50, 180, 0, 0),
(12, 4, 12, 12, 12, 2.00, 200, 0, 0),
(13, 4, 13, 13, 13, 3.00, 250, 0, 0),
(14, 4, 14, 14, 14, 3.50, 220, 0, 0),
(15, 4, 15, 15, 15, 2.00, 150, 0, 0),
(16, 4, 16, 16, 16, 2.50, 100, 0, 0),
(17, 4, 17, 17, 17, 3.00, 180, 0, 0),
(18, 5, 18, 18, 18, 0.80, 70, 0, 0),
(19, 5, 19, 19, 18, 1.00, 80, 0, 0),
(20, 5, 20, 20, 18, 0.70, 50, 0, 0),
(21, 5, 21, 21, 18, 0.70, 60, 0, 0),
(22, 5, 22, 22, 18, 0.90, 90, 0, 0),
(23, 5, 23, 23, 18, 0.60, 20, 0, 0),
(24, 5, 24, 24, 18, 0.90, 100, 0, 0),
(25, 6, 25, 25, 19, 3.50, 120, 0, 0),
(26, 6, 26, 26, 20, 3.00, 90, 0, 0),
(27, 6, 27, 27, 21, 1.50, 0, 0, 0),
(28, 6, 28, 28, 22, 3.80, 140, 0, 0),
(29, 6, 29, 29, 23, 3.00, 90, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_description`
--

CREATE TABLE `product_description` (
  `id` int(11) NOT NULL,
  `description_en` varchar(255) NOT NULL,
  `description_nl` varchar(255) NOT NULL,
  `description_fr` varchar(255) NOT NULL,
  `description_de` varchar(255) NOT NULL,
  `description_jp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `product_description`
--

INSERT INTO `product_description` (`id`, `description_en`, `description_nl`, `description_fr`, `description_de`, `description_jp`) VALUES
(1, 'A blend of acai, banana, and mixed berries topped with granola, chia seeds, and coconut flakes.', 'Een mix van acai, banaan en bessen, bedekt met granola, chia zaden, en kokosvlokken', '', '', ''),
(2, 'Whole-grain wrap filled with scrambled eggs, spinach, and a light yogurt-based sauce.', 'Volkoren wrap gevuld met scrambled eggs, spinazie en een lichte yoghurt saus.', '', '', ''),
(3, 'Whole-grain toast with natural peanut butter and banana slices.', 'Volkoren toast met biologische pindakaas en plakjes banaan', '', '', ''),
(4, 'Quinoa, grilled tofu, roasted vegetables, and a tahini dressing.', 'Quinoa, gegrilde tofoe, geroosterde groenten en een tahini dressing.', '', '', ''),
(5, 'Kale, spinach, avocado, edamame, cucumber, and a lemon-olive oil vinaigrette.', 'Kool, spinazie, avocado, edamame, komkommer, en een citroen-olijfolie vinaigrette.', '', '', ''),
(6, 'Whole-grain wrap with spiced chickpeas, shredded carrots, lettuce, and hummus.', 'Volkoren wrap met pittige kikkererwten, geraspte wortels, sla en hoemoes', '', '', ''),
(7, 'Oven-baked sweet potato wedges seasoned with paprika and a touch of olive oil.', 'Zoete aardappelpartjes uit de oven, op smaak gemaakt met paprika en een beetje olijfolie', '', '', ''),
(8, 'Mini cup of quinoa mixed with cucumber, cherry tomatoes, parsley, and lemon dressing.', 'Klein bakje met quinoa, gemixt met komkommer, cherry tomaten, peterselie en een citroen dressing', '', '', ''),
(9, 'A selection of carrot sticks, celery, cucumber slices, and cherry tomatoes served with a dip of your choice.', 'Een selectie van wortelsticks, selderij, komkommer plakjes, en cherry tomaten geserveerd met een dip naar keuze.', '', '', ''),
(10, 'A small portion of brown rice topped with steamed edamame and a drizzle of soy sauce.', 'Een kleine portie bruine rijst bedekt met gestoomde edamame en een scheutje soya saus.', '', '', ''),
(11, 'Crunchy roasted chickpeas with your choice of spicy paprika or herb seasoning.', 'Krokante, geroosterde kikkererwten op smaak gebracht met pittige paprika of kruiden.', '', '', ''),
(12, 'A mix of nuts, dried fruits, and seeds for an energy boost.', 'Een mix van noten, gedroogd fruit, en zaden voor een energie-boost', '', '', ''),
(13, 'Creamy chia pudding made with almond milk and topped with fresh fruit.', 'Romige chia pudding gemaakt met amandelmelk en bedekt met vers fruit.', '', '', ''),
(14, 'Baked falafel balls served with a dip of your choice.', 'Gebakken falafel ballen geserveerd met een dip naar keuze.', '', '', ''),
(15, 'Crisp, wholesome breadsticks perfect for pairing with hummus or salsa.', 'Krokante volkoren broodsticks perfect met hoemoes of salsa', '', '', ''),
(16, 'Baked apple slices lightly dusted with cinnamon.', 'Gebakken appelplakjes met een snufje kaneel.', '', '', ''),
(17, 'Baked zucchini sticks coated in a light breadcrumb crust.', 'Gebakken courgette sticks bedekt met een lichte broodkruimel korst.', '', '', ''),
(18, 'no description', '', '', '', ''),
(19, 'Spinach, pineapple, cucumber, and coconut water.', 'Spinazie, ananas, komkommer, en kokosvlokken', '', '', ''),
(20, 'Lightly sweetened matcha green tea with almond milk.', 'Licht gezoete matcha groene thee met amandel melk.', '', '', ''),
(21, 'Freshly infused water with a choice of lemon-mint, strawberry-basil, or cucumber-lime.', 'Vers waten ge-infuseerd met citroen-munt, aardbei-basilicum, of komkommer-limoen', '', '', ''),
(22, 'A creamy blend of strawberries, blueberries, and raspberries with almond milk.', 'Een romige mix van aardbeien, blauwe bessen en frambozen met amandelmelk.', '', '', ''),
(23, 'A refreshing mix of orange juice, sparkling water, and a hint of lime.', 'Een verfrissende mix van sinasappelsap, sprankelend water en een hint van limoen.', '', '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_name`
--

CREATE TABLE `product_name` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_nl` varchar(255) NOT NULL,
  `name_fr` varchar(255) NOT NULL,
  `name_de` varchar(255) NOT NULL,
  `name_jp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `product_name`
--

INSERT INTO `product_name` (`id`, `name_en`, `name_nl`, `name_fr`, `name_de`, `name_jp`) VALUES
(1, 'Morning Boost Smoothie Bowl', 'Ochtend Boost Smoothie Kom', '', '', ''),
(2, 'Eggcelent Wrap', 'Eggcelente Wrap', '', '', ''),
(3, 'Peanutbutter Power Toast', 'Pindakaas Power Toast', '', '', ''),
(4, 'Protein-Packed Bowl', 'Kom Vol Proteine', '', '', ''),
(5, 'Supergreen Salad', 'Super Groene Salade', '', '', ''),
(6, 'Zesty Chickpea Wrap', 'Pittige Kikkererwten Wrap', '', '', ''),
(7, 'Sweet Potato Wedges', 'Zoete Aardappel Partjes', '', '', ''),
(8, 'Quinoa Salad Cup', 'Bakje Quinoa Salade', '', '', ''),
(9, 'Mini Veggie Platter', '', '', '', ''),
(10, 'Brown Rice & Edamame Bowl', 'Kom met Bruine Rijst en Edamame', '', '', ''),
(11, 'Roasted Chickpeas (Spicy or Herb)', 'Geroosterde Kikkererwten (pittig of gekruid)', '', '', ''),
(12, 'Trail Mix Cup', '', '', '', ''),
(13, 'Chia Pudding Cup', '', '', '', ''),
(14, 'Baked Falafel Bites (4 pcs)', '', '', '', ''),
(15, 'Mini Whole-Grain Breadsticks', 'Mini Volkoren Broodsticks', '', '', ''),
(16, 'Apple & Cinnamon Chips', 'Appel Kaneel Chips', '', '', ''),
(17, 'Zucchini Fries', 'Courgette Frites', '', '', ''),
(18, 'Classic Hummus', 'Klassieke Hummus', 'Houmous Classique', '', ''),
(19, 'Avocado Lime Dip', 'Avocado Limoen Dip', '', '', ''),
(20, 'Greek Yogurt Ranch', '', '', '', ''),
(21, 'Spicy Sriracha Mayo', '', '', '', ''),
(22, 'Garlic Tahini Sauce', '', '', '', ''),
(23, 'Zesty Tomato Salsa', 'Pittige Tomaten Salsa', '', '', ''),
(24, 'Peanut Dipping Sauce', 'Pinda Dip', '', '', ''),
(25, 'Green Glow Smoothie', 'Groene Gloed Smoothie', '', '', ''),
(26, 'Iced Match Latte', '', '', '', ''),
(27, 'Fruit-Infused Water', '', '', '', ''),
(28, 'Berry Blast Smoothie', '', '', '', ''),
(29, 'Citrus Cooler', '', '', '', '');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexen voor tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexen voor tabel `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_status_id` (`order_status_id`);

--
-- Indexen voor tabel `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexen voor tabel `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `image_id` (`image_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `name` (`name_id`),
  ADD KEY `description_id` (`description_id`);

--
-- Indexen voor tabel `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product_name`
--
ALTER TABLE `product_name`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT voor een tabel `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `order_status`
--
ALTER TABLE `order_status`
  MODIFY `order_status_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT voor een tabel `product_description`
--
ALTER TABLE `product_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT voor een tabel `product_name`
--
ALTER TABLE `product_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Beperkingen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`order_status_id`);

--
-- Beperkingen voor tabel `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `order_products_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Beperkingen voor tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `images` (`image_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`name_id`) REFERENCES `product_name` (`id`),
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`description_id`) REFERENCES `product_description` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
