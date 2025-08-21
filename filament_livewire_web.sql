-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2025 at 06:16 AM
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
-- Database: `filament_livewire_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `category_id`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Wonyoung', 1, '01K359BJJPJAFGQKJPPP3QAYCG.jpeg', '<p>Jang Wonyoung is a South Korean singer-songwriter, dancer, model, and MC under Starship Entertainment. She is best known as the lead vocalist, lead dancer and visual of the girl group IVE.</p><p><br></p><p>Wonyoung was only thirteen years old when she joined the popular survival show Produce 48 as the youngest trainee. Her visuals and unique charms captivated the viewers from the start.</p><p><br></p><p>She earned the most votes and became the center of the project group IZ*ONE, debuting with them on October 29, 2018. After three years of promotions, the group officially disbanded on April 29, 2021. Following this, Wonyoung continued to train while pursuing solo activities.</p><p><br></p><p>In early November 2021, Starship Entertainment revealed that Wonyoung and her former IZ*ONE groupmate Yujin would join their new girl group. Wonyoung made her debut as an IVE member on December 1, 2021.</p>', 1, '2025-08-20 20:04:31', '2025-08-20 20:04:31'),
(2, 'Cristiano Ronaldo', 1, '01K359E56G57BJT2E2SSPA71ZA.jpeg', '<p>Cristiano Ronaldo dos Santos Aveiro, born 5 February 1985, is a Portuguese professional footballer who plays as a forward for and captains both Saudi Pro League club Al-Nassr and the Portugal national team.</p><p><br></p><p>Nicknamed CR7, he is widely regarded as one of the greatest players in history, and has won numerous individual accolades throughout his career, including five Ballon d\\\'Or awards, a record three UEFA Men\\\'s Player of the Year Awards, four European Golden Shoes, and was named five times the world\\\'s best player by FIFA.</p><p><br></p><p>He has won 34 trophies in his career, including five UEFA Champions Leagues and the UEFA European Championship. He holds the records for most goals (140) and assists (42) in the Champions League, goals (14) and assists (8) in the European Championship, and most international appearances (221) and international goals (138).</p><p><br></p><p>He is one of only five players to have scored 100 goals with three different clubs. He has made over 1,200 professional career appearances, the most by an outfield player, and has scored over 900 official senior career goals for club and country, making him the top goalscorer of all time.</p>', 1, '2025-08-20 20:05:55', '2025-08-20 20:05:55'),
(3, 'Spider-Man Meme', 4, '01K359F4ZA3SRCGNDM2Z6JKY3P.jpeg', '<p>Spider-Man meme is a meme template that is often used when there are two or more characters have some similar appearances. When they met for the first time, they definitely would be confused and said like \"Hey, why do you look like me?\". Of course, they are not copycats. Similarity in appearance most likely are accidental.</p>', 1, '2025-08-20 20:06:28', '2025-08-20 20:06:28'),
(4, 'The Hulk', 4, '01K359KQSAJN7YXJT1AFFJ72XJ.jpeg', '<p>Dr. Robert Bruce Banner, Ph.D. a.k.a. the Hulk, is an American theoretical physicist famous for his work in the fields of nuclear physics and gamma radiation. He was recruited by General Thaddeus E. \"Thunderbolt\" Ross and the U.S. Army to develop the first Gamma Bomb. During its first live test, he was bombarded with a massive dose of gamma rays while saving Rick Jones, a teenager who had made his way onto the test site.</p><p><br></p><p>He was mutated into a green behemoth, the living personification of anger that was fueled by pure physical strength and would come to be known as the near-mindless \"Incredible Hulk\". Fearful of the damage that the Hulk could inflict, as well as fleeing from the military, he went on the run.</p><p><br></p><p>In the years that followed, Banner became a loner, occasionally joining together with other heroes, but more often than not struggling to be left alone. He was a founding member of the group of heroes known as the Avengers, \"Earth\'s Mightiest Heroes\", as well as a founding member of the group of outsider heroes known as the Defenders, but would not remain with either group for too long (although, admittedly, his time with the Defenders was much longer than his time with the Avengers was).</p><p><br></p><p>Over the years, the Hulk\'s personality changed drastically, owing to Banner\\\'s undiagnosed dissociative identity disorder. At times intelligent, at other times savage, the one constant in the Hulk\'s existence was his quest for solitude and peace in a world that would not leave him alone.</p>', 1, '2025-08-20 20:08:58', '2025-08-20 20:08:58'),
(5, 'The Rock & Vin Diesel', 2, '01K359P6W6N8HA5R0K4AA874D3.jpeg', '<p>The Rock and Vin Diesel are actors in the Fast &amp; Furious franchise. Their real names are Dwayne Johnson and Mark Sinclair, respectively. Either of these bald actors occasionally form a duo with another bald actor named Jason Statham.</p><p><br></p><p>Their relationship has been publicly tumultuous. A significant feud erupted in 2016 during the filming of The Fate of the Furious, when Dwayne Johnson called out an unnamed male co-star for unprofessional behavior in a since-deleted Instagram post. It was widely speculated and later confirmed that this post was directed at Vin Diesel.</p><p><br></p><p>Over the following years, the tension between them remained, with both actors making indirect and sometimes direct comments about each other in interviews. This led to Dwayne Johnson not appearing in the ninth installment of the main Fast &amp; Furious saga and instead focusing on the spin-off movie Hobbs &amp; Shaw.</p><p><br></p><p>Despite the public falling out, there have been attempts and hints at reconciliation. Vin Diesel publicly appealed for Johnson\\\'s return to the franchise for Fast X. While Johnson initially dismissed this as \"manipulation\", he did make a cameo appearance in Fast X.</p><p><br></p><p>Most recently, at the 2025 Golden Globes, the two had a brief but notable interaction when Vin Diesel said \"Hey, Dwayne\" from the stage. This moment sparked renewed speculation about the status of their relationship. While some fans interpreted it as a sign of lingering tension, Vin Diesel later posted a throwback photo of himself and Johnson with the caption \"All love Always…\", suggesting a possible reconciliation.</p>', 1, '2025-08-20 20:10:19', '2025-08-20 20:10:19'),
(6, 'Alita: Battle Angel', 2, '01K359QXMEJ4ZHC92X5ABRX2KR.jpeg', '<p>Alita: Battle Angel is a 2019 American cyberpunk action film based on Yukito Kishiro\'s manga series Battle Angel Alita. It was directed by Robert Rodriguez, produced by James Cameron and Jon Landau, and written by Cameron and Laeta Kalogridis.</p><p><br></p><p>Using performance-capture CGI animation, Rosa Salazar stars as Alita, a cyborg who awakens in a new body without memory of her past and sets out to uncover her destiny. Many of the supporting roles, played by Christoph Waltz, Jennifer Connelly, Mahershala Ali, Ed Skrein, Jackie Earle Haley and Keean Johnson, used live actors.</p><p><br></p><p>It was released on 5 February 2019 in Indonesia, 14 February 2019 in USA, and the soundtrack is Swan Song by Dua Lipa.</p>', 1, '2025-08-20 20:11:15', '2025-08-20 20:11:15'),
(7, 'Jett', 3, '01K359V4074DHWT0JR0QZZXDB3.jpeg', '<p>\"<em>Representing her home country of South Korea, Jett\'s agile and evasive fighting style lets her take risks no one else can. She runs circles around every skirmish, cutting enemies before they even know what hit them.</em>\"</p><p><br></p><p>A radiant from Seoul, South Korea, Han Sunwoo had her life forever changed by one person - her counterpart from Omega Earth. As a chef in her early life at the family restaurant, one day Han was shot and hunted down by Ω-Jett outside the restaurant. In the ensuing fight, a \"freak storm\" was caused as a result of the wind-powered abilities of the two Hans that all but destroyed the restaurant. α-Han was forced to flee the scene soon after she made it out of the encounter.</p><p><br></p><p>Later on, Han would be recruited by the VALORANT Protocol, becoming the Jett of her own world. While working for the Protocol however, Ω-Jett arrived once more and caused a catastrophic incident in Venice that destroyed part of the city. With the general population however being completely oblivious about how their world had divided from Omega after First Light, when authorities investigated footage and found someone with α-Jett\\\'s exact resemblance at the scene, it was her they issued an arrest warrant for. Though α-Jett had not had anything to do with the mission, the rest of the world now believed that she was a threat to them. She couldn\'t explain that it wasn\'t her to those she know outside of VALORANT, who were left feeling disgusted, horrified, and ashamed at her, and Jett was forced to go on the run once more.</p><p><br></p><p>Unable to reveal any info associated with the VALORANT Protocol and unable to convince anyone of her innocence in a population that knows nothing of alternate Earths, to the rest of Alpha Jett remains one of its most dangerous radiants. Such a judgement had forced Jett to use disguises whenever she would go out, but more recently the frustration has become too much for Jett to care anymore whether she\'s spotted or not. Most of the Protocol don\'t have too much to say about their counterparts, but for Jett, what her own has put her through has made it become deeply personal to her.</p>', 1, '2025-08-20 20:13:00', '2025-08-20 20:13:00'),
(8, 'Yor Forger', 2, '01K359WHQ6R3KTY54PWXBRG7V7.jpeg', '<p>Yor Forger is the tritagonist of the SPY x FAMILY series. While she works as an ordinary office clerk at Berlint City Hall, she also leads a secret life as a Garden assassin under the code name \"Thorn Princess\".</p><p><br></p><p>Needing a cover to continue her job as an assassin, Yor enters a fake marriage with Loid Forger with the intention of fulfilling both of their respective goals and subsequently becomes the adoptive mother of his daughter, Anya.</p><p><br></p><p>She is 27 years old and is seven years older than her younger brother, Yuri Briar. Her real name is Yor Briar.</p>', 1, '2025-08-20 20:13:47', '2025-08-20 20:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Entertainment', 'entertainment', 1, '2025-08-20 18:19:20', '2025-08-20 18:19:20'),
(2, 'Television', 'television', 1, '2025-08-20 18:19:30', '2025-08-20 18:19:30'),
(3, 'Games', 'games', 1, '2025-08-20 18:19:41', '2025-08-20 18:19:41'),
(4, 'Comics', 'comics', 1, '2025-08-20 18:19:54', '2025-08-20 18:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Who are the three of the most famous bald actors in Fast & Furious', '<p>They are Dwayne Johnson, Mark Sinclair, and Jason Statham.</p>', 1, '2025-08-20 18:21:17', '2025-08-20 18:21:17'),
(2, 'Which Portuguese footballer is called \"Mr. Champions League\"?', '<p>Cristiano Ronaldo</p>', 1, '2025-08-20 18:21:45', '2025-08-20 18:21:45'),
(3, 'Which character in SPY x FAMILY that works as an ordinary office clerk and is secretly an assassin?', '<p>Yor Forger</p>', 1, '2025-08-20 18:22:29', '2025-08-20 18:22:29'),
(4, 'Which radiant in VALORANT that is from Seoul, South Korea?', '<p>Jett</p>', 1, '2025-08-20 18:22:59', '2025-08-20 18:22:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_08_21_004903_create_permission_tables', 2),
(6, '2025_08_21_005807_create_categories_table', 3),
(7, '2025_08_21_010017_create_faqs_table', 4),
(8, '2025_08_21_010728_create_articles_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_role', 'web', '2025-08-20 17:49:40', '2025-08-20 17:49:40'),
(2, 'view_any_role', 'web', '2025-08-20 17:49:40', '2025-08-20 17:49:40'),
(3, 'create_role', 'web', '2025-08-20 17:49:40', '2025-08-20 17:49:40'),
(4, 'update_role', 'web', '2025-08-20 17:49:40', '2025-08-20 17:49:40'),
(5, 'delete_role', 'web', '2025-08-20 17:49:40', '2025-08-20 17:49:40'),
(6, 'delete_any_role', 'web', '2025-08-20 17:49:40', '2025-08-20 17:49:40'),
(7, 'view_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(8, 'view_any_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(9, 'create_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(10, 'update_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(11, 'restore_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(12, 'restore_any_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(13, 'replicate_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(14, 'reorder_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(15, 'delete_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(16, 'delete_any_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(17, 'force_delete_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(18, 'force_delete_any_article', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(19, 'view_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(20, 'view_any_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(21, 'create_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(22, 'update_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(23, 'restore_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(24, 'restore_any_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(25, 'replicate_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(26, 'reorder_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(27, 'delete_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(28, 'delete_any_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(29, 'force_delete_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(30, 'force_delete_any_category', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(31, 'view_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(32, 'view_any_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(33, 'create_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(34, 'update_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(35, 'restore_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(36, 'restore_any_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(37, 'replicate_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(38, 'reorder_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(39, 'delete_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(40, 'delete_any_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(41, 'force_delete_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(42, 'force_delete_any_faq', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(43, 'view_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(44, 'view_any_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(45, 'create_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(46, 'update_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(47, 'restore_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(48, 'restore_any_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(49, 'replicate_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(50, 'reorder_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(51, 'delete_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(52, 'delete_any_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(53, 'force_delete_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44'),
(54, 'force_delete_any_user', 'web', '2025-08-20 18:13:44', '2025-08-20 18:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-08-20 17:49:40', '2025-08-20 17:49:40'),
(2, 'member', 'web', '2025-08-20 17:53:32', '2025-08-20 17:53:32');

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
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@admin.com', NULL, '$2y$10$LsN5yZOIun81SrTZiSSqguE8lL6r4cftv9F91ctZW.B/5HEJAyG5O', NULL, '2025-08-20 17:36:01', '2025-08-20 17:53:57'),
(2, 'Aku Siapa', 'akusiapa@siapa.com', NULL, '$2y$10$rSW86wgYvUQP0yZTWhR4y.RUawVRuA2G0KyvP63VQOtVYj6SDjkSm', NULL, '2025-08-20 17:56:13', '2025-08-20 17:56:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

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
