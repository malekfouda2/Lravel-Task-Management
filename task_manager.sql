-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 03:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `task_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Test comment by malek fouda', 1, 1, '2024-11-19 22:52:01', '2024-11-19 22:52:01');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_11_204423_create_tasks_table', 1),
(6, '2024_11_11_204432_create_comments_table', 1),
(7, '2024_11_11_204439_create_attachments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'open',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_to` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `due_date`, `status`, `user_id`, `assigned_to`, `created_at`, `updated_at`) VALUES
(1, 'Dignissimos cupiditate non et qui nobis.', 'In quis et molestias ut quas. Possimus ex cupiditate odio. Aut totam nemo non sequi perspiciatis. Ut voluptatum facere accusantium ut dolorem.', '2024-12-08', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(2, 'Similique doloremque eius facere eum autem.', 'Totam id dolorem deserunt ea. Vel porro temporibus dolorem est iure quod impedit. Doloribus voluptatem quae ut mollitia temporibus velit enim.', '2024-11-24', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(3, 'Nisi voluptatem voluptatibus saepe nisi corporis consequuntur molestiae omnis.', 'Amet assumenda voluptas iste vel voluptates in. Sint in dolorum maxime est repudiandae qui delectus occaecati. Voluptatibus molestiae molestiae autem accusamus. Natus sunt laborum hic alias fugit.', '2024-11-24', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(4, 'Voluptas est dolore nobis saepe vitae ea aliquid.', 'Possimus quis ea error eos cum. Aut odit natus illo rerum exercitationem rerum. Quia quaerat voluptates eos ratione et dolorem. A magnam eum labore cupiditate.', '2024-12-11', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(5, 'Veritatis qui qui aut molestias quo provident.', 'Vero commodi non tempora sed fugit. Quisquam eum natus omnis explicabo repellat.', '2024-12-03', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(6, 'Quibusdam neque voluptatem et minima.', 'Repellat quo enim ipsa excepturi quibusdam corrupti eos nostrum. Ipsa error eum minima est voluptas et hic vitae. Ad fugit suscipit id vel est.', '2024-11-24', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(7, 'Repellendus quod libero nesciunt omnis mollitia nihil deleniti eos.', 'Maxime sed ducimus eaque dignissimos eum est. Officia voluptas dolorem optio id corrupti ab. Rem similique autem vel velit. Iure saepe dolores exercitationem eius in quia perspiciatis.', '2024-11-30', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(8, 'Ipsam corporis autem fugit ipsum nam.', 'Aliquam voluptates excepturi in non cumque. Dolores officiis soluta molestias architecto iste saepe repellendus. Autem quis sapiente magni tempora. Laboriosam voluptates ut expedita est officiis facilis ad.', '2024-11-20', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(9, 'Rerum et ut ut labore qui.', 'Quis minima non qui et accusamus autem quas. At libero cum accusamus.', '2024-11-25', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(10, 'Incidunt maiores id laudantium ab minus suscipit qui rerum.', 'Et sint hic esse unde. Praesentium eius qui totam quis. Perferendis atque est alias. Rerum ipsa consectetur non impedit in ex odio.', '2024-12-02', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(11, 'Excepturi optio et ut praesentium dolor voluptate impedit.', 'Qui vel quasi sed aut doloribus repellendus nihil. Dolore aliquid aut sint fugit incidunt maxime veritatis quia. Consequatur sunt et nostrum natus sed magni.', '2024-11-26', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(12, 'Et possimus in tenetur exercitationem.', 'Impedit minus beatae quis recusandae consectetur impedit in. Reiciendis quisquam praesentium nihil eaque. Saepe et qui omnis occaecati ut quam iste est. Necessitatibus harum officia unde officiis.', '2024-11-28', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(13, 'Placeat odio fugiat blanditiis velit et rem.', 'Velit qui nihil maxime reiciendis delectus qui. Asperiores ex ratione possimus possimus consequatur earum. Aut odio quasi mollitia. Provident qui esse dolores iste necessitatibus saepe repellendus.', '2024-11-24', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(14, 'Qui modi voluptate qui voluptatem et.', 'Ipsum assumenda minima cum velit voluptate atque. Aut dolorem voluptatibus rem blanditiis. Sequi id est sed optio. Quia laudantium mollitia molestiae est nemo pariatur quia.', '2024-12-01', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(15, 'Harum ut modi aliquam quis cupiditate vitae.', 'Et voluptatum ut sequi officia qui. Sit dignissimos eos velit vero quia magni. Autem aliquid corrupti cupiditate dolores sint est voluptatem.', '2024-11-30', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(16, 'Ut dicta provident dolorem eum ut.', 'Ea et voluptatem qui molestiae doloremque dolorem ut. Eveniet et omnis consectetur nisi vel eaque quia. Praesentium velit deserunt eius qui.', '2024-11-29', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(17, 'Tempora ut voluptas ipsa quis expedita porro.', 'Consequatur voluptatibus est tempore dolore explicabo beatae. Est ipsam laboriosam aut impedit qui mollitia illum delectus. Odio quae illo error rerum quod molestiae. Optio sint quisquam cum. Aut minus dolores consectetur eius in sunt dolores.', '2024-11-22', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(18, 'Aut nostrum velit et asperiores.', 'Vero ad iste nihil similique quam ut aperiam. Error deleniti sed ea omnis. Eveniet repellat autem dignissimos iure reprehenderit qui enim.', '2024-12-06', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(19, 'Enim autem quia enim itaque quam ea.', 'Laboriosam at qui in quos eius eius quo. Qui est omnis ut ullam eum et. Consectetur enim dolorum similique ut.', '2024-11-25', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(20, 'Iusto et numquam sed voluptas ad.', 'Rem voluptate delectus vitae perferendis. Sequi corporis et repellat similique et sequi optio. Non cumque nemo nihil tempora soluta non. Magni facere assumenda neque corrupti voluptates voluptas. Unde dolore quis explicabo asperiores consequatur.', '2024-11-26', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(21, 'Velit qui eaque inventore nobis aspernatur.', 'Nostrum tempora tempore qui voluptatem. Ullam cupiditate natus et corporis quis debitis. Qui earum dolores et in. Veritatis neque et magni accusantium.', '2024-11-19', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(22, 'Et natus nam eos quas.', 'Rerum facilis sint error quidem aut accusantium. Hic quis quibusdam vel natus voluptas dolor assumenda labore. Omnis laudantium porro id asperiores eos ullam nemo. Dolorem nam quia quasi et voluptate iure.', '2024-11-23', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(23, 'Et earum minima odio omnis et.', 'Aut dignissimos et et aut et. Sed qui ut ut est. Omnis error quisquam quia at.', '2024-11-19', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(24, 'Molestiae quasi est nesciunt quia ratione odit.', 'Quam quod qui doloribus quis omnis quae deleniti quidem. Odio magnam eveniet voluptates molestias et velit velit. Quod et eaque amet qui eius.', '2024-11-22', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(25, 'Eum aut quos itaque repellat repellendus et.', 'Non facere reiciendis doloremque vel. Veniam quas voluptas qui perspiciatis assumenda. Consequuntur veritatis et dolores iusto voluptas rem.', '2024-11-19', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(26, 'Sit libero alias fugit accusamus distinctio eum doloribus error.', 'Impedit eaque rerum officiis illo reiciendis. Quis consequuntur omnis repellat.', '2024-11-29', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(27, 'Voluptatem voluptatem quae voluptatem eos occaecati.', 'Optio perspiciatis quos eos voluptate incidunt quia. Sit quam id minima nihil quibusdam repudiandae earum dolores. Delectus non blanditiis corrupti reprehenderit dolores aut.', '2024-12-07', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(28, 'Ab ipsam sunt eius rem.', 'Consequatur quibusdam ut ut voluptate quos quam iusto molestiae. Saepe ea consectetur iusto ea quos. Tempora similique consequatur illo voluptate ipsa voluptatem aspernatur voluptatem. Modi saepe incidunt velit fugit neque earum.', '2024-12-04', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(29, 'Expedita tenetur animi ex soluta.', 'Omnis neque dicta nihil et quis repellendus iste. Consequatur voluptatem inventore repellendus vel excepturi quo rerum. Rerum deleniti et enim dolores cumque iure.', '2024-12-07', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(30, 'Et magni nobis nisi ipsam.', 'Saepe nam et provident perspiciatis et necessitatibus occaecati. Doloribus dolor quis tempore consectetur enim. Nesciunt vel enim voluptate quidem.', '2024-12-10', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(31, 'Quia excepturi molestiae qui nobis molestiae atque quas.', 'Totam aliquam itaque sit quia eum eveniet quia. Provident voluptatem ea sint repellat. Ab consequatur facilis quam asperiores. Saepe quidem ut qui quia voluptatem unde.', '2024-11-25', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(32, 'Et ut unde temporibus amet quod eveniet occaecati similique.', 'Tenetur laborum nemo incidunt. Quia adipisci sint officiis. Vitae praesentium officiis qui eveniet non et id.', '2024-12-11', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(33, 'Perspiciatis consequatur omnis labore sed consequatur autem aliquid deleniti.', 'Laudantium eius vero aut explicabo laudantium hic aut. Similique delectus et libero quam iure illo. Enim voluptatem voluptas et aliquid voluptate sit.', '2024-11-26', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(34, 'Ducimus ea sint porro quae aspernatur est qui.', 'Nostrum et tempora quis tempore eligendi. Et nisi amet itaque qui molestiae. Error voluptatum omnis facilis natus.', '2024-11-19', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(35, 'Repellendus repudiandae illum odit quia.', 'Perferendis nesciunt quam consequuntur maiores. Sed expedita unde excepturi. Ipsum magni quaerat voluptate exercitationem quidem aut. Optio cum quod doloremque dolorem.', '2024-12-01', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(36, 'Sed quis recusandae sit voluptatem voluptatibus et cum unde.', 'Aut officiis autem placeat consequatur ad. Magnam iusto exercitationem expedita et officiis consequuntur. Distinctio natus voluptatem voluptatibus suscipit voluptatem doloribus. Et alias consequuntur quia officiis consequatur. Eveniet perspiciatis vel rerum et.', '2024-11-20', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(37, 'Quis sit sunt et asperiores ut.', 'Mollitia voluptate eaque placeat facere quod occaecati. Molestiae provident sit qui at voluptates voluptatem reprehenderit. Fugiat aut dolorum optio delectus ut minus tempore. Ullam totam ratione et sed ratione aut.', '2024-11-29', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(38, 'Eos et molestiae quod occaecati enim sit.', 'Illo ratione eos officia nulla numquam ipsa. Iusto rerum sunt placeat rerum. Reiciendis culpa eos non eius laudantium necessitatibus deserunt ad. Cumque vel enim aut voluptas cum ut soluta.', '2024-12-07', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(39, 'Illum vel qui sunt qui consequatur.', 'Saepe commodi sit qui possimus. Tenetur provident laudantium id quas beatae provident alias officiis.', '2024-12-07', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(40, 'Sunt praesentium ea autem iste.', 'Qui nulla autem a asperiores autem. Fuga animi fuga et et necessitatibus sunt. Labore rerum autem voluptas cum eos harum. Occaecati placeat omnis repellendus occaecati alias est.', '2024-12-05', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(41, 'Temporibus repellendus dignissimos voluptatem quasi rem.', 'Molestiae sed quae quia sequi eos sunt. Tenetur qui animi voluptatem ut repudiandae rerum. Dolorum vero qui neque accusantium sed. Fuga maiores eaque sint exercitationem ex illum magni est.', '2024-11-21', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(42, 'Neque voluptatem fugiat laudantium ratione perferendis asperiores ut.', 'Velit tenetur quibusdam libero earum voluptatem perspiciatis ad. Et fuga tenetur ipsum rerum ea odio et. Magnam et dicta eos.', '2024-12-09', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(43, 'Dolores culpa sequi veniam ut.', 'Eius nam dolor dolor qui. Sed tenetur ut accusamus id. Distinctio eum eaque et earum exercitationem soluta. Aut est consequatur recusandae repellat.', '2024-11-29', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(44, 'Ut omnis quibusdam quasi.', 'Voluptatibus sint vel tempore quae tempore explicabo. Quia sit quibusdam aliquam provident corporis itaque. Itaque sit sequi nihil non quas nobis natus.', '2024-12-01', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(45, 'Rerum voluptatem ut sed non totam voluptatibus quos.', 'Aut cupiditate consequatur nulla ipsum eos. Eos placeat rerum quaerat. Quia vel voluptatem ab laborum. Est architecto beatae sit sunt assumenda aspernatur adipisci.', '2024-12-01', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(46, 'Aliquam incidunt nam expedita et qui rem.', 'Voluptatibus consectetur vitae asperiores quae corporis ut asperiores. Quia exercitationem expedita rerum quaerat. Velit incidunt ullam est.', '2024-11-29', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(47, 'Et voluptate dolorum harum veritatis ipsum repellat non eius.', 'Architecto similique dolor vero sit. Explicabo natus esse similique sint alias. Veniam expedita sed qui qui dignissimos rem. Id sapiente ab ipsa ut.', '2024-12-01', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(48, 'Doloremque est numquam vel earum.', 'Aut repudiandae officia tenetur nisi quasi dolor id. Recusandae quod esse nemo porro.', '2024-11-28', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(49, 'Dolorum officiis cum quaerat facilis omnis omnis non.', 'Reprehenderit numquam inventore assumenda vel est consequatur. Et ut earum et laboriosam doloribus et voluptas.', '2024-12-03', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(50, 'Veritatis sed magnam quos quaerat enim omnis qui.', 'Atque eius aut a dignissimos quaerat nulla neque. Voluptate dolore cupiditate in velit. Suscipit aut dicta nam vitae consequatur voluptate error rerum. Natus deleniti suscipit temporibus ea alias.', '2024-11-28', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(51, 'Suscipit nisi ea necessitatibus et quam tempora.', 'Vero quam sit saepe vero quia voluptatem. Corrupti possimus cumque perspiciatis voluptates cupiditate temporibus sit magni. In totam voluptas sint consectetur sequi.', '2024-12-07', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(52, 'Labore qui et quod in magnam saepe sed.', 'Dolorem tenetur fuga sunt iste nisi quasi non. Laborum modi recusandae aliquam reprehenderit. A repellendus repudiandae quo. Sed ea veritatis exercitationem sed.', '2024-12-07', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(53, 'Et suscipit aliquam nostrum.', 'Ut voluptas quis exercitationem voluptas rerum voluptate cum. Quibusdam consequatur veritatis non assumenda fuga. Quo officiis ipsam eaque. Asperiores vero inventore tenetur impedit. Asperiores nihil sint voluptatem suscipit aut inventore.', '2024-11-22', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(54, 'Cumque quo ab voluptas in aut earum velit.', 'Sint ab magnam illo temporibus. Aut cupiditate debitis voluptatem quidem omnis eum. Corporis vitae architecto quia cupiditate. Nihil quisquam et deserunt et.', '2024-12-02', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(55, 'Nihil laborum corrupti libero.', 'Aliquam tempora maiores sapiente magni vitae placeat. Minima animi dignissimos nam neque maiores. Repudiandae accusantium iure ut dolores porro. Est nesciunt nam non est ut reprehenderit maxime.', '2024-12-04', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(56, 'Saepe sint labore ullam et atque blanditiis reprehenderit.', 'Et atque necessitatibus voluptatem porro explicabo et qui. Voluptate dolore in possimus quia perferendis voluptatibus consectetur. Sit expedita quo quos sed. Modi facere deserunt amet officiis quas et sequi.', '2024-11-25', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(57, 'Dolores sit laudantium vel distinctio dicta ut et.', 'Veritatis consequuntur in neque sit ducimus. Amet illo voluptas quam autem similique soluta sint. Harum aut nesciunt animi aut nihil.', '2024-11-25', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(58, 'Quis ea nisi vitae excepturi labore.', 'Distinctio iste non quae delectus laborum. Quia laudantium excepturi non dolorum. Eligendi dolore temporibus consequatur consequatur veritatis rerum. Molestiae eum aperiam ea eius.', '2024-11-24', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(59, 'Et pariatur nihil est non.', 'Quis quo facere et ex impedit temporibus. Mollitia aut eveniet minus similique at. Blanditiis ut maiores repudiandae veritatis sint quo necessitatibus.', '2024-11-29', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(60, 'Dignissimos enim autem ab repellendus nesciunt adipisci.', 'Aspernatur repellat non et odio. Consequuntur ullam sunt deleniti ut quidem non. Laudantium a provident perspiciatis numquam nisi. Ullam et et sed natus sed et expedita. Cumque nam nam cupiditate occaecati necessitatibus at.', '2024-12-03', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(61, 'Alias accusamus et perferendis dolorum officia sint explicabo.', 'Molestiae sunt aut harum id corporis molestias. Cum ut repudiandae est unde culpa autem sapiente. Quae iure velit cupiditate aliquam et quam dolor.', '2024-12-01', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(62, 'Fugiat dolores voluptatem commodi rerum.', 'Voluptatum ad vel perferendis error amet tenetur qui sunt. Earum labore cumque quis aliquid qui. Ipsam numquam cupiditate blanditiis aut.', '2024-12-04', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(63, 'Alias minus eius ex hic adipisci.', 'Impedit dolores iusto laboriosam libero. Autem nostrum deserunt quod voluptatem et et. Delectus voluptatem et voluptatem neque fugiat. Illo vel similique enim enim. Hic iusto quo est necessitatibus modi.', '2024-12-02', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(64, 'Ut nulla ut mollitia atque.', 'Harum qui at quam. Id itaque provident aut laudantium voluptas consequuntur dolorem. Molestias dolorum dolore sit libero minus nam velit.', '2024-12-07', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(65, 'Alias est voluptatem et soluta temporibus sed.', 'Ea unde recusandae aut ut consequatur. Placeat et repellendus enim ut et magnam molestiae consequuntur. Fugiat cumque rerum sit qui minus molestiae.', '2024-12-09', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(66, 'Illum eligendi beatae eligendi.', 'Maxime et sunt occaecati rerum deleniti voluptate recusandae. Ullam velit et deleniti asperiores quisquam error voluptate. Alias veritatis sed deleniti tenetur placeat accusantium eum perspiciatis.', '2024-11-25', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(67, 'Dolorum asperiores reiciendis tenetur perspiciatis voluptatem.', 'Magni dolor ea minus sint facere neque. Sed sint numquam placeat deleniti atque neque error facere. Dolor voluptas atque voluptas sed aut accusamus.', '2024-12-04', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(68, 'Sunt ut ratione quo possimus cum nemo maiores quia.', 'Praesentium eius qui impedit porro nobis ex. Mollitia quibusdam excepturi debitis cum. Laborum fuga sapiente ut.', '2024-12-02', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(69, 'Et exercitationem aliquam praesentium ipsa facilis.', 'Eligendi enim nisi laborum quod. Velit porro perferendis qui officia est et eius velit. Non officia earum praesentium et. Nesciunt omnis aut omnis doloremque dolores voluptatibus dolorem.', '2024-11-26', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(70, 'Ducimus porro minima aut libero voluptatem sapiente ducimus deserunt.', 'Nam sint dolorum nisi soluta id aut. Non dicta molestias est. Rerum corporis molestiae distinctio id officia.', '2024-12-04', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(71, 'Quo laborum voluptatem laborum.', 'Ipsa dolore et nesciunt quia molestiae ipsum eveniet. Possimus dicta ut mollitia quaerat. Quae qui asperiores consequatur cum. Nobis amet nisi aut omnis mollitia explicabo est.', '2024-11-26', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(72, 'Vel vitae quas fuga impedit sunt sapiente deleniti.', 'Sequi magnam dignissimos non quas pariatur reprehenderit perspiciatis. Neque quo beatae magni perspiciatis id. Totam doloremque dolores id atque.', '2024-12-11', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(73, 'Sed blanditiis veniam esse ut explicabo corporis a veritatis.', 'Esse labore consequuntur nulla odit facere quam. Vel autem voluptatem ducimus. Odit maxime commodi iste. Error fugit accusantium et sint adipisci maxime itaque. Totam dicta maiores nisi rem neque placeat.', '2024-11-22', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(74, 'Libero et nisi a pariatur dolorum voluptatem.', 'Similique asperiores omnis explicabo id harum. Commodi debitis fuga minima qui veniam. Ut enim necessitatibus voluptates laudantium quas.', '2024-12-03', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(75, 'Eaque est enim reiciendis blanditiis.', 'Quasi placeat et qui molestias laboriosam aut rerum. Fugiat minima rerum ut. Non qui perspiciatis maiores quae. Doloribus sint ducimus ea doloribus itaque veritatis omnis.', '2024-11-19', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(76, 'Consequatur temporibus odit qui nemo.', 'Fuga qui rerum animi aut sit labore animi. Consectetur eaque qui accusamus natus eligendi consequuntur sequi. Recusandae quos facere sint et voluptatem. Consequatur excepturi minima incidunt.', '2024-12-02', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(77, 'Mollitia sint ut quia laboriosam.', 'Ea est sed distinctio asperiores doloremque. Et quia consequatur veniam maiores atque consequatur. Minus non dignissimos voluptatem dolorum perferendis fuga. Esse esse quam reprehenderit voluptatem.', '2024-12-10', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(78, 'Provident provident et incidunt suscipit dolore.', 'Voluptatibus est numquam ut deserunt ut dolore veniam nam. Laudantium in rerum iusto repellat. Enim iusto modi eum sunt.', '2024-12-09', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(79, 'Voluptates sint deserunt eos blanditiis quisquam repellendus adipisci.', 'Distinctio natus labore provident quia iste est sunt. At fuga nihil dolorem impedit consequuntur qui incidunt. Aspernatur nobis aliquid suscipit dolores. Sunt expedita laborum necessitatibus debitis similique eius.', '2024-11-28', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(80, 'Enim officia quis exercitationem eligendi illo necessitatibus.', 'Beatae atque deserunt voluptatem voluptates iusto perspiciatis accusamus et. Ex vel incidunt sit. Quibusdam exercitationem veniam qui ut magni fugiat esse facere.', '2024-12-06', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(81, 'Suscipit iure commodi omnis non.', 'Labore id facere dicta. Dolorum quisquam eum fugiat eos omnis expedita. Ratione doloremque iusto natus dolor dolor voluptatem est. Et amet veniam esse consequatur.', '2024-11-26', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(82, 'Dolores quaerat tempora quam consequatur quaerat.', 'Officiis et accusamus velit. Voluptatem et sed non facilis. Sit rerum aperiam quod unde iste est.', '2024-12-11', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(83, 'Dicta praesentium vitae asperiores maiores.', 'Quis et voluptatem ut quidem nihil atque. Eum non ipsa qui et aut consectetur sit rem. Consequatur eos dignissimos sed temporibus ab est.', '2024-12-10', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(84, 'Et corrupti consequatur quo autem qui qui.', 'Aut doloribus officia ut cupiditate cum placeat sequi. Omnis pariatur qui assumenda voluptate qui eius voluptas. Aut error dolores autem illum sint animi.', '2024-11-21', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(85, 'Accusantium quibusdam qui eum asperiores.', 'Et omnis adipisci consequatur quis sed sint quam. Sunt tempore eum corrupti ducimus aut velit libero enim. In et illum ut.', '2024-12-07', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(86, 'Iusto enim sunt vero iure id et consequatur.', 'Sit et quisquam quaerat totam. Consequuntur ut possimus velit pariatur. Illum et suscipit quas vel qui veniam ab.', '2024-11-21', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(87, 'Laborum fuga molestiae est cupiditate.', 'Maxime quos aliquam mollitia voluptas est. Omnis officia dicta ex repellat delectus. Quod earum vitae magni nemo magni assumenda inventore cumque.', '2024-12-01', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(88, 'Est qui consequatur voluptate aspernatur aut doloribus.', 'Iure adipisci aspernatur eum qui ut veniam culpa. Voluptas vel dolores voluptatem eius voluptas in. Animi ut labore nemo sint maxime perspiciatis. Fugiat doloremque ad beatae nostrum architecto ea officiis. Odit sit ut eaque cumque atque itaque.', '2024-12-10', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(89, 'Et accusantium beatae sequi.', 'Quis voluptas itaque tempore veritatis enim sit suscipit et. Quia expedita sint laudantium molestiae. Asperiores non eum dolorum tempora expedita rem fugiat nobis.', '2024-12-01', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(90, 'Libero totam doloremque quam omnis aut inventore debitis eum.', 'Deleniti atque ut cum commodi rerum. Expedita accusantium eum quod quia vero dolorum animi voluptates. Est culpa repellendus ut occaecati. Consequatur nihil sit atque ullam dolorem odit temporibus.', '2024-11-23', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(91, 'Sed officia dolores veritatis et explicabo.', 'Voluptatem aut pariatur autem dolorum soluta. Voluptates et eaque et aperiam rerum. Dolor praesentium eum maiores alias voluptatum.', '2024-11-26', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(92, 'Qui maiores corporis ea culpa soluta.', 'Ea labore porro non nam. Quis explicabo tempore voluptas eius facilis quod. Id non quae iusto ut. Adipisci qui enim eligendi.', '2024-11-25', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(93, 'Necessitatibus neque est error velit et.', 'Itaque exercitationem alias magni sit ut. Debitis sed facilis enim voluptas pariatur veritatis. Possimus libero voluptatem praesentium natus alias. Consequatur minima et quam. Aliquid natus est sequi.', '2024-11-22', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(94, 'Dolore est et quos sed delectus.', 'Cumque sint maxime cupiditate fugit. Ea veniam dignissimos at deserunt voluptate debitis fuga. Perferendis vel ullam molestiae dolores. Aut vero repudiandae omnis hic.', '2024-12-05', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(95, 'Dolores sunt officia dolor est blanditiis.', 'Accusamus fugit laborum non est quis similique repellendus. Voluptas sed est quo magnam id nobis. Et enim et non est dolorum dolor.', '2024-11-29', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(96, 'Laboriosam consectetur tenetur eligendi quia itaque accusamus aut assumenda.', 'Quaerat vitae debitis est excepturi aut sapiente quos. At et vel dolores aliquam molestiae iusto. Quasi corrupti repudiandae blanditiis labore ipsa molestiae. Quidem quia et ut doloremque quibusdam iusto iste.', '2024-12-09', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(97, 'Sit vitae vitae reiciendis ut animi possimus.', 'Dolorem sit architecto velit doloremque. Doloribus animi ut veniam ea. Commodi quia alias optio voluptates soluta quam.', '2024-12-10', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(98, 'Asperiores modi ratione animi quibusdam voluptas asperiores.', 'Non architecto sequi autem odit est necessitatibus. Commodi eius et nisi ratione minima veniam. Molestias ea rerum dolores.', '2024-11-30', 'completed', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(99, 'Optio voluptates iste quis voluptates mollitia.', 'Repellendus quos eum sed amet iusto reiciendis aut. Maxime nisi in ea asperiores voluptate voluptatibus minima deleniti. Ex mollitia alias aut maiores maiores perferendis eveniet. Suscipit modi quia debitis unde vero rerum.', '2024-12-05', 'open', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(100, 'Expedita exercitationem quia et quidem.', 'Blanditiis amet ab enim et dolore debitis aut eligendi. Rem est qui laborum omnis alias. Cum praesentium totam consequatur iste nisi sed.', '2024-11-30', 'in_progress', 1, 1, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(101, 'Quod vel dolorem illo ut.', 'Reprehenderit ut ut nostrum cumque nulla. Nisi beatae in enim sed omnis. Est facilis unde ad eveniet voluptates officiis voluptate. Illum cupiditate eaque natus facere ad.', '2024-12-06', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(102, 'Velit ipsam iure praesentium architecto facere alias.', 'Quo et tempora ut facilis. Esse consectetur sint quaerat dolorem. Laudantium rerum pariatur est neque voluptate in illo. Quia veritatis quos eveniet iste reiciendis hic ut.', '2024-11-19', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(103, 'Harum rerum voluptate laudantium magnam sed officiis itaque.', 'Quos vitae sequi maiores maxime delectus. Omnis eum cupiditate qui dolorum sunt est expedita. Nostrum incidunt reprehenderit animi voluptatibus.', '2024-12-02', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(104, 'Et expedita aut consectetur vitae ut enim amet debitis.', 'Ullam ipsum suscipit enim praesentium soluta nulla quod. Pariatur ut aut corporis quia ipsa omnis. Hic eius repellat aut sit enim deserunt reiciendis iure.', '2024-11-22', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(105, 'Eum consectetur explicabo sed voluptatum hic earum enim.', 'Labore sapiente ipsam nostrum id molestiae. Sequi beatae deserunt vel et. Qui quis quae ea est fuga.', '2024-11-21', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(106, 'Quo est numquam odio commodi commodi dolorem.', 'Vitae sapiente qui aut minima. Voluptas animi officiis et libero. Mollitia quo facere odio quam.', '2024-12-02', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(107, 'Distinctio necessitatibus error vel ut ut.', 'At dicta repellat velit quidem eius rerum. Et illum ea autem et vero corporis minima. Eligendi est quibusdam sed iusto cum.', '2024-11-22', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(108, 'Aperiam nihil est nisi quia magni molestias molestias.', 'Non non quisquam ut cumque. Eum laborum reprehenderit ducimus culpa dolorem perspiciatis quos. Quo facere minima tempora quae quis voluptas enim voluptatibus. Omnis error est facilis odit.', '2024-11-29', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(109, 'Exercitationem sunt error atque eligendi aut repudiandae.', 'Et molestiae eum nesciunt quia. Atque fugiat impedit quo nostrum. Nemo incidunt voluptatem ea molestias autem sint. Saepe voluptatem quibusdam minima.', '2024-11-26', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(110, 'Quia aliquam nobis quis quia.', 'Esse minus et rerum officiis amet itaque. Nam neque numquam odit minus explicabo laborum id. Veniam consequuntur in nobis sed aliquam. Officia et consequuntur dolorem aut qui laudantium.', '2024-11-27', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(111, 'Asperiores praesentium cupiditate eos mollitia.', 'Velit perspiciatis beatae sit autem ut fuga voluptatem. Odit corporis perferendis ut sit blanditiis autem. Laborum quam laborum autem et maxime velit quis. Quia sint est non iusto dolorem quasi vel expedita.', '2024-12-08', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(112, 'Corrupti sequi molestiae non deserunt nobis nostrum ducimus.', 'Possimus consectetur aut aut dicta praesentium earum. Suscipit laborum nihil ut ab omnis est. Velit voluptatem aut voluptatibus veniam. Unde aliquid quod quia.', '2024-11-27', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(113, 'Vitae quo explicabo sapiente fugiat vitae.', 'Est dignissimos voluptate magnam qui aut iusto. Ut atque qui ut. Cupiditate beatae molestiae sit dolore.', '2024-11-25', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(114, 'Facere et consequatur nihil magnam.', 'Doloremque doloremque dolor occaecati id. Suscipit explicabo sunt maxime aut ut. Recusandae est sunt exercitationem cumque. Aut fuga voluptatibus id omnis.', '2024-12-02', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(115, 'Ex in nostrum placeat consequatur animi deserunt est.', 'Inventore iure voluptatem voluptas architecto harum. Vitae corporis sint aut eveniet qui est nobis. Quisquam labore voluptas et earum.', '2024-11-30', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(116, 'Ipsum in vitae laudantium.', 'Asperiores quia maiores illo consequatur ab quis enim. Maxime possimus magni in omnis. Voluptas rerum sunt nihil autem. Voluptate et non eius porro laboriosam aperiam et.', '2024-11-20', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(117, 'Sunt numquam beatae sapiente voluptatem voluptates labore accusantium.', 'Iste sed provident sapiente doloremque deserunt. Dolor similique adipisci sunt saepe hic. Facere voluptate praesentium et nihil.', '2024-12-11', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(118, 'Vitae fugiat atque porro ipsum sint a aut.', 'Expedita perferendis sit eaque in. Qui id dolorem libero esse nemo vero qui. In sunt laudantium iste iste.', '2024-11-27', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(119, 'Ut consequatur eligendi voluptatum iusto.', 'Aut alias iste animi. Id occaecati quibusdam laborum nihil et eaque. Assumenda id voluptas occaecati ad voluptatum.', '2024-11-20', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(120, 'Beatae quia quas perspiciatis quia sed.', 'Debitis voluptas tempore vero eligendi quis. Distinctio explicabo quis et recusandae rerum. Facere sequi pariatur eum totam consectetur aliquam.', '2024-11-25', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(121, 'Ut qui ad in hic eius pariatur.', 'Ut quisquam commodi ea magni. Temporibus autem quibusdam voluptatem inventore non blanditiis. Libero vitae voluptas sunt voluptatem voluptatem deserunt at.', '2024-12-01', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(122, 'Nemo voluptate eveniet perspiciatis omnis vitae facilis.', 'Voluptas eligendi deleniti ut magni repellendus rerum et dolores. Quisquam necessitatibus animi vero consequuntur sapiente. Aut qui rerum consequatur velit voluptates minus deserunt doloribus. Voluptatem doloribus omnis sit ea.', '2024-12-08', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(123, 'Doloremque perspiciatis ut sit nulla maxime excepturi exercitationem.', 'Et sed sunt et assumenda sit voluptatibus. Deserunt corrupti ipsum velit. Odio aliquam corrupti asperiores perspiciatis.', '2024-11-29', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(124, 'Numquam temporibus similique magnam quia.', 'Ea in officia sit commodi blanditiis. Aut sit ducimus ea quae enim laudantium. Necessitatibus qui est optio architecto at.', '2024-12-08', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(125, 'Voluptate cumque maxime praesentium dolor maxime neque consequuntur.', 'Voluptatibus iste deleniti autem illo nihil ad eos perspiciatis. Libero animi eos aut unde rerum qui. Ipsam temporibus qui doloremque suscipit.', '2024-12-04', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(126, 'Ducimus dolore nostrum consequatur exercitationem.', 'Sit enim molestiae dolores. At dolorem quisquam aliquid voluptatem quia odit. Rerum corporis doloremque ratione explicabo nam sed. Placeat fuga esse non quia nesciunt omnis.', '2024-11-21', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(127, 'Non omnis praesentium eligendi ea eveniet.', 'Consequatur laboriosam quo est perspiciatis. Dolores est repellendus molestias vel officiis. Officia sint voluptatem fuga quaerat.', '2024-11-22', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(128, 'Possimus deleniti rem dolor ab.', 'Ut voluptas voluptatem quia officiis harum. Fuga vel et quaerat blanditiis optio voluptatibus unde. Dolor dolores asperiores ut impedit.', '2024-11-22', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(129, 'Et hic debitis quae qui.', 'Rem libero ut dolore vel. Consequuntur officia voluptatum placeat perspiciatis doloribus facilis rem debitis. Exercitationem aliquid adipisci tempore aut quia.', '2024-11-29', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(130, 'Aspernatur laudantium asperiores fugit sit.', 'Totam animi et fugiat quia molestiae. Quos et explicabo fuga consequatur.', '2024-12-07', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(131, 'Non quasi voluptatem aut assumenda doloribus omnis.', 'Omnis vitae qui neque aut rerum quos voluptate laudantium. Neque adipisci non aut. Omnis ratione sit culpa quia pariatur.', '2024-11-20', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(132, 'Recusandae fuga unde vitae aut.', 'Reiciendis omnis optio consequatur et. Consequatur sit consequuntur ut aut. Tenetur consectetur inventore eos.', '2024-11-19', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(133, 'Ipsa exercitationem laborum voluptatem quidem harum quas soluta.', 'Tempora saepe sit suscipit voluptatem voluptate. Ea quis pariatur et suscipit necessitatibus ipsa totam. Odio rerum labore sed asperiores quod incidunt sint. Aut rerum ad sed repellat.', '2024-12-01', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(134, 'Placeat labore aliquid sunt amet cupiditate fugit aut.', 'Quisquam pariatur ut eveniet id provident earum sit et. Natus voluptas officiis placeat perferendis soluta. Qui est et quod ea rerum ut.', '2024-11-29', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(135, 'Rerum adipisci sed maiores sit quia quis.', 'Consequatur necessitatibus sed veniam non. Repudiandae ad recusandae natus molestiae porro. Asperiores atque dolorem sit possimus omnis est. Officiis similique soluta assumenda repellat voluptates qui iste.', '2024-12-08', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(136, 'Ipsa dolor minima odit autem voluptate eum culpa.', 'Eum dolor vel illum qui. Aut pariatur quia est est ut quo. Voluptatum facilis repellendus quas velit eius. Non aliquid iure magni.', '2024-11-24', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(137, 'Facilis maxime ipsam delectus blanditiis animi quo.', 'Quisquam molestiae dolor officia. Nihil ipsum rem qui et odio. Omnis sequi magnam quo earum qui dolore voluptatum.', '2024-11-23', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(138, 'Ut quia optio quibusdam expedita sit quia ea et.', 'Laboriosam nemo quam aspernatur. Consequatur fugiat praesentium eos dolor expedita. Saepe modi nam eveniet cupiditate tempore. Omnis aut omnis ex quia.', '2024-11-21', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(139, 'Error qui voluptatem et culpa vero velit.', 'Quam corporis quibusdam explicabo vitae quia illum enim. Sed illum autem velit quam. Illo dolorum alias sit rerum. Qui rerum ducimus amet neque odit.', '2024-11-26', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(140, 'Non temporibus aut rem distinctio.', 'Nam provident vitae id officiis corrupti. Voluptatem accusantium vero eligendi. Ut officia ut natus qui.', '2024-11-21', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(141, 'Non quia quia recusandae ut est.', 'Officia eum sed quae voluptas ut. Ad sequi nihil voluptas ex. Consequatur qui voluptas hic praesentium repellendus nemo et sed.', '2024-12-06', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(142, 'Non porro ducimus quia sint expedita.', 'Neque laboriosam omnis facere ut sapiente sint. Molestiae ullam quos ut voluptatum laudantium libero numquam. Et rem ipsa nemo atque nobis expedita ea dolorum.', '2024-11-25', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(143, 'Nam praesentium qui fugit.', 'Quia alias ut placeat soluta voluptas. Earum porro autem necessitatibus sapiente blanditiis. Ex alias qui blanditiis est qui. Dolorem ad est repellendus sunt saepe. Doloremque dolorem sunt vitae et nobis voluptates.', '2024-11-23', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(144, 'Blanditiis non distinctio voluptates nam dolorum consequatur.', 'Impedit adipisci enim velit. Dignissimos est in assumenda quae. Enim facilis quia voluptas dolorum facere architecto voluptas sed.', '2024-11-25', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(145, 'Error ex autem eum assumenda occaecati beatae.', 'Atque rem placeat sed. In ipsam ut voluptates sed dignissimos vero. Quibusdam animi omnis voluptatem error maxime deleniti. Fugiat quis in et quia nostrum.', '2024-12-02', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(146, 'Alias quod similique ipsa sequi.', 'Assumenda aliquid rerum inventore eveniet a nisi dolores. Voluptate reprehenderit molestiae officiis quis adipisci laboriosam veritatis sit. Porro fugit aut autem iure architecto qui.', '2024-11-23', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(147, 'Perferendis ut error natus nam iste.', 'Iste repudiandae illo sit dolores corrupti. Blanditiis temporibus dignissimos eum debitis. Tempore velit quaerat minima sit consequatur corrupti culpa. Dolores et voluptas consequatur itaque provident et.', '2024-11-30', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(148, 'Nihil rerum blanditiis sed quibusdam repellendus.', 'Tempora non molestiae sint commodi repellendus atque numquam laborum. Consequuntur porro id consequuntur sapiente earum suscipit enim. Ad ipsam et temporibus est commodi error deleniti. Eveniet quia et doloremque dolor.', '2024-11-19', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(149, 'Veritatis asperiores facilis cum autem repudiandae quia.', 'Quas vero sed ratione facere nihil et. Voluptatem molestiae et esse nam autem tempora est qui. Qui quo mollitia ab quibusdam ullam magni ullam.', '2024-11-22', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(150, 'Eum id autem expedita suscipit.', 'Debitis officiis dolorem libero. Eos odio consequuntur numquam in quia similique consectetur. Maxime saepe reprehenderit fugiat enim rerum provident. Nihil voluptas ut fugit dolorem aut aut ut.', '2024-11-20', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(151, 'Magnam reprehenderit cumque id in repellendus sed.', 'Doloribus porro consectetur hic cum saepe tempora aut. Nam saepe ut veniam in provident consequatur architecto. Modi est autem tenetur consequatur dignissimos architecto.', '2024-12-06', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(152, 'Voluptatibus fuga dolores autem id.', 'Illum voluptatem ipsa eaque esse. Porro vel illum nisi ex deserunt aut commodi. Unde numquam deleniti ut ut voluptatum itaque repellat. Nihil natus ad aut tempore laboriosam enim.', '2024-11-30', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(153, 'Qui maxime fugiat ut optio rerum quis et.', 'Et atque ex quisquam consequatur vel. Ut enim ut possimus ea omnis. Necessitatibus rerum eius eos eius iusto voluptatem occaecati. Ut earum illum cupiditate expedita.', '2024-11-24', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(154, 'Vel et repellendus nulla amet officia laudantium voluptatibus.', 'Inventore fugiat nam maiores est ducimus vitae qui. Est itaque quasi fugiat eos similique consequatur sequi.', '2024-11-22', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(155, 'Non consequatur tempore mollitia sunt vero et.', 'Veritatis et facilis est expedita voluptas. Expedita sit blanditiis soluta eum inventore sint. Modi est qui et quia. Qui quisquam enim autem rerum animi aliquid quibusdam.', '2024-12-02', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(156, 'Maxime sed consequatur a labore nostrum laudantium sit.', 'Incidunt eos magni voluptate nisi quaerat fugit et. Non optio necessitatibus voluptatem ad laudantium. Quia sit modi beatae occaecati maiores.', '2024-11-20', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(157, 'Omnis odit voluptatem cumque eum quis alias.', 'Qui exercitationem laudantium ea. Corporis non molestiae placeat ipsam a eius. Dicta maiores ipsa ad nam dolores neque delectus. Ut et architecto nam quam aut sint amet.', '2024-11-30', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(158, 'Aut minima pariatur quam commodi.', 'Recusandae beatae et quas natus consequatur. Fugiat quidem et tempore nemo voluptatem veniam itaque. Sint nisi soluta optio magnam ad culpa. Libero officia rerum qui quidem odio iste.', '2024-11-21', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(159, 'Quaerat sunt hic est facere sunt.', 'Vero et necessitatibus libero. Et non sed eaque sed harum voluptatum assumenda.', '2024-11-19', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(160, 'Omnis modi nam omnis explicabo totam ut aut sint.', 'Dolorem cum natus rerum. Magni temporibus eum enim eos est placeat natus. Libero perferendis sequi id soluta est eum ut.', '2024-11-19', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(161, 'Fugiat ducimus ipsa sequi qui.', 'Eveniet quis iste exercitationem quod. Accusamus perspiciatis animi officiis. Nesciunt maxime autem iusto. Voluptatem voluptatem deserunt odio fuga ullam fugit.', '2024-12-07', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(162, 'Quibusdam error dolorem quis ipsa nisi asperiores et.', 'Ut enim dolores eius laborum. Officia quasi fugiat qui dolor consequatur. Rerum sed eius est accusantium quos optio eum.', '2024-11-25', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(163, 'Laudantium officiis pariatur vel illo ullam quod facere accusantium.', 'Possimus repudiandae ex sit tempore. Tenetur facilis ratione et temporibus. Quidem tenetur porro voluptas maiores nulla animi labore.', '2024-11-30', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(164, 'Mollitia et velit quidem.', 'Dolores repellendus sint aut. Ipsam autem facere consequuntur veritatis. A velit sit fugit similique. Modi in minus vel quia quaerat possimus. Fugiat ex quasi fuga velit voluptas.', '2024-11-20', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(165, 'Sed dolorem nulla eius est nisi illum.', 'Dignissimos a non dignissimos dolorem eum aperiam sint rerum. Commodi aut aut perspiciatis sunt sunt nesciunt. Expedita quidem qui repellat quia et quas. Voluptas similique sit porro.', '2024-11-21', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(166, 'Et aut aut laudantium nemo.', 'Quia dolorem et ducimus nisi quaerat. Qui quas aliquid excepturi at non est rerum ut. Ullam cumque saepe quidem laudantium voluptatem animi dolorem totam.', '2024-12-10', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(167, 'Culpa deleniti unde nulla magni facere labore.', 'Eligendi corporis ut totam odit optio consequatur sed voluptas. Officiis neque eaque iste nulla. Nihil porro veniam non fuga non eveniet. Eligendi sed molestiae non vel aut.', '2024-11-19', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(168, 'Dolores voluptas numquam consequatur corporis expedita.', 'Recusandae ut quam perspiciatis. Nihil quas aut exercitationem nihil aut. Eius iste voluptate est dolorum sed unde consequatur. Ea labore doloribus libero quod voluptatem.', '2024-12-09', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(169, 'Aut aperiam cum modi eos molestias laudantium.', 'Tempore occaecati aliquid in molestias ut cumque itaque. Saepe aut ad ea voluptates error qui optio sed. Sunt itaque tenetur eum beatae ipsa. Aliquid autem eos animi in ratione aut.', '2024-11-29', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(170, 'Aut voluptatem est ipsam fugit delectus doloremque.', 'Autem nesciunt aliquid dolorem a. Id et cupiditate perspiciatis unde cum ea in. Ex eos repellat nesciunt quis.', '2024-12-10', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(171, 'Harum sed et praesentium voluptatem natus rerum omnis.', 'Quia et deserunt vitae quos perferendis aut. Odit assumenda quidem amet pariatur amet eos. Commodi eum animi enim aut similique.', '2024-11-29', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43');
INSERT INTO `tasks` (`id`, `title`, `description`, `due_date`, `status`, `user_id`, `assigned_to`, `created_at`, `updated_at`) VALUES
(172, 'Et fugit officiis ullam occaecati fugiat aliquid.', 'Ut deleniti illo laudantium non aperiam. Rerum incidunt esse et nostrum numquam quod qui non. Eum odio consectetur ea delectus distinctio aspernatur voluptatibus. Repellat commodi dolorum voluptas sunt ut aut ducimus.', '2024-11-26', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(173, 'Libero aut voluptatem voluptas reprehenderit.', 'Libero consequatur qui aut rerum porro. Voluptate nisi dolor neque sit accusantium praesentium. Aut sed nemo quis ut deserunt assumenda voluptatem. Aspernatur omnis similique illum occaecati magnam facilis debitis.', '2024-11-24', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(174, 'Saepe magnam qui iste cupiditate.', 'Quam sunt at aut quas libero. Neque nisi voluptatem fugiat sit nemo. Eveniet corrupti distinctio voluptas eum sint.', '2024-11-22', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(175, 'Enim aliquid quos dolorem voluptates est.', 'Error velit aliquid ad vitae. Nobis labore quidem ut sapiente vel consequatur quam. Expedita repellendus dolorem necessitatibus sapiente minus excepturi ullam qui.', '2024-11-18', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(176, 'Est praesentium asperiores non ut qui at.', 'Adipisci et facere esse. Est natus quas tenetur quia pariatur laudantium aut velit. Assumenda cum debitis eos dignissimos tempora nihil. Doloribus aspernatur accusamus debitis in labore.', '2024-12-09', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(177, 'Porro et architecto a repudiandae qui iste modi.', 'Pariatur dolore eos quas est et voluptas. Facere aut ducimus doloremque suscipit aliquam est. Minus id dolorem voluptatem.', '2024-12-08', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(178, 'Recusandae aut ducimus nihil optio et dolor.', 'Iure id itaque esse impedit. Ea assumenda excepturi iusto quis. Autem iure debitis voluptas quas voluptatem harum expedita amet.', '2024-12-01', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(179, 'Dolores quo quas non nulla.', 'Maxime sapiente minus magnam sint et qui. Voluptatibus et omnis qui esse non similique quas. Cum quas et non.', '2024-12-05', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(180, 'In est rem odit ut dolores quae.', 'Neque deserunt at omnis consequuntur et vitae. Non et quibusdam id quibusdam. Earum qui harum consequatur dolor. Est dolorem maiores aut mollitia itaque assumenda.', '2024-11-29', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(181, 'Accusantium numquam quia voluptas alias.', 'Voluptatum consequatur ipsum nostrum rerum odit placeat delectus et. Totam fugit esse libero. Harum sunt cumque magni.', '2024-11-22', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(182, 'Quos ducimus aut repudiandae fugiat harum ut.', 'Earum iusto dolorem ullam voluptatem numquam. Dolores quia natus velit exercitationem inventore. Autem nesciunt nesciunt temporibus ex voluptatem.', '2024-12-02', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(183, 'Deserunt cupiditate minima quisquam ea.', 'Autem sit eaque impedit. Numquam ea eligendi officiis ad facere dolor.', '2024-11-24', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(184, 'Sit sit fugit consequatur non.', 'Quod quos odit officiis amet deleniti quidem. Debitis omnis et velit minima illum voluptas ut. Aliquid id ipsum iusto.', '2024-12-03', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(185, 'Tempore praesentium aut excepturi vitae laboriosam molestias suscipit.', 'Qui in cumque ratione incidunt dicta aut. Accusantium non magnam dolorem laudantium voluptas repellat. Tempore sint totam nulla consectetur iste. Quas sit beatae qui rem rerum distinctio velit.', '2024-12-04', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(186, 'Et laboriosam unde sit atque.', 'Velit corporis assumenda quo est sit odit eum numquam. Nemo necessitatibus sint rerum voluptatum optio eaque maxime molestias. Qui iure minima quis aperiam aut saepe cumque.', '2024-12-05', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(187, 'Magnam accusamus totam eum nam et est ipsum.', 'Et autem repellendus dolores est nesciunt repellendus officiis. Esse deleniti expedita a aspernatur aut. Dolore optio sit quis necessitatibus eligendi et. Neque voluptatem saepe impedit consequatur.', '2024-11-27', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(188, 'Delectus at rerum est ipsum.', 'Ducimus provident eveniet qui quia. Beatae sequi quia nobis laboriosam. Itaque voluptatem nihil ipsa porro et.', '2024-11-25', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(189, 'Nesciunt qui temporibus ut praesentium voluptatum.', 'Repellat ut sequi sit reprehenderit eligendi et officiis. Est quod exercitationem et dolore dicta ea. Sunt ex rerum est aut quia repellendus. Voluptas tempora possimus vel aut iusto optio. Sapiente nam aut necessitatibus voluptatem dolorem earum aut.', '2024-11-19', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(190, 'Non est et aliquid facilis ea quis voluptas.', 'Nisi in totam corporis. Molestias ut accusamus est incidunt eligendi. Aut libero et et qui deleniti unde ut. Ut et non commodi pariatur explicabo.', '2024-12-02', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(191, 'Et quisquam excepturi dolorum.', 'Reiciendis non voluptas laboriosam maiores aut aut voluptatum. Cupiditate magnam inventore aut. Quia doloribus deleniti error accusamus. Earum consequuntur earum velit unde reiciendis ducimus possimus.', '2024-11-21', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(192, 'Explicabo ducimus vel vel nesciunt voluptas.', 'Ea deleniti ipsa est suscipit dolores. Quos eligendi ut odit iusto totam occaecati numquam. Reprehenderit est sed accusantium ea magnam sed.', '2024-11-25', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(193, 'Tenetur rerum voluptatem minima.', 'Voluptas mollitia rerum fuga eveniet id harum vel voluptatem. Omnis nobis sunt occaecati eos quis laudantium. Reiciendis aut sed cum in. A voluptatum nisi cumque et dolores.', '2024-12-08', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(194, 'Eius molestiae sunt necessitatibus est eum molestias.', 'Omnis quia voluptas id suscipit et dolor. Dolorem quia est in ea occaecati quod cumque. Voluptates unde ex est dignissimos. Nisi commodi et dicta deserunt eum quia. Error similique laudantium ut in fugit quidem.', '2024-11-19', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(195, 'Corporis est autem minima.', 'Quasi sunt cupiditate amet consequatur id voluptas. Vero officia quasi facere impedit similique ratione dolor. Doloribus itaque rerum ad adipisci sed ea consequuntur. Ipsam officiis provident quisquam consequatur aut nihil. Reiciendis sint rerum consequatur quo dolores ea.', '2024-11-19', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(196, 'Quo sint tenetur voluptatem ea ab voluptas quo est.', 'Temporibus veniam quos maiores sint. Sed error in tempore dolor. Eum aut eligendi corporis amet aut veniam tempore. Sed ratione ut quidem illo.', '2024-12-08', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(197, 'Consequatur quam omnis dolore illum placeat.', 'Officia pariatur maiores est delectus veniam. Est omnis corporis quam possimus molestiae vero sunt. Et qui exercitationem nesciunt eum suscipit modi. Et id perspiciatis quo labore quod et mollitia. Porro ad et explicabo voluptates facere dolor voluptas.', '2024-12-06', 'in_progress', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(198, 'Et at accusantium nulla nemo eveniet velit.', 'Quisquam inventore qui molestiae perspiciatis dolores. Quidem aut laborum aut occaecati deserunt. Qui dolor culpa cumque tempore iste. Alias et ipsa odit omnis debitis.', '2024-11-28', 'completed', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(199, 'Aut minima asperiores ut odit molestiae.', 'Quidem voluptate ut nihil nulla perferendis harum dolore. Ut voluptate ducimus excepturi. Dolor quaerat architecto nulla fugiat sit assumenda optio. Id sed quia doloremque suscipit officia tempore quos.', '2024-11-28', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(200, 'Cum iure magni quo rerum dolorem.', 'Omnis voluptatibus molestiae a fuga est odit quas. Dolor ea hic nobis aut unde. Blanditiis nam dolores quas rerum qui nam. Quibusdam quia sint aut quidem aliquam.', '2024-12-03', 'open', 2, 2, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(201, 'Sunt porro sit beatae tenetur recusandae.', 'Sapiente dolores nostrum est perspiciatis consequatur quibusdam voluptas. Et eum numquam dolor eos sit ullam qui tempora.', '2024-12-01', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(202, 'Qui et voluptate molestiae et nesciunt tempore enim.', 'Recusandae nesciunt pariatur quia autem aut aut rem. Non adipisci ad voluptatibus. Vel aspernatur aut eligendi similique nemo dolores nostrum.', '2024-11-20', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(203, 'Est praesentium omnis ratione cupiditate voluptas quis qui.', 'Doloremque cum sed inventore nulla ex. Optio voluptatibus iste quis sapiente ullam veritatis voluptatem. Aliquam quaerat neque rem ut veniam voluptates. Minus reiciendis iusto eum ea autem quis.', '2024-11-26', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(204, 'Deserunt officiis sed reiciendis vel aut rerum.', 'Aut repellendus ipsa quo est iste. Quas quis ducimus quia quia tempora. Natus delectus rerum labore hic laborum laudantium magni. Similique voluptas enim aperiam expedita autem distinctio.', '2024-11-22', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(205, 'Dolores rem qui corporis neque magni.', 'Magnam libero est delectus consequatur. Ea voluptatibus temporibus unde quas ullam rerum fugiat.', '2024-12-03', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(206, 'Culpa quam ut iure asperiores et est.', 'Iusto voluptatem ipsum saepe quas. Sunt adipisci dolores commodi repudiandae. Omnis quia minima id non repellat.', '2024-12-02', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(207, 'Omnis neque tempore ut modi qui doloribus porro.', 'Sapiente repudiandae ut voluptatem enim a cumque. Enim laborum expedita hic velit magnam quidem et et. Ut sed deleniti commodi error. Molestias explicabo sunt eligendi qui.', '2024-12-06', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(208, 'Est ut dolorem laudantium.', 'Explicabo deserunt ut qui mollitia eaque dignissimos. Qui qui sequi beatae id dolorum sed temporibus qui. Enim laudantium libero ullam necessitatibus. Ipsa doloremque at repudiandae sit autem odio.', '2024-11-20', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(209, 'Autem nobis facilis eos itaque odit est quis.', 'Est asperiores delectus qui necessitatibus veniam molestias. Tempora ut repellat sit consectetur architecto. Consequuntur voluptas amet facilis. Iste ut recusandae qui veniam quisquam ut optio.', '2024-12-08', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(210, 'Nam ratione similique quis eius est quibusdam.', 'Id quas voluptate facere soluta. Aut ut est enim vero laborum velit. Ducimus fugit impedit quo. Qui illum animi enim sed.', '2024-12-04', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(211, 'Optio nemo non aspernatur mollitia porro accusamus sed id.', 'Voluptate soluta quod porro nihil omnis. Ut eveniet libero suscipit officiis. Aliquid quas recusandae dicta.', '2024-12-03', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(212, 'Ex ea veritatis maxime fugiat nihil reprehenderit minus.', 'Est iusto aut ut eum assumenda sit omnis natus. Facere nobis doloremque sit et eum. Sint quos sed voluptas officia fuga soluta enim.', '2024-12-06', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(213, 'Nisi amet sint officia pariatur.', 'Id et culpa officia aspernatur eum autem. Quaerat omnis sed qui quo. Vero qui asperiores suscipit voluptatibus recusandae officiis veniam ipsum. Perspiciatis quo quo molestiae doloremque exercitationem neque et iure.', '2024-11-30', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(214, 'Reprehenderit quis doloremque repellat laboriosam ea.', 'Aut ipsum in totam tenetur et. Rerum repellat deleniti ut eius quo ut.', '2024-12-01', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(215, 'Est possimus sit fugiat nesciunt dignissimos et.', 'Aliquid quisquam cupiditate voluptatum esse est in. Veritatis nihil minus incidunt quas dolores non. Reprehenderit voluptates deserunt quam id in.', '2024-11-20', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(216, 'Voluptatum voluptas doloremque cum quia consequatur odit cumque.', 'Dolorem aliquid optio sunt. Aut qui minima provident modi aut quaerat. Laudantium non in fugit minus laudantium nihil. Deserunt ad vel laboriosam ut voluptas ut dolores.', '2024-12-01', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(217, 'Perspiciatis ut pariatur odio non qui.', 'Qui amet voluptas amet consequatur voluptatibus sit. Voluptas dolores est adipisci ut nam. Inventore facere in exercitationem modi.', '2024-12-10', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(218, 'Eaque in qui quia eius deserunt.', 'Dignissimos occaecati eum nemo excepturi. Eius soluta et beatae adipisci dolorum. Itaque aut optio aliquid laboriosam. Quo et quis quo necessitatibus. Dolores iusto qui omnis et esse eos rerum.', '2024-12-02', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(219, 'Consequuntur enim quis nesciunt id ducimus.', 'Necessitatibus veritatis voluptas voluptates illum est error. Rerum officiis maiores minus non in autem amet. Saepe necessitatibus repellat porro dolorum.', '2024-11-30', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(220, 'Expedita harum molestiae similique sequi.', 'Alias doloribus deleniti amet consequatur occaecati. Ea dolores ipsum architecto dolorem in animi dolor. Vel eveniet eos reprehenderit voluptas magnam.', '2024-11-27', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(221, 'Quis voluptate illo sed.', 'Sapiente expedita at qui vitae. Eaque quod architecto nam molestiae qui voluptate ex possimus. Pariatur voluptatibus sequi corrupti dolore temporibus explicabo adipisci.', '2024-11-27', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(222, 'Voluptate et deserunt natus sed vel vel.', 'Quaerat eveniet qui corrupti sed architecto nihil. Non corporis aut consectetur inventore cum dolores assumenda.', '2024-12-04', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(223, 'Optio id et aut non architecto dolores.', 'Iure aut quisquam eveniet magnam inventore. Iste est repellat et iusto. Et adipisci reprehenderit rerum non ut ut eius.', '2024-12-10', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(224, 'Molestias qui sunt at.', 'Quibusdam architecto sint aut quod sed fugit. Consequatur maxime nihil autem optio harum dolorem. Minus quis molestias iure consectetur eum perspiciatis iste.', '2024-12-01', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(225, 'Consequatur commodi et facere reprehenderit quis quidem nam.', 'Quia molestias dolores ratione repellendus delectus aut ut incidunt. Nihil sit porro recusandae repudiandae quidem omnis. Qui consequatur perspiciatis voluptatibus pariatur cupiditate rerum.', '2024-11-27', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(226, 'Laboriosam et quidem natus itaque placeat sit.', 'Quis tempore et cum. Est blanditiis eaque aut deleniti incidunt. Ut non accusantium occaecati rerum earum aliquid ut. Inventore voluptatum architecto nesciunt nihil cumque voluptates consequatur.', '2024-11-26', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(227, 'Est consequuntur facilis et autem soluta.', 'Corporis iure ipsa iusto quisquam et veritatis voluptatem. Excepturi aut occaecati incidunt et architecto veniam. Autem eaque adipisci voluptate numquam. Delectus et et odit qui.', '2024-11-28', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(228, 'Aperiam sunt atque sit sed quos sint.', 'Animi vel veritatis accusantium dicta. Qui animi veritatis ipsam possimus reprehenderit ex numquam. Dolor saepe deserunt qui non cum hic. Ratione possimus fugiat fugit omnis explicabo qui sit.', '2024-12-02', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(229, 'Quia optio quaerat voluptas saepe autem.', 'Consequuntur esse dolores veniam dolor aperiam ipsam non. Inventore qui omnis corporis sapiente dignissimos blanditiis. Et ratione officiis non deserunt.', '2024-12-02', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(230, 'Velit vero totam quaerat adipisci nihil voluptas rerum.', 'Nam rerum delectus vitae minima ut. Rerum itaque molestiae dolorum adipisci quaerat nostrum laudantium. Repellat aut sapiente minus dolore.', '2024-11-29', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(231, 'Rem quam optio laborum repudiandae nobis.', 'Quod non et laborum non. Tempore temporibus exercitationem earum sed. Eum dolorem autem doloremque minus fugit voluptatum consequatur omnis. Quia molestias quam fugiat aut et fugiat.', '2024-12-10', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(232, 'Nisi dolorum assumenda tenetur velit.', 'Non commodi quis quis dignissimos vitae rem ratione. Magnam culpa vero aut delectus ut. Sunt odit nobis molestiae.', '2024-12-10', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(233, 'Commodi ad porro consequuntur enim eos minus exercitationem.', 'Voluptatum vel doloremque sint nesciunt sit omnis eaque incidunt. Itaque sunt quibusdam hic aut. Natus aliquid adipisci illo repellat optio.', '2024-11-24', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(234, 'Dicta vero exercitationem nam reiciendis voluptatem eum.', 'Consequatur omnis quo porro. Suscipit est sint porro recusandae voluptates. Est aut recusandae sit consequatur. Qui dolorem nam sunt vel consequatur cupiditate.', '2024-12-03', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(235, 'Modi velit est commodi voluptas.', 'Laboriosam voluptas itaque ab ullam. Ex et qui debitis tempora id deleniti excepturi. Consequatur non dignissimos quo dolor itaque ducimus doloribus. Perspiciatis a sit in nulla velit.', '2024-11-25', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(236, 'Vitae ut labore neque ipsam non alias.', 'Occaecati illo et corrupti incidunt sequi velit. Porro qui quae quam sed.', '2024-11-24', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(237, 'Nulla pariatur quod ut libero.', 'Tempore inventore qui harum veritatis. Deleniti adipisci et architecto tempora numquam consequatur. Aut doloremque aut et blanditiis animi.', '2024-12-06', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(238, 'Deleniti aut sit modi voluptate labore incidunt.', 'Iure rerum deserunt debitis autem sed dignissimos quo minus. Magnam labore qui nemo ab explicabo accusantium. In amet et eum est.', '2024-11-25', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(239, 'Non quos mollitia natus temporibus nemo voluptas facere.', 'Ratione ea beatae non excepturi temporibus. Hic sit itaque voluptate enim itaque non. Officiis quos quos consequatur possimus labore. Ullam nemo blanditiis harum nam voluptas eius inventore.', '2024-12-08', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(240, 'Consequatur aperiam rerum quis quaerat qui nemo doloribus.', 'Officia architecto est repudiandae unde. Et aperiam et dolore quia. Amet iste et facere totam. Eius quia repellat fuga eaque asperiores rerum modi. Iure accusantium aut voluptas.', '2024-12-02', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(241, 'Dignissimos quas voluptatem quae aut id iure.', 'Itaque et consequuntur occaecati quia corrupti harum mollitia explicabo. Vel ipsam quaerat sequi quam voluptate et perspiciatis. At ratione illum dignissimos labore quibusdam deserunt accusantium. Quam quia id illo laboriosam amet provident qui.', '2024-11-25', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(242, 'Sunt quo quaerat sint.', 'Harum corrupti sunt ullam ullam laudantium. Officiis omnis ipsa qui officia quaerat saepe. Unde aut adipisci possimus non autem. Quisquam qui nostrum vitae ut quia.', '2024-11-21', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(243, 'Assumenda ut voluptatem quibusdam occaecati eaque sint.', 'Quasi et voluptates quia voluptatibus vitae odio voluptatem. Hic id neque quas. Labore earum ex et animi esse.', '2024-11-19', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(244, 'Neque illo rem dolor iusto laudantium architecto.', 'Distinctio dolorem exercitationem excepturi. Rem aliquam labore et rerum quasi qui at blanditiis. Ut ipsam reprehenderit ut minima consequuntur. Blanditiis harum beatae hic fugit distinctio.', '2024-12-10', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(245, 'Amet iusto cupiditate aut rem molestiae sed id.', 'Sapiente iste illo assumenda praesentium neque nihil fugit quas. Quod voluptatibus tempora fuga saepe debitis voluptatibus incidunt error.', '2024-11-25', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(246, 'Perferendis illo aut illo esse in quam molestiae.', 'Tempore autem vitae ratione sed illum aut. Qui eveniet aliquid illum autem. Est voluptatem eius aut. Omnis a excepturi laudantium expedita.', '2024-12-07', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(247, 'Alias perferendis quae vero ipsa dolorum ut.', 'Tempora vel autem molestiae dolorem. Voluptate quis et autem quia ut. Non fugit dolores itaque ipsam et. Fugiat in harum omnis accusantium omnis.', '2024-11-19', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(248, 'Earum itaque necessitatibus sit veniam accusamus vero.', 'At qui repellat et aut totam fugit incidunt. Neque et reprehenderit ipsum deserunt. Qui sint quis beatae et eveniet eum itaque. Fugiat cumque veritatis quia dolorum non necessitatibus.', '2024-11-26', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(249, 'Iure totam expedita a sapiente voluptas quas non.', 'Molestiae iste aliquam eligendi corrupti est dolor vero. Illum voluptas sint facilis ducimus eaque officia accusantium. Quas enim quasi qui velit adipisci neque blanditiis.', '2024-11-18', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(250, 'Delectus animi velit quaerat sint qui et perspiciatis.', 'Eaque maxime recusandae beatae sed id. Illum sit quasi nemo aliquam soluta et. Sint eaque quidem voluptatem impedit tempora.', '2024-12-06', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(251, 'Necessitatibus ipsam ea adipisci accusantium sed.', 'Architecto atque nemo fuga perferendis et omnis facilis debitis. Unde vero quam exercitationem necessitatibus excepturi. Dolorum molestiae iusto optio dolores ut omnis aut. Labore eos iusto cum voluptas et sapiente commodi enim.', '2024-12-08', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(252, 'Qui quisquam deserunt quaerat qui enim voluptas est atque.', 'Ex nemo earum ab quia architecto ut autem qui. Earum nam velit sunt repellat sequi. Fugiat omnis vel aspernatur. Iure voluptatem voluptatem sed officia eaque sapiente praesentium distinctio.', '2024-12-04', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(253, 'Necessitatibus omnis qui commodi sed quisquam minus qui sunt.', 'Ut sed dolorem et ea. Harum incidunt enim assumenda consequatur at voluptates. Et a ea qui est. Laboriosam sint occaecati consequatur impedit provident et quo.', '2024-12-05', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(254, 'Aut consectetur aut rerum repellendus veniam deserunt corrupti.', 'Nostrum rem quos maiores consequatur. Eius corporis ut officiis possimus. Qui qui repellat vitae ab enim.', '2024-11-24', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(255, 'Dolorem ipsam consequatur minima quaerat.', 'Tempore ullam sed voluptas omnis incidunt non a in. Odio iste vel ratione sunt accusantium temporibus rerum nostrum. Eligendi harum sint neque eum. Totam et molestiae tempore.', '2024-12-05', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(256, 'Ipsa aliquam quae vero illo dolores quae.', 'Qui dolorum molestiae pariatur earum. Dolor molestias illum ut repudiandae impedit qui atque. Ab molestiae quis molestiae velit a quae. Sunt quisquam magnam cupiditate excepturi qui.', '2024-12-02', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(257, 'Ratione necessitatibus sed veritatis dolorem debitis eius.', 'Ut adipisci molestiae sed laboriosam. Deleniti quasi nisi tempora error. Nulla fuga debitis harum beatae deserunt.', '2024-12-05', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(258, 'Ut a rem culpa voluptas.', 'Et dolor quasi et sit facilis voluptas aliquam. Quis et quis voluptatem dolor aut. Aut nihil ut velit dolores explicabo autem voluptas.', '2024-12-04', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(259, 'Recusandae et reiciendis autem.', 'Ipsa qui praesentium aut quos dolor eaque et. Quod ut temporibus sit est facere. Quis exercitationem soluta ullam dolorem nemo deleniti. Eligendi nesciunt consectetur quo voluptates error est facilis.', '2024-11-30', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(260, 'Vel pariatur cupiditate et minima.', 'Laborum labore ullam in ut. Totam non non quia rerum qui. Odio consequatur deleniti rerum et quasi. Nulla labore molestias ut corporis voluptatem.', '2024-11-28', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(261, 'Corporis autem aut consequuntur porro odit quis nostrum.', 'Voluptas et occaecati tenetur perspiciatis tenetur repellendus aliquid. Necessitatibus similique consequatur non quisquam. Et vel consequatur deleniti facilis et a voluptatem.', '2024-11-20', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(262, 'Commodi animi incidunt molestiae omnis est animi.', 'Nostrum est ratione sed repellendus est nobis facere hic. Consequatur eum quos voluptatem quia. Qui pariatur autem quibusdam eos blanditiis cupiditate.', '2024-12-11', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(263, 'Iure ex et eius ipsum.', 'Vero commodi quo dignissimos quas perspiciatis eum. Tenetur maiores voluptatem iusto minima. Ipsa consequatur id debitis ea.', '2024-11-23', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(264, 'Autem consequatur quia corporis nostrum nihil optio aut.', 'Velit quasi itaque eos maxime aliquam nemo vitae. Deleniti facilis facere commodi voluptas voluptatum illum amet. Voluptate commodi architecto numquam molestias animi repudiandae. Nulla vel sunt cumque et eum mollitia ut.', '2024-11-28', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(265, 'Illum quis nam et.', 'Fugiat ea omnis sit ut. Eaque quia eos cupiditate asperiores. Similique voluptate perspiciatis quo aperiam et. Blanditiis ullam nesciunt enim inventore.', '2024-12-04', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(266, 'Dolorem tenetur animi sed molestiae quia eaque sed.', 'Eligendi rem qui eos. Sint cupiditate expedita incidunt necessitatibus. Et in qui corporis harum deserunt et voluptates.', '2024-12-05', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(267, 'Reiciendis eum et repudiandae qui.', 'Optio eveniet quam necessitatibus tempora vel quaerat et. Autem id quos suscipit eum veritatis voluptatum. Sit sunt nesciunt nam aliquam dolor in quod.', '2024-12-07', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(268, 'Dolores voluptatum reprehenderit ratione qui laborum ipsum.', 'Natus qui sed aperiam ratione eligendi. Nemo sint deserunt nisi adipisci est. Et laudantium et neque eligendi.', '2024-12-02', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(269, 'Est est est eum.', 'Eos ut voluptatem in ratione. Et non aperiam impedit delectus voluptatem iste. Quia aut quas distinctio et.', '2024-11-25', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(270, 'Ab et distinctio maxime eos unde sed.', 'Cum fuga reprehenderit aut consequatur non deleniti velit. Quia et consectetur temporibus maxime. Quasi fuga voluptate quibusdam et. Rerum culpa vitae non ut laborum.', '2024-12-01', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(271, 'Debitis autem nam ad ab.', 'Voluptatem suscipit officiis harum praesentium velit a. Et ab soluta repudiandae blanditiis sit aut. Harum labore occaecati voluptatem est. Illum voluptates rerum ut tenetur eum voluptate. Consequatur saepe sint voluptas amet eaque quis perferendis.', '2024-12-03', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(272, 'Dolores fugit laborum molestias officiis ut excepturi.', 'Voluptatem ab deleniti quos nihil aperiam rerum rerum sint. Voluptatem ipsum maiores sunt ex et officiis. Dignissimos occaecati modi distinctio perspiciatis. Ea dolorem voluptatem iusto adipisci quia optio similique.', '2024-12-08', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(273, 'Qui deserunt perspiciatis et modi libero fugit.', 'Officia unde exercitationem cupiditate odit et minima modi. Harum molestias ut magnam voluptas sequi. Voluptatibus quia voluptatem voluptatem minima quia eum officiis. Unde id neque placeat dolore vel qui dolor ut. Quasi deleniti qui natus.', '2024-12-07', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(274, 'Reprehenderit adipisci nostrum itaque est tempora consequatur hic.', 'Magnam reiciendis error amet eligendi consequatur placeat cupiditate. Rerum asperiores autem esse. Assumenda earum et quia earum facere qui consequuntur rem. Illo itaque fugit perspiciatis voluptates ratione sit ut saepe.', '2024-12-08', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(275, 'Numquam et quasi nam repellendus cum vel.', 'Quis facilis vitae non velit. Et dignissimos minus veniam eos consequatur. Velit aut amet quae optio id sed rem.', '2024-12-05', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(276, 'Deserunt vel quisquam ullam esse rerum.', 'Fugit labore non nemo aut voluptatem. Fugiat dolor fuga eveniet veniam et. Ut consequatur quia omnis beatae. Itaque in voluptas et mollitia dolor. Est quam illum autem repudiandae beatae quia.', '2024-11-23', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(277, 'Rerum architecto possimus quo quaerat sit.', 'Culpa voluptatem animi ut fugiat rerum. Cupiditate fugit facere fugit rerum dolorem consequatur vitae distinctio. Nisi voluptatem qui ut velit deserunt eligendi dolorem. Eos magni veniam a consequatur impedit.', '2024-12-11', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(278, 'Voluptatum aliquid quos vel aut voluptas.', 'Sapiente maxime repellendus deleniti est. Minima ut labore architecto et. Animi velit nobis in et dignissimos.', '2024-11-29', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(279, 'Qui odit reiciendis et molestias.', 'Esse consequatur quam nesciunt at iure aut. Voluptas ipsa sequi aut quidem eius velit fugit.', '2024-12-09', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(280, 'Omnis tempora eveniet eligendi sunt dolores.', 'Dolorem nisi animi molestiae optio. Voluptates nemo est culpa minima. Est quod tempora possimus tempora repellendus officiis. Omnis eligendi nam sint modi voluptas repellendus et.', '2024-12-05', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(281, 'Dignissimos aut non sint dolore nesciunt id et.', 'Quos labore deserunt aut et sed quam. Sit corrupti inventore saepe illo et et. Qui eius recusandae in quae consequatur aut aut ut.', '2024-12-08', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(282, 'Qui reiciendis facere ut minus nihil autem non.', 'Eum qui laudantium repellendus nam deserunt. Pariatur eum optio fuga voluptas. Voluptate quo aperiam rerum incidunt aut. Harum dolorem molestiae soluta mollitia sunt eum.', '2024-11-24', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(283, 'Similique sunt eveniet aliquid quo quos fuga aspernatur.', 'Consequuntur qui error quos. Quas aut voluptatem aperiam enim aut animi cupiditate. Sint a et error cupiditate.', '2024-11-25', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(284, 'Deserunt maxime ad et expedita vitae.', 'Praesentium quia sint quia iusto. Sunt molestiae libero voluptas ipsa. Id et quam quo. Numquam rerum nostrum commodi dicta non possimus cupiditate.', '2024-12-07', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(285, 'Sint est impedit sit dolores modi adipisci qui.', 'Harum voluptatem quaerat voluptatem. Necessitatibus esse ullam error ad pariatur. Ea eaque fuga voluptatem. Eum temporibus id id enim delectus. Tempora nemo ipsum nisi voluptas incidunt suscipit.', '2024-12-08', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(286, 'Omnis quo est eaque quis ex.', 'Nisi eaque suscipit enim ut et eligendi. Vel quidem aut laborum voluptates impedit quibusdam. Non rerum amet id sequi. Dicta eaque adipisci minus laudantium delectus quos quia. Voluptate molestiae et voluptate velit ut qui.', '2024-11-25', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(287, 'Labore vitae recusandae ab autem natus.', 'Velit quia necessitatibus consequatur. Consequatur aliquid eaque optio voluptatem quasi reiciendis. Sit sapiente aliquid quis suscipit et vitae. Soluta nihil et quae mollitia eligendi eaque sit.', '2024-12-01', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(288, 'Similique dolor error neque et adipisci nisi ea.', 'Eligendi natus dolorem soluta eius odit accusamus. Reiciendis eum non vel vel asperiores cumque. Ad et optio beatae eos ut. Accusamus velit optio aliquid recusandae dignissimos rerum eos.', '2024-12-04', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(289, 'Autem voluptas dolor est rem vero hic.', 'Aut occaecati voluptas dignissimos odio. Ratione ducimus voluptas et fugit quaerat. Tenetur recusandae autem recusandae delectus eos unde dolorum sunt. Odit expedita quam tenetur quis rerum officia.', '2024-12-05', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(290, 'Dolores quos incidunt rerum error molestias distinctio.', 'Quas repellendus maiores molestiae quia. Nihil eligendi voluptatem velit laudantium occaecati in architecto ea. Enim alias perferendis et enim. Iste esse ut nihil dignissimos ducimus eius iure.', '2024-12-11', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(291, 'Pariatur aperiam autem magni occaecati.', 'Distinctio commodi unde voluptatum est nobis. Fuga voluptatem sunt quidem expedita quo sapiente. Eum nobis ullam ducimus facere pariatur optio doloremque. Qui culpa nobis dicta.', '2024-11-28', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(292, 'Et eveniet ut dolor ratione sed ut.', 'In accusantium quasi dicta voluptas aut reiciendis autem. Inventore corrupti rerum culpa optio mollitia ratione voluptas. Ullam et consequatur nihil nisi voluptatem. Omnis nostrum recusandae aut minus.', '2024-11-25', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(293, 'Doloribus totam quaerat incidunt et.', 'Deserunt repellat veritatis incidunt harum repudiandae. Tempore et nulla iste autem occaecati aliquid.', '2024-12-03', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(294, 'Tempora qui ducimus dolore molestiae corrupti.', 'Maxime inventore delectus voluptate minima tempora. Excepturi adipisci numquam aperiam qui qui. Non aperiam reiciendis fuga. Officiis delectus ullam nemo maiores doloribus non.', '2024-11-28', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(295, 'Explicabo iure dolor sint voluptas ea.', 'Nesciunt ut ut sunt dolorum deleniti maiores. Ipsa minus veritatis non. Autem adipisci et aliquam quidem quam nesciunt. Iste nulla et aut rerum.', '2024-12-11', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(296, 'Quis nihil tempora similique optio.', 'Tempore esse quis soluta officia accusamus ratione. Sed itaque mollitia sit natus. Et reprehenderit quis ex asperiores sit consequuntur aliquam. Quia autem labore corrupti quisquam ratione.', '2024-12-03', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(297, 'Consectetur in occaecati numquam quasi.', 'Id id beatae error nisi. Suscipit et voluptatem placeat et. Dicta quaerat quia et quis harum veniam quia. Soluta repudiandae est et ut atque omnis possimus.', '2024-12-10', 'open', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(298, 'Qui repellat cumque cupiditate nobis quia enim.', 'Et sequi ea sit numquam eos. Rerum optio voluptas enim tempore.', '2024-11-27', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(299, 'Omnis aut culpa eum maxime in.', 'Sequi consequuntur ipsam et consequatur. In est eum quam dignissimos ab est laudantium. Alias architecto autem in at dolor voluptatem itaque. Maiores dolores saepe nostrum deserunt quia sit. In temporibus aperiam illum facilis vel corrupti.', '2024-12-07', 'in_progress', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(300, 'Repellat voluptate voluptatem quod id optio velit pariatur.', 'Alias soluta aut rerum assumenda numquam itaque. Quia praesentium dolorem provident maiores sint consectetur. Corporis ducimus et sit. Culpa ea quos est distinctio fugit quos nesciunt dignissimos.', '2024-12-10', 'completed', 3, 3, '2024-11-11 19:06:43', '2024-11-11 19:06:43'),
(304, 'test  task', 'test asign task by malek fouda', '2024-11-20', 'open', 1, 2, '2024-11-19 22:40:40', '2024-11-19 22:40:40');

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
(1, 'Bessie Jacobi', 'pattie.bins@example.org', '2024-11-11 19:06:43', '$2y$10$gLD7ltAe5htTOHiNEZk3A.WeIlrME/4rihOpmcZvqlGrpgWTE/PrW', 'Sy6OUspN68z3gTBQi5hK6u4yWGrPxMOvleWHambZZU6e81pXoIwrpHwmrpOP', '2024-11-11 19:06:43', '2024-11-11 19:17:09'),
(2, 'Dovie Dare', 'uhirthe@example.org', '2024-11-11 19:06:43', '$2y$10$SDfuv4eFBorXnq2hJgJKQ.Qs7FoCCzSVW7gxe62tfdLHImWx5.RvG', 'vk3TKaEAP3', '2024-11-11 19:06:43', '2024-11-11 19:17:09'),
(3, 'Prof. Makayla Grady I', 'eichmann.rhoda@example.com', '2024-11-11 19:06:43', '$2y$10$vsiWMAMDgJysuUC/S3bh1./yMeEnKvIjlcOtCTzvGS093AE8Nd6bG', 'uXor7ZKIto', '2024-11-11 19:06:43', '2024-11-11 19:17:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_task_id_foreign` (`task_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_task_id_foreign` (`task_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`),
  ADD KEY `tasks_assigned_to_foreign` (`assigned_to`);

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
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
