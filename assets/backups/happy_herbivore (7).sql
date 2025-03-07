-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 07 mrt 2025 om 14:12
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
  `name` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`, `img`) VALUES
(1, 1, 1, 'morning_boost'),
(2, 2, 2, 'chickpea_wrap'),
(3, 3, 3, 'sweet_potato'),
(4, 4, 4, 'falafel_bites'),
(5, 5, 5, 'yoghurt_ranch'),
(6, 6, 6, 'citrus_cooler');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorie_descriptions`
--

CREATE TABLE `categorie_descriptions` (
  `id` int(11) NOT NULL,
  `description_en` varchar(255) NOT NULL,
  `description_nl` varchar(255) NOT NULL,
  `description_fr` varchar(255) NOT NULL,
  `description_de` varchar(255) NOT NULL,
  `description_jp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categorie_descriptions`
--

INSERT INTO `categorie_descriptions` (`id`, `description_en`, `description_nl`, `description_fr`, `description_de`, `description_jp`) VALUES
(1, 'Start your day with our delicious breakfast options.', 'Begin jouw dag met onze heerlijke ontbijt opties.', 'Commencez votre journée avec nos délicieuses options de petit-déjeuner.', 'Beginnen Sie Ihren Tag mit unseren köstlichen Frühstücksoptionen.', 'おいしい朝食で一日を始めましょう。'),
(2, 'Enjoy a hearty lunch or dinner with our tasty dishes', 'Geniet van een stevige lunch of diner met onze smaakvolle gerechten', 'Profitez d\'un déjeuner ou d\'un dîner copieux avec nos plats savoureux', 'Genießen Sie ein herzhaftes Mittag- oder Abendessen mit unseren leckeren Gerichten', 'ボリュームたっぷりのランチやディナーをおいしいお料理とともにお楽しみください'),
(3, 'Complete your meal with our delicious side dishes.', 'Maak uw maaltijd compleet met onze heerlijke bijgerechten.', 'Complétez votre repas avec nos délicieux accompagnements.', 'Runden Sie Ihre Mahlzeit mit unseren köstlichen Beilagen ab.', 'おいしいサイドディッシュで食事を締めくくってください'),
(4, 'Enjoy a quick snack with our tasty options.', 'Geniet van een snelle snack met onze smakelijke opties.', 'Profitez d\'une collation rapide avec nos options savoureuses.', 'Genießen Sie einen schnellen Snack mit unseren leckeren Optionen.', 'おいしいオプションで軽食をお楽しみください。'),
(5, 'Enhance your meal with our delicious dips.', 'Verbeter uw maaltijd met onze heerlijke dips.', 'Agrémentez votre repas avec nos délicieuses trempettes.', 'Werten Sie Ihre Mahlzeit mit unseren köstlichen Dips auf.', '当店のおいしいディップでお食事をもっと美味しくしましょう。'),
(6, 'Quench your thirst with our refreshing drinks.', 'Les uw dorst met onze verfrissende drankjes.', 'Étanchez votre soif avec nos boissons rafraîchissantes.', 'Löschen Sie Ihren Durst mit unseren erfrischenden Getränken.', '爽やかなドリンクで喉の渇きを癒しましょう。');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorie_name`
--

CREATE TABLE `categorie_name` (
  `id` int(11) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_nl` varchar(255) NOT NULL,
  `name_fr` varchar(255) NOT NULL,
  `name_de` varchar(255) NOT NULL,
  `name_jp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categorie_name`
--

INSERT INTO `categorie_name` (`id`, `name_en`, `name_nl`, `name_fr`, `name_de`, `name_jp`) VALUES
(1, 'Breakfast', 'Ontbijt', 'Petit-déjeuner', 'Frühstück', '朝ごはん'),
(2, 'Lunch & Dinner', 'Lunch & Diner', 'Déjeuner et Dîner', 'Mittag- und Abendessen', '昼食と夕食'),
(3, 'Sides', 'Bijgerechten', 'Accompagnement', 'Einseitig', 'サイード '),
(4, 'Snacks', 'Snacks', 'l\' hors-d\'œuvre', 'Snacks', '間食'),
(5, 'Dips', 'Dips', 'Trempettes', 'Dips', 'ディップ'),
(6, 'Drinks', 'Dranken', 'Boissons', 'Getränke', '飲み物');

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
(1, 9, 'Classic Hummus', 'hummus'),
(2, 9, 'Avocado Lime Dip', 'avocado_dip'),
(4, 11, 'spicy paprika', NULL),
(5, 11, 'herb', NULL),
(6, 9, 'Greek Yogurt Ranch', 'yoghurt_ranch'),
(7, 9, 'Spicy Sriracha Mayo', 'sriracha_mayo'),
(8, 9, 'Garlic Tahini Sauce', 'tahini_sauce'),
(9, 9, 'Zesty Tomato Salsa', 'tomato_salad'),
(10, 9, 'Peanut Dipping Sauce', 'peanut_dip'),
(11, 14, 'Classic Hummus', 'hummus'),
(12, 14, 'Avocado Lime Dip', 'avocado_dip'),
(13, 14, 'Greek Yogurt Ranch', 'yoghurt_ranch'),
(14, 14, 'Spicy Sriracha Mayo', 'sriracha_mayo'),
(17, 14, 'Garlic Tahini Sauce', 'tahini_sauce'),
(18, 14, 'Zesty Tomato Salsa', 'tomato_salad'),
(19, 14, 'Peanut Dipping Sauce', 'peanut_dip'),
(20, 15, 'hummus', NULL),
(21, 15, 'salsa', NULL),
(22, 25, 'Green Glow Smoothie', 'green_smoothie'),
(23, 25, 'Berry Blast Smoothie', 'berry_smoothie');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orders`
--

CREATE TABLE `orders` (
  `order_id` int(8) NOT NULL,
  `order_status_id` int(8) NOT NULL DEFAULT 1,
  `pickup_number` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `orders`
--

INSERT INTO `orders` (`order_id`, `order_status_id`, `pickup_number`, `price`, `datetime`) VALUES
(1, 1, 1, 0.00, '0000-00-00 00:00:00'),
(2, 1, 2, 0.00, '0000-00-00 00:00:00'),
(3, 1, 3, 0.00, '2025-03-06 13:39:11'),
(4, 1, 4, 0.00, '2025-03-06 13:39:44'),
(5, 1, 5, 0.00, '2025-03-06 13:40:14'),
(6, 1, 6, 0.00, '2025-03-06 23:34:49'),
(7, 2, 7, 7.00, '2025-03-06 23:35:16'),
(8, 2, 1, 5.80, '2025-03-07 10:07:09'),
(9, 2, 2, 9.50, '2025-03-07 10:11:02'),
(10, 2, 3, 10.50, '2025-03-07 10:14:57'),
(11, 1, 4, 0.00, '2025-03-07 10:21:14'),
(12, 1, 5, 0.00, '2025-03-07 10:22:08'),
(13, 1, 6, 0.00, '2025-03-07 10:24:52'),
(14, 1, 7, 0.00, '2025-03-07 10:31:20'),
(15, 1, 8, 0.00, '2025-03-07 10:31:38'),
(16, 1, 9, 0.00, '2025-03-07 13:31:50'),
(17, 1, 10, 0.00, '2025-03-07 13:31:52');

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

--
-- Gegevens worden geëxporteerd voor tabel `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `price`) VALUES
(1, 7, 1, 0.00),
(2, 7, 1, 0.00),
(3, 7, 1, 0.00),
(4, 7, 7, 0.00),
(5, 8, 3, 0.00),
(6, 8, 9, 0.00),
(7, 9, 13, 0.00),
(8, 9, 13, 0.00),
(9, 9, 25, 0.00),
(10, 10, 2, 3.50),
(11, 10, 2, 3.50),
(12, 10, 7, 3.50),
(13, 10, 2, 3.50),
(14, 10, 2, 3.50),
(15, 10, 7, 3.50),
(16, 10, 2, 3.50),
(17, 10, 2, 3.50),
(18, 10, 7, 3.50),
(19, 10, 2, 3.50),
(20, 10, 2, 3.50),
(21, 10, 7, 3.50),
(22, 10, 2, 3.50),
(23, 10, 2, 3.50),
(24, 10, 7, 3.50),
(25, 10, 2, 3.50),
(26, 10, 2, 3.50),
(27, 10, 7, 3.50);

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
(1, 'Started', 'Gestart', '', 'Begonnen', '始まった'),
(2, 'Placed and paid', 'Geplaatst en betaald', '', 'Gepostet und bezahlt', '投稿して支払い済み'),
(3, 'Preparing', 'Aan het bereiden', '', 'Vorbereitung', '準備中'),
(4, 'Ready for pickup', 'Klaar voor ophalen', '', 'Bereit zur Abholung', '受け取り準備完了'),
(5, 'Picked up', 'Opgehaald', '', 'Abgeholt', '取得済み');

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
(9, 3, 9, 9, 9, 3.00, 150, 1, 0),
(10, 3, 10, 10, 10, 3.50, 300, 0, 0),
(11, 3, 11, 11, 11, 2.50, 180, 1, 0),
(12, 4, 12, 12, 12, 2.00, 200, 0, 0),
(13, 4, 13, 13, 13, 3.00, 250, 0, 0),
(14, 4, 14, 14, 14, 3.50, 220, 1, 0),
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
(25, 6, 25, 25, 19, 3.50, 120, 1, 0),
(26, 6, 26, 26, 20, 3.00, 90, 0, 0),
(27, 6, 27, 27, 21, 1.50, 0, 0, 0),
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
(1, 'A blend of acai, banana, and mixed berries topped with granola, chia seeds, and coconut flakes', 'Een mix van acai, banaan en bessen, bedekt met granola, chia zaden, en kokosvlokken', 'Un mélange d\'açaï, de banane et de baies mélangées garni de granola, de graines de chia et de flocons de noix de coco.', 'Eine Mischung aus Acai, Banane und Beeren, garniert mit Müsli, Chiasamen und Kokosflocken', 'アサイー、バナナ、ベリーのミックスにグラノーラ、チアシード、ココナッツフレークをトッピング'),
(2, 'Whole-grain wrap filled with scrambled eggs, spinach, and a light yogurt-based sauce', 'Volkoren wrap gevuld met roerei, spinazie en een lichte yoghurt saus', 'Wrap de grains entiers rempli d\'œufs brouillés, d\'épinards et d\'une sauce légère à base de yaourt.', 'Vollkorn-Wrap gefüllt mit Rührei, Spinat und einer leichten Joghurtsauce', 'スクランブルエッグ、ほうれん草、軽いヨーグルトソースを詰めた全粒粉ラップ'),
(3, 'Whole-grain toast with natural peanut butter and banana slices', 'Volkoren toast met biologische pindakaas en plakjes banaan', 'Pain grillé aux grains entiers avec beurre d\'arachide naturel et tranches de banane.', 'Vollkorntoast mit Bio-Erdnussbutter und Bananenscheiben', 'オーガニックピーナッツバターとバナナスライスを添えた全粒粉トースト'),
(4, 'Quinoa, grilled tofu, roasted vegetables, and a tahini dressing', 'Quinoa, gegrilde tofu, geroosterde groenten en een tahini dressing', 'Quinoa, tofu grillé, légumes rôtis et vinaigrette au tahini.', 'Quinoa, gegrillter Tofu, geröstetes Gemüse und ein Tahini-Dressing', 'キヌア、焼き豆腐、ロースト野菜、タヒニドレッシング'),
(5, 'Kale, spinach, avocado, edamame, cucumber, and a lemon-olive oil vinaigrette', 'Kool, spinazie, avocado, edamame, komkommer, en een citroen-olijfolie vinaigrette', 'Chou frisé, épinards, avocat, edamame, concombre et vinaigrette au citron et à l\'huile d\'olive.', 'Kohl, Spinat, Avocado, Edamame, Gurke und eine Zitronen-Olivenöl-Vinaigrette', 'キャベツ、ほうれん草、アボカド、枝豆、きゅうり、レモンオリーブオイルビネグレット'),
(6, 'Whole-grain wrap with spiced chickpeas, shredded carrots, lettuce, and hummus', 'Volkoren wrap met pittige kikkererwten, geraspte wortels, sla en hoemoes', 'Wrap aux grains entiers avec pois chiches épicés, carottes râpées, laitue et houmous.', 'Vollkorn-Wrap mit gewürzten Kichererbsen, geraspelten Karotten, Salat und Hummus', 'スパイスの効いたひよこ豆、千切りにんじん、レタス、フムスを添えた全粒粉ラップ'),
(7, 'Oven-baked sweet potato wedges seasoned with paprika and a touch of olive oil.', 'Zoete aardappelpartjes uit de oven, op smaak gemaakt met paprika en een beetje olijfolie', 'Quartiers de patates douces cuits au four assaisonnés de paprika et d\'une touche d\'huile d\'olive.', 'Süßkartoffelspalten aus dem Ofen, gewürzt mit Paprika und etwas Olivenöl', 'オーブンで焼いたサツマイモのウェッジにパプリカと少量のオリーブオイルをかけて味付けする'),
(8, 'Mini cup of quinoa mixed with cucumber, cherry tomatoes, parsley, and lemon dressing', 'Klein bakje met quinoa, gemixt met komkommer, cherry tomaten, peterselie en een citroen dressing', 'Mini tasse de quinoa mélangé avec du concombre, des tomates cerises, du persil et une vinaigrette au citron.', 'Kleine Schüssel Quinoa, gemischt mit Gurke, Kirschtomaten, Petersilie und Zitronendressing', 'キヌアの小鉢、キュウリ、ミニトマト、パセリ、レモンドレッシングを混ぜたもの'),
(9, 'A selection of carrot sticks, celery, cucumber slices, and cherry tomatoes served with a dip of your choice', 'Een selectie van wortelsticks, selderij, komkommer plakjes, en cherry tomaten geserveerd met een dip naar keuze', 'Une sélection de bâtonnets de carottes, de céleri, de tranches de concombre et de tomates cerises servis avec une trempette de votre choix.', 'Eine Auswahl an Karottensticks, Sellerie, Gurkenscheiben und Kirschtomaten serviert mit einem Dip Ihrer Wahl', 'にんじんスティック、セロリ、きゅうりのスライス、チェリートマトをお好みのディップとともにお召し上がりください'),
(10, 'A small portion of brown rice topped with steamed edamame and a drizzle of soy sauce', 'Een kleine portie bruine rijst bedekt met gestoomde edamame en een scheutje soya saus', 'Une petite portion de riz brun garnie d\'edamame cuit à la vapeur et d\'un filet de sauce soja.', 'Eine kleine Portion brauner Reis, garniert mit gedämpftem Edamame und einem Schuss Sojasauce', '少量の玄米に蒸し枝豆と少量の醤油をトッピング'),
(11, 'Crunchy roasted chickpeas with your choice of spicy paprika or herb seasoning', 'Krokante, geroosterde kikkererwten op smaak gebracht met pittige paprika of kruiden', 'Pois chiches croustillants rôtis avec votre choix d\'assaisonnement au paprika épicé ou aux herbes.', 'Knusprig geröstete Kichererbsen mit würzigem Paprika- oder Kräutergeschmack', 'スパイシーなパプリカやハーブで味付けした、カリカリにローストしたひよこ豆'),
(12, 'A mix of nuts, dried fruits, and seeds for an energy boost', 'Een mix van noten, gedroogd fruit, en zaden voor een energie-boost', 'Un mélange de noix, de fruits secs et de graines pour un regain d\'énergie.', 'Ein Mix aus Nüssen, Trockenfrüchten und Samen für einen Energieschub', 'ナッツ、ドライフルーツ、種子のミックスでエネルギーを補給'),
(13, 'Creamy chia pudding made with almond milk and topped with fresh fruit', 'Romige chia pudding gemaakt met amandelmelk en bedekt met vers fruit', 'Pouding crémeux au chia préparé avec du lait d\'amande et garni de fruits frais.', 'Cremiger Chiapudding aus Mandelmilch, garniert mit frischem Obst', 'アーモンドミルクで作ったクリーミーなチアプディングに新鮮なフルーツをトッピング'),
(14, 'Baked falafel balls served with a dip of your choice', 'Gebakken falafel ballen geserveerd met een dip naar keuze', 'Boulettes de falafel cuites au four, servies avec une trempette de votre choix.', 'Frittierte Falafelbällchen, serviert mit einem Dip Ihrer Wahl', 'お好みのディップを添えた揚げファラフェルボール'),
(15, 'Crisp, wholesome breadsticks perfect for pairing with hummus or salsa', 'Krokante volkoren broodsticks perfect met hoemoes of salsa', 'Des bâtonnets de pain croustillants et sains, parfaits pour accompagner du houmous ou de la salsa.', 'Knusprige Vollkornbrotstangen, perfekt mit Hummus oder Salsa', 'フムスやサルサにぴったりの全粒粉パンスティック'),
(16, 'Baked apple slices lightly dusted with cinnamon', 'Gebakken appelplakjes met een snufje kaneel', 'Tranches de pommes cuites au four légèrement saupoudrées de cannelle.', 'Gebackene Apfelscheiben mit einer Prise Zimt', 'シナモンをひとつまみ加えた焼きリンゴスライス'),
(17, 'Baked zucchini sticks coated in a light breadcrumb crust', 'Gebakken courgette sticks bedekt met een lichte broodkruimel korst', 'Bâtonnets de courgettes cuits au four, enrobés d\'une croûte de chapelure légère.', 'Gebackene Zucchinisticks umhüllt mit einer leichten Semmelbröselkruste', '軽くパン粉をまぶした焼きズッキーニスティック'),
(18, 'no description', 'geen beschrijving', 'pas de description', 'kein erschreibung', '説明はありません'),
(19, 'Spinach, pineapple, cucumber, and coconut water.', 'Spinazie, ananas, komkommer, en kokosvlokken', 'Épinards, ananas, concombre et eau de coco.', 'Spinat, Ananas, Gurke und Kokosflocken', 'ほうれん草、パイナップル、キュウリ、ココナッツフレーク'),
(20, 'Lightly sweetened matcha green tea with almond milk', 'Licht gezoete matcha groene thee met amandel melk', 'Thé vert matcha légèrement sucré au lait d\'amande.', 'Leicht gesüßter Matcha-Grüntee mit Mandelmilch', 'ほんのり甘めの抹茶とアーモンドミルク'),
(21, 'Freshly infused water with a choice of lemon-mint, strawberry-basil, or cucumber-lime.', 'Vers waten ge-infuseerd met citroen-munt, aardbei-basilicum, of komkommer-limoen', 'Eau fraîchement infusée avec un choix de citron-menthe, fraise-basilic ou concombre-citron vert.', 'Frisches Wasser mit Zitrone-Minze, Erdbeer-Basilikum oder Gurke-Limette', 'レモンミント、ストロベリーバジ​​ル、キュウリライムを加えた新鮮な水'),
(22, 'A creamy blend of strawberries, blueberries, and raspberries with almond milk', 'Een romige mix van aardbeien, blauwe bessen en frambozen met amandelmelk', 'Un mélange crémeux de fraises, de myrtilles et de framboises avec du lait d\'amande.', 'Eine cremige Mischung aus Erdbeeren, Heidelbeeren und Himbeeren mit Mandelmilch', 'イチゴ、ブルーベリー、ラズベリーとアーモンドミルクのクリーミーなミックス'),
(23, 'A refreshing mix of orange juice, sparkling water, and a hint of lime', 'Een verfrissende mix van sinasappelsap, sprankelend water en een hint van limoen', 'Un mélange rafraîchissant de jus d\'orange, d\'eau pétillante et d\'un soupçon de citron vert.', 'Eine erfrischende Mischung aus Orangensaft, Mineralwasser und einem Hauch Limette', 'オレンジジュース、スパークリングウォーター、そしてほんの少しのライムの爽やかなブレンド');

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
(1, 'Morning Boost Smoothie Bowl', 'Ochtend Boost Smoothie Kom', 'Bol de smoothie boostant pour le matin', 'Morgenschub Smoothie Schüssel', '朝ブーストスムージーボウル'),
(2, 'Eggcelent Wrap', 'Eggcelente Wrap', 'l\'oeuf corse wrap', 'Eggcelentische Wrap', '「オム」しろいラップ'),
(3, 'Peanutbutter Power Toast', 'Pindakaas Power Toast', 'Toast énergétique au beurre de cacahuète', 'Erdnussbutter Power Toast', 'ピーナッツバターパワートースト'),
(4, 'Protein-Packed Bowl', 'Kom Vol Proteine', 'Bol riche en protéines', 'Schüssel voll Protein', 'タンパク質たっぷりのボウル'),
(5, 'Supergreen Salad', 'Super Groene Salade', 'Super Salad Verte', 'Super Grüne Salat', 'とても緑のサラダ'),
(6, 'Zesty Chickpea Wrap', 'Pittige Kikkererwten Wrap', 'Wrap aux pois chiches acidulés', 'Würziger Kichererbsen-Wrap', '辛いひよこ豆のラップ'),
(7, 'Sweet Potato Wedges', 'Zoete Aardappel Partjes', 'Quartiers de patates douces', 'Süßkartoffelspalten', 'サツマイモのウェッジ'),
(8, 'Quinoa Salad Cup', 'Bakje Quinoa Salade', 'Salade de quinoa en coupe', 'Schüssel Quinoa-Salat', 'キヌアサラダボウル'),
(9, 'Mini Veggie Platter', 'Kleine Vegetarische Schotel', 'Mini plateau de légumes', 'Kleines Vegetarisches Schüssel', '小さな野菜の盛り合わせ'),
(10, 'Brown Rice & Edamame Bowl', 'Kom met Bruine Rijst en Edamame', 'Bol de riz brun et d\'edamame', 'Schüssel mit Brauner Reis und Edamame', '玄米と枝豆の丼'),
(11, 'Roasted Chickpeas (Spicy or Herb)', 'Geroosterde Kikkererwten (pittig of gekruid)', 'Pois chiches rôtis (épicés ou aux herbes)', 'Geröstete Kichererbsen (scharf oder gewürzt)', 'ローストひよこ豆（辛いまたは味付け）'),
(12, 'Trail Mix Cup', 'Gemixte Nootjes', 'Coupe de mélange montagnard', 'Gemischte Nüsse', 'ミックスナッツ'),
(13, 'Chia Pudding Cup', 'Chia Pudding Beker', 'Coupe de pudding au chia', 'Chia Pudding Becher', 'チアプリンカップ'),
(14, 'Baked Falafel Bites (4 pcs)', 'Gebakken Falafel Hapjes (4 stks)', 'Bouchées de falafel cuites au four (4 pièces)', 'Gebackene Falafel-Häppchen (4stk)', '焼きファラフェル (4個)'),
(15, 'Mini Whole-Grain Breadsticks', 'Mini Volkoren Broodstokken', 'Mini gressins aux céréales complètes', 'Mini-Vollkornbrot-Sticks', '小さいな全粒粉パンスティック'),
(16, 'Apple & Cinnamon Chips', 'Appel Kaneel Chips', 'Chips de pomme et de cannelle', 'Apfel-Zimt Chips', 'りんごシナモンチップス'),
(17, 'Zucchini Fries', 'Courgette Frietjes', 'Frites de courgettes', 'Zucchini-Pommes', 'ズッキーニフライ'),
(18, 'Classic Hummus', 'Klassieke Hummus', 'Houmous Classique', 'Hummus-Klassiker', 'クラシックフムス'),
(19, 'Avocado Lime Dip', 'Avocado Limoen Dip', 'Trempette avocat-citron vert', 'Avocado-Limetten-Dip', 'アボカドライムディップ'),
(20, 'Greek Yogurt Ranch', 'Griekse Yoghurt Ranch', 'Ranch au yaourt grec', 'Griechische Joghurt Ranch', 'ギリシャヨーグルトランチ'),
(21, 'Spicy Sriracha Mayo', 'Pittige Sriracha Mayo', 'Mayonnaise épicée à la sriracha', 'Scharfe Sriracha Mayo', '辛いシラチャマヨネーズ'),
(22, 'Garlic Tahini Sauce', 'Knoflook-tahinsaus', 'Sauce tahini à l\'ail', 'Knoblauch-Tahini-Sauce', 'ガーリックタヒニソース'),
(23, 'Zesty Tomato Salsa', 'Pikante Tomaten Salsa', 'Salsa de tomates piquante', 'Scharfe Tomatensalsa', 'スパイシートマトサルサ'),
(24, 'Peanut Dipping Sauce', 'Pinda Dip', 'Trempette aux arachides', 'Erdnussdip', 'ピーナッツディップ'),
(25, 'Smoothie', 'Smoothie', 'Smoothie', 'Smoothie', '緑ピカピカスムージー'),
(26, 'Iced Matcha Latte', 'IJskoude Matcha Latte', 'Match Latte glacé', 'Eisgekühlter Matcha Latte', 'アイス抹茶ラテ'),
(27, 'Fruit-Infused Water', 'Fruitwater', 'Eau infusée aux fruits', 'Mit Früchten angereichertes Wasser', 'フルーツ入りウォーター'),
(28, 'Berry Blast Smoothie', 'Bessen Blast Smoothie', 'Smoothie aux baies', 'Beeren-Blast-Smoothie', 'ベリーブラストスムージー'),
(29, 'Citrus Cooler', 'citruskoeler', 'Refroidisseur d\'agrumes', 'Zitruskühler', 'シトラスクーラー');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `name` (`name`),
  ADD KEY `description` (`description`);

--
-- Indexen voor tabel `categorie_descriptions`
--
ALTER TABLE `categorie_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `categorie_name`
--
ALTER TABLE `categorie_name`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT voor een tabel `categorie_descriptions`
--
ALTER TABLE `categorie_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `categorie_name`
--
ALTER TABLE `categorie_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT voor een tabel `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT voor een tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
-- Beperkingen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`name`) REFERENCES `categorie_name` (`id`),
  ADD CONSTRAINT `categories_ibfk_2` FOREIGN KEY (`description`) REFERENCES `categorie_descriptions` (`id`);

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
